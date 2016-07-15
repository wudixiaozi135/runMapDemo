package rank.model 
{
	import base.ApplicationData;
	import com.tencent.morefun.naruto.model.BaseModel;
	import def.ModelDef;
	import flash.events.Event;
	import flash.utils.Dictionary;
	import rank.model.data.RankTitleCfgInfo;
	
	/**
	 * 玩家称号变更时派发
	 */
	[Event(name = "change", type = "flash.events.Event")]
	
	/**
	 * 称号数据模型
	 * @author larryhou
	 * @createTime 2014/10/16 16:21
	 */
	public class TitleModel extends BaseModel
	{
		private var _titleCfgs:Dictionary;
		
		private var _userTitles:Vector.<RankTitleCfgInfo>;
		private var _chosenTitle:RankTitleCfgInfo;
		
		private var _unownedTitles:Vector.<RankTitleCfgInfo>;
		
		/**
		 * 构造函数
		 * create a [TitleModel] object
		 */
		public function TitleModel() 
		{
			super(ModelDef.TITLE);
		}
		
		/**
		 * 导入排行榜称号配置
		 * @param	config	称号配置
		 */
		public function importRankTitleConfig(config:XML):void
		{
			var dict:Dictionary = new Dictionary(false);
			var map:Dictionary = new Dictionary(true);
			
			var title:RankTitleCfgInfo;
			for each(var node:XML in config.title)
			{
				title = new RankTitleCfgInfo();
				title.id = parseInt(node.@id);
				title.name = node.@name;
				title.rank = parseInt(node.@rank);
				title.rarity = parseInt(node.@rarity);
				title.obtainTips = node.@obtainTips;
				title.expireTips = node.@expireTips;
				title.hasImage = parseInt(node.@hasImage) != 0;
				if (title.hasImage)
				{
					title.image = "assets/rank/title/" + title.id + ".png";
				}
				
				dict[title.id] = title;
				
				if (!map[title.rank]) map[title.rank] = [];
				map[title.rank].push(title);
			}
			
			_titleCfgs = dict;
			_titleCfgs[0] = new RankTitleCfgInfo();
			
			// 角色称号着色
			const COLOR:Array = [0xFFBA00/*金色*/, 0xB463FF/*紫色*/, 0x1BB1F4/*蓝色*/];
			for (var key:* in map)
			{
				(map[key] as Array).sortOn("id", Array.NUMERIC);
				for (var i:int = 0, length:uint = map[key].length; i < length; i++)
				{
					(map[key][i] as RankTitleCfgInfo).color = COLOR[i];
				}
			}
		}
		
		/**
		 * 更新玩家称号
		 * @param	titles	玩家拥有的称号列表
		 * @param	chosen	玩家当前选中的称号
		 */
		public function updateUserTitles(titles:Vector.<uint>, chosen:uint):void
		{
			_userTitles = new Vector.<RankTitleCfgInfo>();
			
			var info:RankTitleCfgInfo;
			for each(var id:uint in titles)
			{
				info = getTitle(id);
				info.owned = true;
				
				_userTitles.push(info);
			}
			
			setChosenTitle(chosen);
		}
		
		/**
		 * 更新未拥有的称号
		 * @param	titles	玩家未拥有的称号列表
		 */
		public function updateUnownedTitles(titles:Vector.<uint>):void
		{
			_unownedTitles = new Vector.<RankTitleCfgInfo>();
			
			var info:RankTitleCfgInfo;
			for each(var id:uint in titles) 
			{
				info = getTitle(id);
				info.owned = false;
				
				_unownedTitles.push(info);
			}
		}
		
		/**
		 * 设置当前选择的称号
		 * @param	title	称号id
		 */
		public function setChosenTitle(title:uint):void
		{
			_chosenTitle = getTitle(title);
			
			dispatchEvent(new Event(Event.CHANGE));
		}
		
		/**
		 * 获取排行榜称号
		 * @param	id	称号id
		 */
		public function getTitle(id:uint):RankTitleCfgInfo
		{
			return _titleCfgs[id] as RankTitleCfgInfo;
		}
		
		/**
		 * 玩家拥有的称号列表
		 */
		public function get userTitles():Vector.<RankTitleCfgInfo> { return _userTitles; }
		
		/**
		 * 当前选中的称号
		 */
		public function get chosenTitle():RankTitleCfgInfo { return _chosenTitle; }
		
		/**
		 *  未拥有的称号列表
		 */
		public function get unownedTitles():Vector.<RankTitleCfgInfo> { return _unownedTitles; }
	}

}