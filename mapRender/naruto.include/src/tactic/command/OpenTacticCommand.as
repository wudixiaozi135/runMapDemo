package tactic.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/21 17:50
	 */
	public class OpenTacticCommand extends Command
	{
		/**
		 * @see serverProto.inc.NinjaSourceType
		 */
		public var type:uint;
		
		/**
		 * 构造函数
		 * create a [OpenTacticCommand] object
		 */
		public function OpenTacticCommand(type:uint)
		{
			this.type = type;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.TACTIC;
		}
	}

}