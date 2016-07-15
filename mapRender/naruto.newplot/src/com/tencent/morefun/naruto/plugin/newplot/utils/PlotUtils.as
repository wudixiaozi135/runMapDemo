package com.tencent.morefun.naruto.plugin.newplot.utils
{
    import com.tencent.morefun.naruto.plugin.newplot.cfgs.ActorCfg;
    import com.tencent.morefun.naruto.plugin.newplot.cmds.GetCurrentNewPlotCommand;
    import com.tencent.morefun.naruto.plugin.newplot.controls.ActorControl;
    import com.tencent.morefun.naruto.plugin.newplot.controls.MapControl;
    import com.tencent.morefun.naruto.plugin.newplot.datas.ActorData;
    import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
    import com.tencent.morefun.naruto.plugin.newplot.views.NewPlot;
    
    import flash.display.Sprite;
    import flash.display.Stage;
    
    import base.ApplicationData;
    
    import cfgData.dataStruct.SceneCFG;
    
    import map.data.MapData;
    
    import world.SceneConfig;

    import com.tencent.morefun.naruto.i18n.I18n;
    public class PlotUtils
    {
		public static var stage:Stage;
		public static var majorRoleType:int;
		public static var majorRoleName:String;
		
        public static function getCurrentPlot():NewPlot
        {
            var cmd:GetCurrentNewPlotCommand = new GetCurrentNewPlotCommand();
            cmd.call();

            return cmd.newplot;
        }

        public static function getPlotLayer():Sprite
        {
            var plot:NewPlot = getCurrentPlot();

            if (plot != null)
                return plot.maskLayer;
            else
                return null;
        }

        public static function getActorControl():ActorControl
        {
            var plot:NewPlot = getCurrentPlot();

            if (plot != null)
                return plot.actorControl;
            else
                return null;
        }

        public static function getMapControl():MapControl
        {
            var plot:NewPlot = getCurrentPlot();

            if (plot != null)
                return plot.mapControl;
            else
                return null;
        }

        public static function getActor(seq:uint):Actor
        {
            var control:ActorControl = getActorControl();

            if (control != null)
                return control.getActor(seq);
            else
                return null;
        }
        
        public static function getActorCfgById(id:uint):ActorCfg
        {
            var control:ActorControl = getActorControl();

            if (control != null && control.actorConfig != null)
                return control.actorConfig.getActorCfg(id);
            else
                return null;
        }

        public static function getActorCfgBySeq(seq:uint):ActorCfg
        {
            var actor:Actor = getActor(seq);

            if (actor != null && actor.data != null)
                return actor.data.cfg;
            else
                return null;
        }

        public static function getMapData():MapData
        {
            var control:MapControl = getMapControl();

            if (control != null)
                return control.mapData;
            else
                return null;
        }

        public static function getPathFinder():AStarPathFinder
        {
            var control:MapControl = getMapControl();

            if (control != null)
                return control.pathFinder;
            else
                return null;
        }
		
		public static function createActor(seq:int,id:int=0,defaultAction:String="idle_0"):Actor
		{
			var actorData:ActorData = new ActorData();
			actorData.seq = seq;
			actorData.id = id;
			actorData.defaultAction = defaultAction;
			if(seq == 1 || id < 10)
			{
				actorData.seq = 1;
				actorData.cfg = getActorCfgById(majorRoleType);
				actorData.cfg.name = majorRoleName;
			}else
			{
				actorData.cfg = getActorCfgById(id);
			}
			if(actorData.cfg == null)
			{
				throw new Error(I18n.lang("as_newplot_1451031574_4609_0")+id+I18n.lang("as_newplot_1451031574_4609_1"));
			}
			return new Actor(actorData);
		}
		
		public static function getCurrMapId():int
		{
			var sceneInfo:SceneCFG = SceneConfig.getSceneInfo(ApplicationData.singleton.globelInfo.sceneId);
			return sceneInfo?sceneInfo.mapId:0;
		}
		
//		public static function getFollowRole():BaseRole
//		{
//			var cmd:GetFollowNpcCommand = new GetFollowNpcCommand();
//			cmd.call();
//			return cmd.followRole;
//		}

        public function PlotUtils()
        {
            throw new Error(PlotUtils + " can not be instantiated.");
        }
    }
}