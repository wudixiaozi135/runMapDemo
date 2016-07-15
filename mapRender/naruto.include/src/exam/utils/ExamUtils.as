package exam.utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import battle.data.BattleInfo;
    
    import def.ModelDef;
    import def.PluginDef;
    
    import exam.IExamPlugin;
    import exam.model.ExamModel;

    public class ExamUtils
    {
        public static function get plugin():IExamPlugin
        {
            return Facade.getInstance().retrievePlugin(PluginDef.EXAM) as IExamPlugin;
        }

        public static function get model():ExamModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.EXAM) as ExamModel;
        }

        public static function get battleModel():BattleInfo
        {
            return (plugin as Plugin).retrieveModel(ModelDef.BATTLE) as BattleInfo;
        }

        public function ExamUtils()
        {
            throw new Error(ExamUtils + " can not be instantiated.");
        }
    }
}