package dungeon.model 
{
	import cfgData.dataStruct.DungeonInfoCFG;
	import dungeon.event.DungeonEvent;
	
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import base.ApplicationData;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;
	import cfgData.dataStruct.DungeonGroupInfoCFG;
	
	import dungeon.data.DungeonChapterInfo;
	import dungeon.data.DungeonInfo;
	
	/**
	 * 副本列表数据发生变化时派发
	 */
	[Event(name = "change", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 当前副本变更时派发
	 */
	[Event(name = "currentDungeonChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 副本页面数据模型
	 * @author larryhou
	 * @createTime 2014/3/21 13:30
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class DungeonInnerModel extends EventDispatcher 
	{
		private var _type:uint;
		
		private var _dungeons:Vector.<DungeonInfo>;
		private var _chapters:Vector.<DungeonChapterInfo>;
		private var _model:DungeonModel;
		
		private var _chapterMap:Dictionary;
		private var _map:Dictionary;
		
		private var _currentDungeon:uint;
		
		private var _orderUnlcok:Boolean;
		
		/**
		 * 构造函数
		 * create a [DungeonInnerModel] object
		 */
		public function DungeonInnerModel(type:uint, model:DungeonModel) 
		{
			_type = type; _model = model;
			
			_dungeons = new Vector.<DungeonInfo>();
			_map = new Dictionary(false);
			
			_chapters = new Vector.<DungeonChapterInfo>();
			_chapterMap = new Dictionary(false);
		}
		
		/**
		 * 导入副本信息
		 * @param	list	副本列表
		 * @param	replace	是否替换当前副本列表信息
		 */
		public function importDungeonInfos(list:Vector.<DungeonInfo>, replace:Boolean = true):void
		{
			if (replace)
			{
				_dungeons = new Vector.<DungeonInfo>();
				_map = new Dictionary(false);
			}
			
			var dungeon:DungeonInfo;
			var dict:Dictionary = new Dictionary(true);
			for (var i:int = 0; i < _dungeons.length; i++)
			{
				dungeon = _dungeons[i];
				dict[dungeon.id] = i;
			}
			
			for each(dungeon in list) 
			{
				if (!dungeon) continue;
				
				dungeon.showGuideIndicator = dungeon.id == _currentDungeon;
				
				if (!_map[dungeon.id])
				{
					dict[dungeon.id] = _dungeons.length;
					_dungeons.push(dungeon);
				}
				else
				if (_map[dungeon.id] != dungeon)
				{
					if (dict[dungeon.id] != null)
					{
						_dungeons.splice(dict[dungeon.id], 1, dungeon);
					}
					else
					{
						throw new ArgumentError(I18n.lang("as_include_1451031571_3190_0") + dungeon.id + I18n.lang("as_include_1451031571_3190_1"));
					}
				}
				
				_map[dungeon.id] = dungeon;
			}
			
			_dungeons.sort(sortDungeons);
			
			// 制作链式副本数据引用
			for (i = 0; i < _dungeons.length; i++)
			{
				if (i < _dungeons.length - 1)
				{
					_dungeons[i].next = _dungeons[i + 1];
				}
				else
				{
					_dungeons[i].next = null;
				}
				
				if (i > 0)
				{
					_dungeons[i].prev = _dungeons[i - 1];
				}
				else
				{
					_dungeons[i].prev = null;
				}
			}
			
			refreshChapters();
			refreshUnlockStatus();
			dispatchEvent(new DungeonEvent(DungeonEvent.CHANGE, _dungeons));
		}
		
		/**
		 * 刷新解锁状态
		 */
		public function refreshUnlockStatus():void
		{
			if (!_orderUnlcok) return;
			if (!_dungeons || !_dungeons.length) return;
			
			_dungeons[0].unlocked = true;
			
			var i:int;
			for (i = 1; i < _dungeons.length; i++) _dungeons[i].unlocked = false
			for (i = 1; i < _dungeons.length; i++)
			{
				if (_dungeons[i - 1].bestEvaluate > 0)
				{
					_dungeons[i].unlocked = true;
				}
				else
				{
					break;
				}
			}
		}
		
		/**
		 * 重置高亮标记
		 */
		public function resetHighlightFlags():void
		{
			for each(var dungeon:DungeonInfo in _dungeons) dungeon.highlight = false;
		}
		
		/**
		 * 刷新章节数据
		 */
		private function refreshChapters():void
		{
			var chapterMap:Dictionary = _chapterMap;
			
			_chapters = new Vector.<DungeonChapterInfo>();
			_chapterMap = new Dictionary(false);
			
			var chapter:DungeonChapterInfo;
			for each(chapter in chapterMap) chapter.dungeons.length = 0;
			
			var id:uint;
			for each(var dungeon:DungeonInfo in _dungeons)
			{
				id = dungeon.cfg.groupId;
				if (chapterMap[id]) 
				{
					_chapterMap[id] = chapterMap[id];
				}
				
				if (!_chapterMap[id])
				{
					chapter = new DungeonChapterInfo();
					chapter.dungeonCount = _model.getChapterDungeonCount(dungeon.cfg);
					chapter.id = id;
					
					chapter.dungeons = new Vector.<DungeonInfo>();
					chapter.cfg = CFGDataLibs.getRowData(CFGDataEnum.ENUM_DungeonGroupInfoCFG, chapter.id) as DungeonGroupInfoCFG;
					
					if (chapter.cfg && chapter.cfg.name)
					{
						chapter.name = chapter.cfg.name;
					}
					else
					{
						throw new Error(I18n.lang("as_include_1451031571_3191_0") + dungeon.id + "/" + dungeon.cfg.name + I18n.lang("as_include_1451031571_3191_1") + chapter.id);
					}
					
					_chapterMap[chapter.id] = chapter;
				}
				
				chapter = _chapterMap[id] as DungeonChapterInfo;
				chapter.dungeons.push(dungeon);
			}
			
			for each(chapter in _chapterMap)
			{
				chapter.dungeons.sort(sortDungeons);
				chapter.qualified = ApplicationData.singleton.selfInfo.level >= chapter.cfg.levelUnlock;
				
				_chapters.push(chapter);
			}
			
			_chapters.sort(sortChapters);
		}
		
		/**
		 * 副本章节升序排列
		 */
		private function sortChapters(c1:DungeonChapterInfo, c2:DungeonChapterInfo):int
		{
			if (c1.cfg.levelUnlock != c2.cfg.levelUnlock) return c1.cfg.levelUnlock > c2.cfg.levelUnlock? -1 : 1;
			return c1.id > c2.id? -1 : 1;
		}
		
		/**
		 * 副本排序
		 */
		private function sortDungeons(d1:DungeonInfo, d2:DungeonInfo):int
		{
			if (d1.cfg.groupId != d2.cfg.groupId)
			{
				return d1.cfg.groupId > d2.cfg.groupId? 1 : -1;
			}
			
			if (d1.openLevel != d2.openLevel)
			{
				return d1.openLevel > d2.openLevel? 1 : -1;
			}
			
			return d1.cfg.groupSeqNum > d2.cfg.groupSeqNum? 1 : -1;
		}
		
		/**
		 * 更新副本信息
		 * @param	dungeon		副本信息
		 */
		public function updateDungeonInfo(dungeon:DungeonInfo):void
		{
			if (!dungeon) return;
			
			dungeon.showGuideIndicator = dungeon.id == _currentDungeon;
			
			if (!_map[dungeon.id])
			{
				_dungeons.push(dungeon);
			}
			else
			if (_map[dungeon.id] != dungeon)
			{
				var index:int = _dungeons.indexOf(_map[dungeon.id]);
				if (index >= 0)
				{
					_dungeons.splice(index, 1, dungeon);
				}
				else
				{
					throw new ArgumentError(I18n.lang("as_include_1451031571_3192_0") + dungeon.id + I18n.lang("as_include_1451031571_3192_1"));
				}
			}
			
			_map[dungeon.id] = dungeon;
			
			refreshChapters();
			dispatchEvent(new DungeonEvent(DungeonEvent.CHANGE, _dungeons.concat()));
		}
		
		/**
		 * 获取副本信息
		 * @param	id	副本id
		 */
		public function getDungeonInfo(id:uint):DungeonInfo
		{
			return _map[id] as DungeonInfo;
		}
		
		/**
		 * 获取副本章节信息
		 * @param	id	章节id
		 */
		public function getChapterInfo(id:uint):DungeonChapterInfo
		{
			return _chapterMap[id] as DungeonChapterInfo;
		}
		
		/**
		 * 数据模型名
		 */
		public function get type():uint { return _type; }
		
		/**
		 * 副本列表
		 */
		public function get dungeons():Vector.<DungeonInfo> { return _dungeons.concat(); }
		
		/**
		 * 章节信息
		 */
		public function get chapters():Vector.<DungeonChapterInfo> { return _chapters.concat(); }
		
		/**
		 * 当前玩家所在的副本
		 */
		public function get currentDungeon():uint { return _currentDungeon; }
		public function set currentDungeon(value:uint):void 
		{
			_currentDungeon = value;
			for each(var dungeon:DungeonInfo in _dungeons)
			{
				dungeon.showGuideIndicator == (dungeon.id == _currentDungeon);
			}
			
			dispatchEvent(new DungeonEvent(DungeonEvent.CURRENT_DUNGEON_CHANGE, _currentDungeon));
		}
		
		/**
		 * 是否按顺序解锁副本
		 */
		public function get orderUnlock():Boolean { return _orderUnlcok; }
		public function set orderUnlock(value:Boolean):void 
		{
			_orderUnlcok = value;
		}
	}
}