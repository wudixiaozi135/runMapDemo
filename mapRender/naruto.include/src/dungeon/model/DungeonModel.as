package dungeon.model 
{
	import com.tencent.morefun.naruto.model.BaseModel;
	
	import flash.utils.Dictionary;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;
	import cfgData.dataStruct.DungeonInfoCFG;
	
	import def.ModelDef;
	
	import dungeon.data.DungeonInfo;
	import dungeon.def.DungeonTypeDef;
	import dungeon.event.DungeonEvent;
	
	/**
	 * 副本数据变化时派发
	 */
	[Event(name = "change", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 精英副本数据发生变化时派发
	 */
	[Event(name = "eliteDungeonChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 剧情副本数据发生变化时派发
	 */
	[Event(name = "plotDungeonChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 副本扫荡引起挑战次数变更时派发
	 */
	[Event(name = "passCountChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 丰饶之间日常副本数据变更时派发
	 */
	[Event(name = "foisonDungeonChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 藏宝之间日常副本数据变更时派发
	 */
	[Event(name = "treasureDungeonChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 副本数据模型
	 * @author larryhou
	 * @createTime 2014/3/21 13:26
	 */
	public class DungeonModel extends BaseModel 
	{
		private var _models:Dictionary;
		private var _chapterCfgs:Dictionary;
		
		/**
		 * 当前副本id
		 */
		public var currDungeonId:int;
		/**
		 * 当前副本类型
		 */
		public var currDungeonType:int;
		
		/**
		 * 构造函数
		 * create a [DungeonModel] object
		 */
		public function DungeonModel() 
		{
			super(ModelDef.DUNGEON);
			initChapterCfgs();
			
			_models = new Dictionary(false);
			
			var list:Vector.<uint> = new Vector.<uint>();
			list.push(DungeonTypeDef.TEAM);
			list.push(DungeonTypeDef.ELITE);
			list.push(DungeonTypeDef.NORMAL);
			list.push(DungeonTypeDef.FOISON);
			list.push(DungeonTypeDef.TREASURE);
			
			var model:DungeonInnerModel;
			for each(var type:uint in list)
			{
				model = new DungeonInnerModel(type, this);
				model.addEventListener(DungeonEvent.CHANGE, modelChangeHandler);
				
				_models[type] = model;
			}
			
			getInnerModel(DungeonTypeDef.ELITE).orderUnlock = true;
		}
		
		private function initChapterCfgs():void
		{
			var dict:Dictionary = CFGDataLibs.getAllData(CFGDataEnum.ENUM_DungeonInfoCFG);
			var chapters:Dictionary = new Dictionary(false);
			
			var key:String;
			for each(var cfg:DungeonInfoCFG in dict)
			{
				key = cfg.type + "-" + cfg.groupId;
				if (!chapters[key]) chapters[key] = new Vector.<DungeonInfoCFG>;
				chapters[key].push(cfg);
			}
			
			_chapterCfgs = chapters;
		}
		
		/**
		 * 数据模型变更时派发
		 */
		private function modelChangeHandler(e:DungeonEvent):void 
		{
			var type:String;
			var model:DungeonInnerModel = e.currentTarget as DungeonInnerModel;
			switch(model.type)
			{
				case DungeonTypeDef.ELITE:type = DungeonEvent.ELITE_DUNGEON_CHANGE; break;
				case DungeonTypeDef.NORMAL:type = DungeonEvent.PLOT_DUNGEON_CHANGE; break;
				case DungeonTypeDef.FOISON:type = DungeonEvent.FOISON_DUNGEON_CHANGE; break;
				case DungeonTypeDef.TREASURE:type = DungeonEvent.TREASURE_DUNGEON_CHANGE; break;
			}
			
			if (type)
			{
				dispatchEvent(new DungeonEvent(type, e.data));
				dispatchEvent(new DungeonEvent(DungeonEvent.CHANGE, e.currentTarget));
			}
		}
		
		/**
		 * 读取章节副本总个数
		 */
		internal function getChapterDungeonCount(cfg:DungeonInfoCFG):uint
		{
			return (_chapterCfgs[cfg.type + "-" + cfg.groupId] as Vector.<DungeonInfoCFG>).length;
		}
		
		/**
		 * 获取数据模型
		 * @param	name	副本数据模型名 @see dungeon.def.DungeonTypeDef
		 */
		public function getInnerModel(type:uint):DungeonInnerModel
		{
			return _models[type] as DungeonInnerModel;
		}
		
		/**
		 * 获得副本信息
		 * @param	id		副本id
		 * @param	type	副本类型 @see dungeon.def.DungeonTypeDef
		 */
		public function getDungeonInfo(id:uint, type:uint = 0):DungeonInfo
		{
			if (type > 0)
			{
				return getInnerModel(type).getDungeonInfo(id);
			}
			else
			{
				var dungeon:DungeonInfo;
				for (var key:* in _models)
				{
					dungeon = getInnerModel(key).getDungeonInfo(id);
					if (dungeon) return dungeon;
				}
			}
			
			return null;
		}
		
		/**
		 * 获取副本配置
		 * @param	id	副本id
		 */
		public function getDungeonCfgInfo(id:uint):DungeonInfoCFG
		{
			return CFGDataLibs.getRowData(CFGDataEnum.ENUM_DungeonInfoCFG, id) as DungeonInfoCFG;
		}
	}

}