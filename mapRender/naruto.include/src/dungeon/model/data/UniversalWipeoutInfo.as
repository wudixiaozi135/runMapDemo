package dungeon.model.data 
{
	import dungeon.def.UniversalWipeoutStateDef;
	
	/**
	 * 扫荡信息
	 * @author larryhou
	 * @createTime 2014/6/24 15:16
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class UniversalWipeoutInfo 
	{
		/**
		 * 扫荡类型
		 */
		public var type:uint;
		
		/**
		 * 剩余次数
		 */
		public var remainCount:uint;
		
		/**
		 * 当前已经扫荡次数
		 */
		public var currentCount:uint;
		
		/**
		 * 剩余时间:秒
		 */
		public var remainTime:uint;
		
		/**
		 * 当前已经扫荡时间:秒
		 */
		public var currentTime:uint;
		
		/**
		 * 扫荡状态
		 */
		public var state:uint;
		
		/**
		 * 其他扫荡信息
		 */
		public var extra:Object;
		
		/**
		 * 构造函数
		 * create a [UniversalWipeOutInfo] object
		 */
		public function UniversalWipeoutInfo(type:uint) 
		{
			this.type = type;
			this.state = UniversalWipeoutStateDef.WAIT;
		}
		
		/**
		 * 忍者考试名
		 */
		public function get name():String { return extra && extra.hasOwnProperty("name")? extra["name"] : I18n.lang("as_include_1451031571_3189"); }
	}

}