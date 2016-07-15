package vip.model 
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import def.ModelDef;
	import flash.events.Event;
	import flash.utils.Dictionary;
	import vip.IVIPPrivilege;
	import vip.model.data.VIPPrivilegeInfo;
	
	/**
	 * 自己的VIP特权变更时派发
	 */
	[Event(name = "change", type = "flash.events.Event")]
	
	/**
	 * VIP数据模型
	 * @author larryhou
	 * @createTime 2014/8/25 17:41
	 */
	public class VIPModel extends BaseModel implements IVIPPrivilege
	{
		private var _map:Dictionary;
		private var _current:VIPPrivilegeInfo;
		
		private var _list:Vector.<VIPPrivilegeInfo>;
		
		/**
		 * 构造函数
		 * create a [VIPModel] object
		 */
		public function VIPModel() 
		{
			super(ModelDef.VIP);
			
			_map = new Dictionary(false);
			_list = new Vector.<VIPPrivilegeInfo>();
		}
		
		/**
		 * 更新特权信息
		 * @param	info	特权信息
		 * @param	level	对应VIP等级
		 */
		public function updateVIPPrivilege(info:VIPPrivilegeInfo, level:uint):void
		{
			if (_map[level])
			{
				var index:int = _list.indexOf(_map[level] as VIPPrivilegeInfo);
				if (index >= 0)
				{
					_list.splice(index, 1);
				}
			}
			
			_map[level] = info
			
			if (info)
			{
				_list.push(info);
				_list.sort(function(v1:VIPPrivilegeInfo, v2:VIPPrivilegeInfo):int
				{
					return v1.level > v2.level? 1 : -1;
				});
			}
		}
		
		/**
		 * 更新当前的特权信息
		 * @param	level	VIP特权等级
		 * @param	expireTime	VIP当前剩余有效时间:秒
		 * @param	remainTime	VIP剩余天数
		 */
		public function setCurrentVIP(level:uint, expireTime:uint, remainTime:uint):void
		{
			var privilege:VIPPrivilegeInfo = getVIPPrivilege(level);
			if (privilege)
			{
				privilege.expireTime = expireTime;
				privilege.remainTime = remainTime;
			}
			
			this.current = privilege;
		}
		
		/**
		 * 获取VIP特权信息
		 * @param	level	VIP等级
		 */
		public function getVIPPrivilege(level:uint):VIPPrivilegeInfo
		{
			return _map[level] as VIPPrivilegeInfo;
		}
		
		/**
		 * 我当前的特权
		 */
		public function get current():VIPPrivilegeInfo { return _current; }
		public function set current(value:VIPPrivilegeInfo):void 
		{
			_current = value;
			dispatchEvent(new Event(Event.CHANGE));
		}
		
		/**
		 * VIP特权列表
		 */
		public function get list():Vector.<VIPPrivilegeInfo> { return _list.concat(); }
	}
}