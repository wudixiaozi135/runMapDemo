package guild.command {
    import com.netease.protobuf.UInt64;
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    /**
     * 申请加入公会
     * @author georgehu
     *
     */
    public class JoinGuildProtoCommand extends Command {
		public var guildId:UInt64;
		/**
		 * 执行结果
		 */
		public var status:int;
        public function JoinGuildProtoCommand(commandLoadingType:int = 2, autoHideLoading:Boolean = true) {
			super(commandLoadingType, autoHideLoading);
		}
		override public function getPluginName():String {
			return PluginDef.GUILD;
		}
	}
}
