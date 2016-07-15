package crew.model 
{
	import crew.data.NinjaPropsInfo;
	import crew.def.NinjaPropsTypeDef;
	import crew.event.NinjaPropsModelEvent;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	/**
	 * 忍具列表发生变化时派发
	 */
	[Event(name = "propsChagne", type = "crew.event.NinjaPropsEvent")]
	
	/**
	 * 忍具列表数据模型
	 * @author larryhou
	 * @createTime 2014/4/17 15:18
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaPropsInnerModel extends EventDispatcher
	{
		private var _map:Dictionary;
		private var _props:Vector.<NinjaPropsInfo>;
		
		private var _type:uint;
		
		/**
		 * 构造函数
		 * create a [NinjaPropsInnerModel] object
		 */
		public function NinjaPropsInnerModel(type:uint)
		{
			_type = type;
			
			_props = new Vector.<NinjaPropsInfo>();
			_map = new Dictionary(false);
		}
		
		/**
		 * 导入忍具列表
		 * @param	list	忍具列表
		 * @param	replace	是否替换当前已有数据
		 */
		public function importNinjaPropsInfos(list:Vector.<NinjaPropsInfo>, replace:Boolean):void
		{
			if (replace)
			{
				_map = new Dictionary(false);
				_props = new Vector.<NinjaPropsInfo>();
			}
			
			for each(var info:NinjaPropsInfo in list)
			{
				updateNinjaPropsInfo(info, false);
			}
			
			_props.sort(sort);
			if (list) 
			{
				list.sort(sort);
			}
			
			var event:NinjaPropsModelEvent = new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE, _props);
			event.changes = list? list.concat() : null;
			dispatchEvent(event);
		}
		
		/**
		 * 更新忍具数据
		 * @param	info	忍具数据信息
		 */
		public function updateNinjaPropsInfo(info:NinjaPropsInfo, dispatch:Boolean = true):void
		{
			if (!info) return;
			
			if (!info.cfg)
			{
				throw new Error(I18n.lang("as_include_1451031571_2590_0") + info.id + I18n.lang("as_include_1451031571_2590_1"));
			}
			
			if (!_map[info.index])
			{
				_props.push(info);
			}
			else
			if (_map[info.index] != info)
			{
				var index:int = _props.indexOf(_map[info.index]);
				if (index >= 0)
				{
					_props.splice(index, 1, info);
				}
				else
				{
					throw new Error(I18n.lang("as_include_1451031571_2591_0") + info.id + "/" + info.cfg.name + I18n.lang("as_include_1451031571_2591_1"));
				}
				
			}
			
			_map[info.index] = info;
			_props.sort(sort);
			
			if (dispatch)
			{
				var event:NinjaPropsModelEvent = new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE, _props);
				event.changes = Vector.<NinjaPropsInfo>([info]);
				dispatchEvent(event);
			}
		}
		
		/**
		 * 移除忍具信息
		 * @param	index	忍具唯一标记
		 */
		public function removeNinjaPropsInfo(index:uint):NinjaPropsInfo
		{
			var info:NinjaPropsInfo = _map[index] as NinjaPropsInfo;
			if (info)
			{
				var value:int = _props.indexOf(info);
				if (value >= 0)
				{
					_props.splice(value, 1);
				}
				else
				{
					throw new Error(I18n.lang("as_include_1451031571_2592_0") + info.id + "/" + info.cfg.name + I18n.lang("as_include_1451031571_2592_1"));
				}
			}
			
			delete _map[index];
			info && dispatchEvent(new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE, _props));
			return info;
		}
		
		/**
		 * 装备界面忍具排序规则
		 */
		public function sortEquipBag(p1:NinjaPropsInfo, p2:NinjaPropsInfo):int
		{
			if (p1.id && p2.id)
			{
				if (p1.cfg.type == NinjaPropsTypeDef.EXP_PROPS && p2.cfg.type != NinjaPropsTypeDef.EXP_PROPS) return 1;
				if (p1.cfg.type != NinjaPropsTypeDef.EXP_PROPS && p2.cfg.type == NinjaPropsTypeDef.EXP_PROPS) return -1;
				return sort(p1, p2);
			}
			else
			if (!p1.id && !p2.id)
			{
				return 1;
			}
			
			return p1.id > p2.id? -1 : 1;
		}
		
		/**
		 * 升级界面忍具排序规则
		 */
		public function sortUpgradeBag(p1:NinjaPropsInfo, p2:NinjaPropsInfo):int
		{
			if (p1.id && p2.id)
			{
				if (p1.cfg.type == NinjaPropsTypeDef.EXP_PROPS && p2.cfg.type != NinjaPropsTypeDef.EXP_PROPS) return -1;
				if (p1.cfg.type != NinjaPropsTypeDef.EXP_PROPS && p2.cfg.type == NinjaPropsTypeDef.EXP_PROPS) return 1;
				return sort(p1, p2);
			}
			else
			if (!p1.id && !p2.id)
			{
				return 1;
			}
			
			return p1.id > p2.id? -1 : 1;
		}
		
		// 默认排序
		private function sort(p1:NinjaPropsInfo, p2:NinjaPropsInfo):int
		{
			if (p1.using != p2.using) return int(p1.using) > int(p2.using)? -1 : 1;	// 已装备排序在前
			if (p1.cfg.quality != p2.cfg.quality) return p1.cfg.quality > p2.cfg.quality? -1 : 1; // 品质高度额排序在前
			if (p1.index != p2.index) return p1.index > p2.index? 1 : -1; // 索引排序
			if (p1.level != p2.level) return p1.level > p2.level? -1 : 1; // 等级降序排列
			return p1.id > p2.id? 1 : -1;
		}
		
		/**
		 * 获取忍具数据
		 * @param	index	忍具index
		 */
		public function getNinjaPropsInfoByIndex(index:uint):NinjaPropsInfo
		{
			return _map[index] as NinjaPropsInfo;
		}
		
		/**
		 * 获取忍具数据
		 * @param	id	忍具id
		 */
		public function getNinjaPropsInfo(id:uint):Vector.<NinjaPropsInfo>
		{
			var result:Vector.<NinjaPropsInfo> = new Vector.<NinjaPropsInfo>();
			for (var i:int = 0; i < _props.length; i++)
			{
				if (_props[i].id == id) result.push(_props[i]);
			}
			
			return result;
		}
		
		/**
		 * 数据模型类型
		 */
		public function get type():uint { return _type; }
		
		/**
		 * 忍具信息列表
		 */
		public function get props():Vector.<NinjaPropsInfo> { return _props; }
	}

}