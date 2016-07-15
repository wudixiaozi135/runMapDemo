package crew.cmd 
{
	import com.tencent.morefun.framework.base.Command;
	import crew.data.NinjaPropsInfo;
	import crew.data.NinjaPropsPositionInfo;
	import crew.def.NinjaPropsListTypeDef;
	import def.PluginDef;
	
	/**
	 * 拉取忍具列表
	 * @author larryhou
	 * @createTime 2014/4/17 11:05
	 */
	public class RequestNinjaPropsListCommand extends Command
	{
		/**
		 * 忍具列表类型 @see crew.def.NinjaPropsListTypeDef
		 */
		public var type:uint;
		
		// response
		//*************************************************
		/**
		 * 对应类型的忍具列表
		 */
		public var props:Vector.<NinjaPropsInfo>;
		
		/**
		 * 装备位信息
		 */
		public var positions:Vector.<NinjaPropsPositionInfo>;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaPropsListCommand] object
		 */
		public function RequestNinjaPropsListCommand(type:uint)
		{
			this.type = type;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.CREW;
		}
	}

}