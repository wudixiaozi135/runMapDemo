package user.utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import base.ApplicationData;
    
    import battle.data.BattleInfo;
    
    import def.ModelDef;
    import def.PluginDef;
    
    import serverProto.user.ProtoSecondaryPasswordStatus;
    
    import user.IUser;
    import user.command.ValidateSecondPasswordCommand;
    import user.data.SecondPasswordInfo;
    import user.model.UserModel;

    public class UserUtils
    {
        public static function get plugin():IUser
        {
            return Facade.getInstance().retrievePlugin(PluginDef.USER) as IUser;
        }

        public static function get model():UserModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.USER) as UserModel;
        }

        public static function get battleModel():BattleInfo
        {
            return (plugin as Plugin).retrieveModel(ModelDef.BATTLE) as BattleInfo;
        }
		
		/**
		 * 验证二级密码
		 * @return 如果返回true，就代表已经验证通过，可以继续执行后续付费操作
		 */
		public static function validateSecondPassword():Boolean
		{
			var info:SecondPasswordInfo = ApplicationData.singleton.selfInfo.secondPasswordInfo;
			if(info.status == ProtoSecondaryPasswordStatus.PROTO_SECONDARY_PASSWORD_STATUS_NONE
			|| info.status == ProtoSecondaryPasswordStatus.PROTO_SECONDARY_PASSWORD_STATUS_VALID)
			{
				return true;
			}else
			{
				new ValidateSecondPasswordCommand().call();
				return false;
			}
		}

        public function UserUtils()
        {
            throw new Error(UserUtils + " can not be instantiated.");
        }
    }
}