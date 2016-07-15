package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.tencent.morefun.naruto.plugin.newplot.Const;
    import com.tencent.morefun.naruto.plugin.newplot.datas.ActorUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
    import com.tencent.morefun.naruto.util.GameTip;
    import com.tencent.morefun.naruto.util.StrReplacer;

    public class ActorActionUnit extends BasePlotUnit
    {
        private var _data:ActorUnitData;

		public function ActorActionUnit(data:BasePlotUnitData)
        {
            super(data);
            _data = data as ActorUnitData;
        }

        override public function destroy():void
        {
			_data = null;
			super.destroy();
        }

        override public function play():void
        {
			isPlayed = true;
            if (_data == null)
            {
                GameTip.show(Const.NO_DATA_AVAILABLE);
                complete();
                return;
            }

            doAction(_data);
//            complete();
        }
		
		private var isPlayed:Boolean = false;
        override public function skip():void
        {
            if(!isPlayed)
			{
				play();
			}
        }

        private function doAction(data:ActorUnitData):void
        {
			var actor:Actor = PlotUtils.getActor(data.seq);
			if(actor)
			{
				actor.playAction(data.mmeAction,false,false,onActionPlayEnd);
			}else
			{
				GameTip.show(StrReplacer.replace(Const.NO_ACTOR_FOUND, data.seq))
			}
        }
		
		protected function onActionPlayEnd():void
		{
			complete();
		}
		
    }
}