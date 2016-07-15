package server
{
	
	import com.netease.protobuf.Message;
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.base.interfaces.ISocketProtocol;
	
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	
	import base.ApplicationData;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SocketProtocol implements ISocketProtocol
	{
		public static const RETURN_CODE_OK:int = 0;
		
		private var m_index:uint;
		private var m_error:int;
		private var m_errorStr:String;
		private var m_commandId:uint;
		private var m_type:uint;
		private var m_clientMessage:Message;
		private var m_serverMessage:Message;
		private var m_clientData:Object;//存放客户端临时数据
		
		private var m_bytes:ByteArray;
		private var m_messageBytes:ByteArray = new ByteArray();
		
		public function SocketProtocol()
		{
			m_bytes = new ByteArray();
		}
		
		public function get commandId():uint
		{
			return m_commandId;
		}
		
		public function set commandId(value:uint):void
		{
			m_commandId = value;
		}
		
		public function set index(value:uint):void
		{
			m_index = value;
		}
		
		public function get index():uint
		{
			return m_index;
		}
		
		public function set type(value:uint):void
		{
			m_type = value;
		}
		
		public function get type():uint
		{
			return m_type;
		}
		
		public function get success():Boolean
		{
			return m_error == RETURN_CODE_OK;
		}
		
		public function set error(value:int):void
		{
			m_error = value;
		}
		
		public function get error():int
		{
			return m_error;
		}
		
		public function set errorStr(value:String):void
		{
			m_errorStr = value;
		}
		
		public function get errorStr():String
		{
			return m_errorStr;
		}
		
		public function set clientMessage(message:Message):void
		{
			m_clientMessage = message;
		}
		
		public function get clientMessage():Message
		{
			return m_clientMessage;
		}
		
		public function set serverMessage(message:Message):void
		{
			m_serverMessage = message;
		}
		
		public function get serverMessage():Message
		{
			return m_serverMessage;
		}
		
		public function set clientData(value:Object):void
		{
			m_clientData = value;
		}
		
		public function get clientData():Object
		{
			return m_clientData;
		}
		
		public function encodeByMessage():void
		{
			if(m_clientMessage != null)
			{
				m_clientMessage.writeTo(bytes);
				
				logger.output("[Message]", ">>>>");
				logger.outputMessage(m_clientMessage);
			}
		}
		
		public function decodeByMessage(bytes:ByteArray):void
		{
			var ret:Object;
			
			m_messageBytes.writeBytes(bytes, 0, bytes.bytesAvailable);
			m_messageBytes.position = 0;
			if(m_serverMessage != null)
			{
				m_serverMessage.mergeFrom(bytes);
				if(m_serverMessage.hasOwnProperty("ret") || m_serverMessage.hasOwnProperty("retInfo"))
				{
					if(m_serverMessage.hasOwnProperty("ret"))
					{
						ret = m_serverMessage["ret"];
					}
					else
					{
						ret = m_serverMessage["retInfo"];
					}
					m_error = ret.code;
					m_errorStr = ret.msg;
					
					if(m_error != 0){m_errorStr = m_errorStr || I18n.lang("as_include_1451031572_3465")}
				}
				
				if(m_error == 0)
				{
					logger.output("[Message]", "<<<<");
					logger.outputMessage(m_serverMessage);
				}
				else
				{
					logger.output("[Message]", "<<<<");
					logger.outputMessage(m_serverMessage);
					logger.output("error_code", m_error, "error_msg", m_errorStr);
				}
			}
		}
		
		public function encodeByBytes():void
		{
			
		}
		
		public function decodeByBytes(bytes:ByteArray):void
		{
			
		}
		
		public function get bytesLength():Number
		{
			return m_bytes.length;
		}
		
		public function get bytes():ByteArray { return m_bytes; }
		public function set bytes(value:ByteArray):void
		{
			m_bytes = value;
		}
		
		public function get messageBytes():ByteArray
		{
			return m_messageBytes;
		}
		
		public function get data():ByteArray
		{
			var result:ByteArray = new ByteArray();
			result.endian = Endian.BIG_ENDIAN;
			result.position = 0;
			
			result.writeShort(0x0901); // magic uint16
			result.writeShort(bytesLength); // len uint16
			result.writeUnsignedInt(commandId); // cmd_id uint32
			result.writeUnsignedInt(index); // msg_id uint32
			result.writeUnsignedInt(1) // msg_type uint32 1请求 2回复 3广播
			result.writeDouble(0) // timeout uint64
			result.writeUnsignedInt(ApplicationData.singleton.selfuin); // uin uint32
			result.writeShort(ApplicationData.singleton.selfRole); // role_id uint16
			result.writeShort(ApplicationData.singleton.ser_id); // svr_id uint16
			result.writeUnsignedInt(0); //client_ip uint32
			result.writeBytes(m_bytes);
			
			logger.output("[Package]", ">>>>", "magic", 0x0901, "len", bytesLength, "cmd_id", commandId, "msg_id", index, "msg_type", 1, "timeout", 0, "uin", ApplicationData.singleton.selfuin,
			"role_id", ApplicationData.singleton.selfRole, "svr_id", ApplicationData.singleton.ser_id, "client_ip", 0);
			return result;
		}
	}
}