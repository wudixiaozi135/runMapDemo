package user.utils
{
	import def.PluginDef;
	
	
	import ninja.executer.NinjaProtoExecuter;
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaArrangeInfo;
	import ninja.model.data.NinjaInfo;
	
	import serverProto.formationBase.ProtoFormationInfo;
	
	public class UserProtoNinjaDecoding extends NinjaProtoExecuter
	{
		public function UserProtoNinjaDecoding(cache:Boolean=true, pluginName:String=null)
		{
			super(PluginDef.USER);
		}
		
		public function getFormationInfo(protoFormationInfo:ProtoFormationInfo):FormationInfo
		{
			return decodeFormationInfo(protoFormationInfo);
		}
		
		public function getNinjaInfos(protoNinjaInfoList:Array):Vector.<NinjaInfo>
		{
			return this.decodeNinjaInfos(protoNinjaInfoList);
		}
		
		public function attachPackageNinjaFormation(ninjaInfos:Vector.<NinjaInfo>, formationInfo:FormationInfo):Vector.<NinjaInfo>
		{
			var formation:Boolean;
			
			for each(var ninjaInfo:NinjaInfo in ninjaInfos)
			{
				formation = false;
				for each(var arranges:NinjaArrangeInfo in formationInfo.arranges)
				{
					if(arranges.sequence == ninjaInfo.sequence)
					{
						formation = true;
						ninjaInfo.status |= 1 << formationInfo.id;
					}
				}
				
				//if(!formation)
				//{
					//ninjaInfo.status = NinjaStatusDef.PACKAGE;
				//}
			}
			
			return ninjaInfos;
		}
	}
}