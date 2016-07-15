package vip 
{
	import flash.events.IEventDispatcher;
	import vip.model.data.VIPPrivilegeInfo;
	
	/**
	 * 自己的VIP特权变更时派发
	 */
	[Event(name = "change", type = "flash.events.Event")]
	
	/**
	 * VIP特权数据
	 * @author larryhou
	 * create a [IVIPPrivilege] interface
	 */
	public interface IVIPPrivilege extends IEventDispatcher
	{
		/**
		 * 获取VIP特权信息
		 * @param	level	VIP等级
		 */
		function getVIPPrivilege(level:uint):VIPPrivilegeInfo;
		
		/**
		 * 自己当前的特权
		 */
		function get current():VIPPrivilegeInfo;
		
		/**
		 * VIP特权列表
		 */
		function get list():Vector.<VIPPrivilegeInfo>;
	}
}