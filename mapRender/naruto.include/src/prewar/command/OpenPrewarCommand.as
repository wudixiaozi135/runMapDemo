package prewar.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	
	import ninja.data.TeamForamtionInfo;
	import ninja.model.data.NinjaInfo;
	
	public class OpenPrewarCommand extends NarutoCommand
	{
		public var pkgNinjas:Vector.<NinjaInfo>;
		public var npcTeamFormationList:Vector.<TeamForamtionInfo>;
		public var playerTeamForamtionList:Vector.<TeamForamtionInfo>;
		public var backgroundUrl:String;
		public var talentPage:int;
		public var readyTeamPosList:Array;
		public var selfTeamPos:int;
		public var mp:int;
		public var isControl:Boolean;
		public var elapseTime:int;
		public var canStandList:Array;
		
		public function OpenPrewarCommand(mp:int,
										  backgroundUrl:String,
										  talentPage:int,
										  selfTeamPos:int,
										  readyTeamPosList:Array,
										  pkgNinjas:Vector.<NinjaInfo>,
										  npcTeamFormationList:Vector.<TeamForamtionInfo>,
										  playerTeamForamtionList:Vector.<TeamForamtionInfo>,
										  isControl:Boolean,
										  elapseTime:int,
										  canStandList:Array
										  
		)
		{
			super();
			
			this.mp = mp;
			this.pkgNinjas = pkgNinjas;
			this.selfTeamPos = selfTeamPos;
			this.talentPage = talentPage;
			this.backgroundUrl = backgroundUrl;
			this.readyTeamPosList = readyTeamPosList;
			this.npcTeamFormationList = npcTeamFormationList;
			this.playerTeamForamtionList = playerTeamForamtionList;
			this.isControl = isControl;
			this.elapseTime = elapseTime;
			this.canStandList = canStandList;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.PREWAR;
		}
	}
}