package ui.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ShowItemIconBoxCommand extends Command
	{
		public var text:String;
		public var flags:uint;
		public var modal:Boolean;
		public var data:Object;
		public var closedFun:Function;
		public var closingFun:Function;
		public var flagNames:Object;
		public var m_isSystemError:Boolean = false;
		public var floatItemAnimation:Boolean;
		public var width:int;
		
		public function ShowItemIconBoxCommand(text:String,flags:uint=1,data:Object=null,floatItemAnimation:Boolean=false,modal:Boolean=true,closedFun:Function=null,closingFun:Function=null,flagNames:Object=null,isSystemError:Boolean=false)
		{
			super();
			this.floatItemAnimation = floatItemAnimation;
			m_isSystemError = isSystemError;
			this.text = text;
			this.flags = flags;
			this.modal = modal;
			this.data = data;
			this.closedFun = closedFun;
			this.closingFun = closingFun;
			this.flagNames = flagNames;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RSMODEL;
		}
	}
}