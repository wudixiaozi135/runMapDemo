package welfare.commands
{
    import RSModel.command.RSModelCommand;
    
    import serverProto.weekCycle.ProtoModAdditionInfo;
    
    public class GetModuleExtraRewardInfoCommand extends RSModelCommand
    {
        public var moduleId:int;
        public var data:ProtoModAdditionInfo;
        public var multiplyStr:String;

        public function GetModuleExtraRewardInfoCommand(moduleId:int)
        {
            super();

            this.moduleId = moduleId;
        }
    }
}