package crew.model 
{
	import com.tencent.morefun.naruto.model.BaseModel;
	
	import flash.utils.Dictionary;
	
	import bag.utils.BagUtils;
	
	import crew.data.NinjaPropsCfgInfo;
	import crew.data.NinjaPropsExpInfo;
	import crew.data.NinjaPropsInfo;
	import crew.data.NinjaPropsPositionInfo;
	import crew.def.NinjaPropsListTypeDef;
	import crew.event.NinjaPropsModelEvent;
	
	import def.ModelDef;
	
	/**
	 * 道具变更时派发
	 */
	[Event(name = "propsChagne", type = "crew.event.NinjaPropsModelEvent")]
	
	/**
	 * 背包道具变更时派发
	 */
	[Event(name = "bagPropsChange", type = "crew.event.NinjaPropsModelEvent")]
	
	/**
	 * 已装备忍具变更时派发
	 */
	[Event(name = "usingPropsChange", type = "crew.event.NinjaPropsModelEvent")]
	
	/**
	 * 忍具数据模型
	 * @author larryhou
	 * @createTime 2014/4/16 11:41
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaPropsModel extends BaseModel
	{
		private var _expConfigMap:Dictionary;
		private var _configMap:Dictionary;
		
		private var _usingProps:NinjaPropsInnerModel;
		private var _bagProps:NinjaPropsInnerModel;
		
		private var _positions:Vector.<NinjaPropsPositionInfo>;
		private var _positionMap:Dictionary;
		
		/**
		 * 构造函数
		 * create a [NinjaPropsModel] object
		 */
		public function NinjaPropsModel()
		{
			super(ModelDef.NINJA_PROPS);
			
			_usingProps = new NinjaPropsInnerModel(NinjaPropsListTypeDef.USING);
			_usingProps.addEventListener(NinjaPropsModelEvent.PROPS_CHANGE, propsChangeHandler);
			
			_bagProps = new NinjaPropsInnerModel(NinjaPropsListTypeDef.BAG);
			_bagProps.addEventListener(NinjaPropsModelEvent.PROPS_CHANGE, propsChangeHandler);
			
			_positions = new Vector.<NinjaPropsPositionInfo>();
			_positionMap = new Dictionary(false);
		}
		
		/**
		 * 处理数据变更逻辑
		 */
		private function propsChangeHandler(e:NinjaPropsModelEvent):void 
		{
			var evt:NinjaPropsModelEvent;
			var model:NinjaPropsInnerModel = e.currentTarget as NinjaPropsInnerModel;
			if (model.type == NinjaPropsListTypeDef.USING)
			{
				evt = new NinjaPropsModelEvent(NinjaPropsModelEvent.USING_PROPS_CHANGE, e.props);
				evt.changes = e.changes;
				dispatchEvent(evt);
			}
			else
			if (model.type == NinjaPropsListTypeDef.BAG)
			{
				evt = new NinjaPropsModelEvent(NinjaPropsModelEvent.BAG_PROPS_CHANGE, e.props);
				evt.changes = e.changes;
				dispatchEvent(evt);
			}
			
			evt = new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE, props);
			evt.changes = e.changes;
			dispatchEvent(evt);
		}
		
		/**
		 * 导入忍具配置
		 * @param	config
		 */
		public function importNinjaPropsConfig(config:XML):void
		{
			if (!config) return;
			var dict:Dictionary = new Dictionary(false);
			
			var props:NinjaPropsCfgInfo;
			for each(var node:XML in config.item)
			{
				props = new NinjaPropsCfgInfo();
				props.id = parseInt(node.@id);
				props.name = node.@name;
				props.type = parseInt(node.@type) - 1;
				props.quality = parseInt(node.@quality);
				props.levelUpper = parseInt(node.@levelUpper);
				props.swallowExp = parseInt(node.@swallowExp);
				props.swallowCost = parseInt(node.@swallowCost);
				props.color = BagUtils.QUALITY_COLORS[int(node.@color) - 1];
				props.price = parseInt(node.@price);
				props.description = node.@desc;
				props.recastBuff = node.@recastBuff;
				dict[props.id] = props;
			}
			
			_configMap = dict;
		}
		
		/**
		 * 导入忍具经验配置
		 * @param	config
		 */
		public function importNinjaPropsExpConfig(config:XML):void
		{
			if (!config) return;
			var dict:Dictionary = new Dictionary(false);
			
			var exp:NinjaPropsExpInfo;
			
			var level:uint;
			var list:Array, elements:Array;
			for each(var node:XML in config.level)
			{
				list = String(node.@exp).match(/\d+:\d+/g);
				
				level = parseInt(node.@id);
				for each(var sitem:String in list)
				{
					elements = sitem.match(/\d+/g);
					exp = new NinjaPropsExpInfo();
					exp.quality = parseInt(elements[0]);
					exp.exp = parseInt(elements[1]);
					exp.level = level;
					
					if (!dict[exp.quality])
					{
						dict[exp.quality] = new Vector.<NinjaPropsExpInfo>();
					}
					
					dict[exp.quality].push(exp);
				}
			}
			
			for each(var explist:Vector.<NinjaPropsExpInfo> in dict)
			{
				explist.sort(sortNinjaPropsExpRule);
				if (explist[0].level > 0)
				{
					exp = new NinjaPropsExpInfo();
					exp.quality = explist[0].quality;
					exp.level = 0;
					explist.unshift(exp);
				}
				
				for (var i:int = 0; i < explist.length; i++)
				{
					if (i > 0) explist[i].prev = explist[i - 1];
					if (i < explist.length - 1) explist[i].next = explist[i + 1];
				}
			}
			
			_expConfigMap = dict;
		}
		
		/**
		 * 忍者道具经验排序规则
		 */
		private function sortNinjaPropsExpRule(p1:NinjaPropsExpInfo, p2:NinjaPropsExpInfo):int
		{
			if (p1.quality != p2.quality) return p1.quality > p2.quality? 1 : -1; // 品质升序排列
			return p1.level > p2.level? 1 : -1; // 等级升序排列
		}
		
		/**
		 * 获取忍具经验
		 * @param	quality	忍具品质
		 * @param	level	忍具等级
		 */
		public function getNinjaPropsExpInfo(quality:uint, level:uint):NinjaPropsExpInfo
		{
			var list:Vector.<NinjaPropsExpInfo> = _expConfigMap[quality] as Vector.<NinjaPropsExpInfo>;
			if (list)
			{
				for each(var exp:NinjaPropsExpInfo in list)
				{
					if (exp.level == level)
					{
						return exp;
					}
				}
			}
			
			return null;
		}
		
		/**
		 * 获取忍具配置信息
		 * @param	id	忍具id
		 */
		public function getNinjaPropsCfgInfo(id:uint):NinjaPropsCfgInfo
		{
			return _configMap[id] as NinjaPropsCfgInfo;
		}
		
		/**
		 * 导入装备位数据
		 * @param	list	装备位信息列表
		 * @param	replace	是否替换当前装备位数据
		 */
		public function importNinjaPropsPositionInfos(list:Vector.<NinjaPropsPositionInfo>, replace:Boolean):void
		{
			if (replace)
			{
				_positions = new Vector.<NinjaPropsPositionInfo>();
				_positionMap = new Dictionary(false);
			}
			
			for each(var info:NinjaPropsPositionInfo in list)
			{
				updateNinjaPropsPositionInfo(info);
			}
		}
		
		/**
		 * 更新装备位信息
		 * @param	info	装备位信息
		 */
		public function updateNinjaPropsPositionInfo(info:NinjaPropsPositionInfo):void
		{
			if (!_positionMap[info.index])
			{
				_positions.push(_positionMap[info.index] = info);
			}
			else
			if (_positionMap[info.index] != info)
			{
				var index:int = _positions.indexOf(_positionMap[info.index]);
				if (index >= 0)
				{
					_positions.splice(index, 1, info);
				}
				else
				{
					throw new Error(I18n.lang("as_include_1451031571_2599_0") + info.index + I18n.lang("as_include_1451031571_2599_1"));
				}
				
				_positionMap[info.index] = info;
			}
		}
		
		/**
		 * 删除装备位信息
		 * @param	index	装备位信息
		 */
		public function removeNinjaPropsPositionInfo(index:uint):NinjaPropsPositionInfo
		{
			var info:NinjaPropsPositionInfo = _positionMap[index] as NinjaPropsPositionInfo;
			if (info)
			{
				var innerIndex:int = _positions.indexOf(info);
				if (innerIndex >= 0)
				{
					_positions.splice(innerIndex, 1);
				}
			}
			
			return info;
		}
		
		/**
		 * 获取装备位信息
		 * @param	index	装备位索引
		 */
		public function getNinjaPropsPositionInfo(index:uint):NinjaPropsPositionInfo
		{
			return _positionMap[index] as NinjaPropsPositionInfo;
		}
		
		/**
		 * 所有忍具列表
		 */
		public function get props():Vector.<NinjaPropsInfo> { return _usingProps.props.concat(_bagProps.props); }
		
		/**
		 * 已装备的忍具
		 */
		public function get usingProps():NinjaPropsInnerModel { return _usingProps; }
		
		/**
		 * 背包中的忍具
		 */
		public function get bagProps():NinjaPropsInnerModel { return _bagProps; }
		
		/**
		 * 装备位列表
		 */
		public function get positions():Vector.<NinjaPropsPositionInfo> { return _positions; }
	}

}