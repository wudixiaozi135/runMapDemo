package utils
{
	import com.netease.protobuf.UInt64;
	
	import base.ApplicationData;
	
	import serverProto.inc.ProtoPlayerKey;

	/**
	 * @author woodychen
	 * @createTime 2015-4-14 下午2:51:34
	 **/
    import com.tencent.morefun.naruto.i18n.I18n;
	public class PlayerNameUtil
	{
		public function PlayerNameUtil()
		{
		}
		
		static public function standardlizeName(svrInfo:Object, playerName:String):String
		{
			var svrId:uint;
			
			if (svrInfo is ProtoPlayerKey)
			{
				svrId = (svrInfo as ProtoPlayerKey).svrId;
			}
			else
			{
				svrId = int(svrInfo);
			}
			
			if (ApplicationData.singleton.hasOwnProperty("isMergedServer") && ApplicationData.singleton["isMergedServer"] == true)
			{
				//6001区,就显示1区,要不太长
				if(svrId > 6000 && svrId < 8000){
					svrId = int(svrId%6000);
				}
				if(svrId > 8000){
					svrId = int(svrId%8000);
				}
				return svrId + I18n.lang("as_include_1451031572_3788") + playerName;
			}
			else
			{
				return playerName;
			}
		}
		
		static public function formatGuildName(id:UInt64, name:String):String
		{
			if (id)
			{
				return standardlizeName(id.high & 0x0000FFFF, name);
			}
			return name;
		}
	}
}