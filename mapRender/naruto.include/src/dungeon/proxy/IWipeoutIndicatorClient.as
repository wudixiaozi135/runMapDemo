package dungeon.proxy 
{
	import dungeon.wipeout.UniversalWipeoutClock;
	
	/**
	 * 扫荡指示器代理
	 * @author larryhou
	 * create a [IWipeoutIndicatorClient] interface
	 */
	public interface IWipeoutIndicatorClient 
	{
		/**
		 * 更新扫荡指示器状态
		 * @param	clock	扫荡计时器
		 */
		function updateIndicator(clock:UniversalWipeoutClock):void;
	}
	
}