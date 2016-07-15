package battle.command
{	
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import user.def.UserStateDef;
	
	import world.command.DrawWorldSnapshotCommand;	
	
	public class RequestPveFightStartCommand extends RequestFightStartCommand
	{
		public var type:uint;
		public var id:uint;
		public var story:int;
		public var clientId:int;
		public var passivity:Boolean;
		public var difficulty:uint;
		public var treasureMapId:int;
		public var treasureMapIndex:int;
		
		/**
		 * 
		 * @param type 1：野怪,2：NPC
		 * @prarm id
		 */
		public function RequestPveFightStartCommand(type:uint, id:uint, passivity:int = 0, story:int = 0, clientId:int = 0, treasureMapId:int = 0, treasureMapIndex:int = 0)
		{
			super(Command.SINGLE_FILE);
			this.type = type;
			this.id = id;
			this.passivity = passivity != 0;
			this.story = story;
			this.clientId = clientId;
			this.treasureMapId = treasureMapId;
			this.treasureMapIndex = treasureMapIndex;
			
			this.addBeginStateInfo(UserStateDef.BASE_PVE, true);
		}
		
		override public function call():void
		{
			if(passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_BE_PVE) == false)
			{
				return;
			}
			
			if(!passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_PVE) == false)
			{
				return;
			}
			
//			BackGround.pushBackground(BackGroundDef.BATTLE_MASK_ANIMATION);
			super.call();
		}
		
		override public function begin():void
		{
			super.begin();
			
//			new DrawWorldSnapshotCommand().call();
		}
		
		override public function checkStateEnable():Boolean
		{
			return super.checkStateEnable();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}