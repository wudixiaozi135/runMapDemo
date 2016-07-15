package server.event
{
	
	import com.tencent.morefun.naruto.base.interfaces.ISocketProtocol;
	
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	public class SocketServerEvent extends Event
	{
		public static const TIME_OUT:String = "timeOut";
		public static const BUSY:String = "busy";
		public static const BUSY_NO_ICON:String = "busyNoIcon";
		public static const LEISURE:String = "leisure";
		public static const RECEIVE:String = "receive";
		public static const REG_PLUGIN_NOTIFY:String = "regPluginNotify";
		
		public static const REG_MESSAGE:String = "";
		public static const ADD_PROTOCOL_LISTENER:String = "addProtocolListener";
		
		public var protocol:ISocketProtocol;
		
		public var regPluginName:String;
		public var regPluginPackageLength:uint;
		public var regPluginCommandId:uint;
		public var regPluginProtocolBytes:ByteArray;
		public function SocketServerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}