package team.utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import RSModel.IRSModelPlugin;
    
    import base.ApplicationData;
    
    import def.ModelDef;
    import def.PluginDef;
    
    import team.data.TeamMemberData;
    import team.model.TeamModel;

    public class TeamUtils
    {
        public static function get plugin():IRSModelPlugin
        {
            return Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as IRSModelPlugin;
        }

        public static function get model():TeamModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.TEAM) as TeamModel;
        }

        public static function isSelf(tmd:TeamMemberData):Boolean
        {
            if (tmd == null)
                return false;

			return ApplicationData.singleton.selfInfo.equeal(tmd.uin, tmd.roleId, tmd.svrId);
        }

        public static function get isSelfCaptain():Boolean
        {
            var tmd:TeamMemberData = model.getCaptain();

            return isSelf(tmd);
        }

        public function TeamUtils()
        {
            throw new Error(TeamUtils + " can not be instantiated.");
        }
    }
}