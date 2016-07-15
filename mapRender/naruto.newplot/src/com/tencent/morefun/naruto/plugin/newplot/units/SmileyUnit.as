package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.tencent.morefun.naruto.plugin.newplot.Const;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.SmileyUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
    import com.tencent.morefun.naruto.util.GameTip;
    import com.tencent.morefun.naruto.plugin.ui.util.SmileyUtils;
    import com.tencent.morefun.naruto.util.StrReplacer;
    
    import flash.display.MovieClip;

    public class SmileyUnit extends BasePlotUnit
    {
        protected var _defaultPlayMilliseconds:int          =   2000;
        protected var _bubbleActorOffsetY:int               =   10;

        private var _data:SmileyUnitData;
        private var _actor:Actor;
        private var _smiley:MovieClip;

        public function SmileyUnit(data:BasePlotUnitData)
        {
            super(data);
            _data = data as SmileyUnitData;
        }
        
        override public function destroy():void
        {
			if (_actor)
			{
				if(_smiley)
				{
					_actor.removePopup(_smiley);
				}
				_actor = null;
			}
			if(_smiley)
			{
				SmileyUtils.stopSmiley(_smiley);
				_smiley = null;
			}
			super.destroy();
        }

//        override public function complete():void
//        {
//            if (_actor != null && _smiley != null)
//            {
//                SmileyUtils.stopSmiley(_smiley);
//                _actor.removePopup(_smiley);
//            }
//
//            super.complete();
//        }

        override public function play():void
        {
            if (_data == null)
            {
                GameTip.show(Const.NO_DATA_AVAILABLE);
                complete();
                return;
            }

            _actor = PlotUtils.getActor(_data.actorSeq);
            _smiley = SmileyUtils.getSmiley(_data.smileyId);

            if (_actor != null && _smiley != null)
            {
                _smiley.gotoAndStop(1);
                _smiley.mouseEnabled = false;
                _smiley.mouseChildren = false;
                _smiley.x = -(_smiley.width >> 1);
                _smiley.y = -_smiley.height - _bubbleActorOffsetY;

                var animation:MovieClip = SmileyUtils.getSmileyAnimation(_smiley);
                animation.addFrameScript(animation.totalFrames - 1, onSmileyComplete);
                SmileyUtils.playSmiley(_smiley);

                _actor.addPopup(_smiley);
            }
            else
            {
                if (_actor == null)
                    GameTip.show(StrReplacer.replace(Const.NO_ACTOR_FOUND, _data.actorId));

                if (_smiley == null)
                    GameTip.show(StrReplacer.replace(Const.NO_SMILEY_FOUND, _data.smileyId));

                complete();
            }
        }

        private function onSmileyComplete():void
        {
            complete();
        }
    }
}