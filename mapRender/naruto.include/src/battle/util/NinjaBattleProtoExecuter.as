package battle.util
{
	import com.tencent.morefun.framework.log.logger;
	
	import def.PluginDef;
	
	import ninja.executer.NinjaProtoExecuter;
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaArrangeInfo;
	import ninja.model.data.NinjaInfo;
	
	import serverProto.formationBase.ProtoFormationInfo;
	
	public class NinjaBattleProtoExecuter extends NinjaProtoExecuter
	{
		public function NinjaBattleProtoExecuter()
		{
			super(PluginDef.BATTLE);
		}
		
		public function getPkgNinjas(protoNinjas:Array, formationInfo:FormationInfo):Vector.<NinjaInfo>
		{
			var pkgNinjaInfos:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
			pkgNinjaInfos = decodeNinjaInfos(protoNinjas);
			attachPackageNinjaFormation(pkgNinjaInfos, formationInfo);
			return pkgNinjaInfos;
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
						logger.output("[prewarDebugTrace]", "attachPackageNinjaFormation", ninjaInfo.sequence);
						
						formation = true;
						ninjaInfo.status |= 1 << formationInfo.id;
					}
				}
				
				if(!formation)
				{
					//ninjaInfo.status = NinjaStatusDef.PACKAGE;
				}
			}
			
			return ninjaInfos;
		}
		
		public function getFormationInfo(protoFormationInfo:ProtoFormationInfo):FormationInfo
		{
			return decodeFormationInfo(protoFormationInfo);
		}
	}
}