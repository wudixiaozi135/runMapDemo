package chat.data
{
	
	
	import base.ApplicationData;
	
	import chat.def.ChatChanelDef;
	
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	
	import utils.PlayerNameUtil;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class ChatItem
	{
		public var chatChannelType:uint;//聊天的频道类型, see ChatChannelDef
		public var chatContextType:uint;//聊天的内容类型
		public var chatContext:String;//聊天内容
		public var talker_name:String;//如果是玩家发送的，会显示玩家姓名
		public var talker_key:ProtoPlayerKey;//谁发起的聊天，如果是系统通知，此字段为空
		public var talker_vipLevel:int;
		public var talker_diamondInfo:ProtoDiamondInfo;
		public var listener_name:String; //发送给谁，会显示玩家姓名
		public var listener_key:ProtoPlayerKey;//发送给谁，如果是系统通知，此字段为空
		public var listener_vipLevel:int;
		public var listener_diamondInfo:ProtoDiamondInfo;
		public var dataArr:Array;//附加数据数组
		public var canClickLink:Boolean = true;
		
		public function ChatItem()
		{
		}
		
		public function parseToHtml():String
		{
			var html:String;
			var talkerHtml:String;
			var listenerHtml:String;
			
			talkerHtml = getPlayerHtmlString("talker");
			listenerHtml = getPlayerHtmlString("listener");
			
			html = "";
			(talkerHtml != "null") && (html += talkerHtml);
			(talkerHtml != "null") && (listenerHtml != "null") && (html += ("<font color='" + getTextColor(chatChannelType) + I18n.lang("as_include_1451031571_2563") + listenerHtml));
			if (talkerHtml != "null")
			{
				html += (listenerHtml != "null")? "<font color='" + getTextColor(chatChannelType) + I18n.lang("as_include_1451031571_2564") : "<font color='" + getTextColor(chatChannelType) + "'>:</font>";
				html += "<font size='1'> </font>";
			}
			html += "<font color='" + getTextColor(chatChannelType) + "'>" + chatContext + "</font>";
			
			return html;
		}
		
		private function getPlayerHtmlString(talkerOrListener:String = "talker"):String
		{
			var html:String;
			var playerName:String;
			var playerKey:ProtoPlayerKey;
			var uin:uint;
			var roleId:int;
			var svrId:int;
			var playerVipLevel:int;
			var playerDiamondInfo:ProtoDiamondInfo;
			var convertedId:uint;
			
			if (talkerOrListener == "talker")
			{
				playerName = talker_name;
				playerKey = talker_key;
				playerVipLevel = talker_vipLevel;
				playerDiamondInfo = talker_diamondInfo;
			}
			else if (talkerOrListener == "listener") 
			{
				playerName = listener_name;
				playerKey = listener_key;
				playerVipLevel = listener_vipLevel;
				playerDiamondInfo = listener_diamondInfo;
			}
			else
			{
				return "null";
			}
			
			html = "";
			dataArr ||= new Array();
			if (playerName && playerName != "")
			{
				uin = playerKey.uin;
				convertedId = ChatItemUinRecorder.fromUinToId(uin);
				roleId = playerKey.roleId;
				svrId = playerKey.svrId;
				playerName = PlayerNameUtil.standardlizeName(playerKey, playerName);
				if (svrId != ApplicationData.singleton.selfInfo.svrId || uin != ApplicationData.singleton.selfuin)
				{
					dataArr.push(playerDiamondInfo);
					if(canClickLink)
					{
						html = "<a href='event:[vipIcon:"+playerVipLevel+"|"+(dataArr.length-1)+"]'></a>" + "<font color='#FFAE00'>" + "<a href='event:player|"+playerName+"|"+convertedId+"|"+roleId+"|"+svrId+"|"+playerVipLevel+"|"+(dataArr.length-1)+"'><u>"+playerName+"</u></a></font>";						
					}
					else
					{
						html = "<a href='event:[vipIcon:"+playerVipLevel+"|"+(dataArr.length-1)+"]'></a>" + "<font color='#FFAE00'>" + playerName+"</font>";
					}
				}
				else
				{
					html = I18n.lang("as_include_1451031571_2565");
				}
				return html;
			}
			
			return "null";
		}
		
		private function getTextColor(chatChannelType:int):String
		{
			switch (chatChannelType)
			{
				case ChatChanelDef.ALL_SERVER:
					return "#77a820";
					break;
				case ChatChanelDef.FIGHT:
					return "#489cbf";
					break;
				case ChatChanelDef.GUILD:
					return "#d27847";
					break;
				case ChatChanelDef.TEAM:
					return "#ffffff";
					break;
				case ChatChanelDef.WHISPER:
					return "#ffc3c3";
					break;
				case ChatChanelDef.SYSTEM:
					return "#a282de";
					break;
				case ChatChanelDef.GOSSIP:
					return "#a282de";
					break;
/*				case ChatChanelDef.CURRENT:
					return "#489cbf";
					break;*/
				case ChatChanelDef.BATTLE_FIELD:
					return "#b29e40";
					break;
			}
			return null;
		}
	}
}