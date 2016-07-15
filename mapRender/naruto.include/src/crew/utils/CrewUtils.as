package crew.utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import bag.model.BagModel;
    
    import base.ApplicationData;
    
    import crew.ICrewPlugin;
    import crew.model.CrewModel;
    
    import def.ModelDef;
    import def.PluginDef;
    
    import equipment.model.EquipmentModel;
    
    import ninja.model.data.NinjaInfo;

    public class CrewUtils
    {
        public static function get plugin():ICrewPlugin
        {
            return Facade.getInstance().retrievePlugin(PluginDef.CREW) as ICrewPlugin;
        }

        public static function get model():CrewModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.CREW) as CrewModel;
        }

        public static function get bagModel():BagModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.BAG) as BagModel;
        }

        public static function get equipmentModel():EquipmentModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.EQUIPMENT) as EquipmentModel;
        }
		
//		public static function get majorRoleNinjaInfo():NinjaInfo
//		{
//			for each(var ninjaInfo:NinjaInfo in ApplicationData.singleton.selfInfo.ninjaInfoList)
//			{
//				if(ninjaInfo.sequence == 0)
//				{
//					return ninjaInfo;
//				}
//			}
//			return null;
//		}

        public function CrewUtils()
        {
            throw new Error(CrewUtils + " can not be instantiated.");
        }
    }
}