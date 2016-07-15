package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.tencent.morefun.naruto.plugin.newplot.Const;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BubbleDirection;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BubblePlayType;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BubbleUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.ui.BubbleMindUI;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
    import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
    import com.tencent.morefun.naruto.util.GameTip;
    import com.tencent.morefun.naruto.util.StrReplacer;
    
    import flash.display.DisplayObject;
    import flash.events.MouseEvent;
    import flash.events.TimerEvent;
    import flash.utils.Timer;

    public class BubbleMindUnit extends BasePlotUnit
    {
        protected var _bubbleActorOffsetY:int               =   10;
        protected var _bubbleContentLeftX:int               =   -165;
        protected var _bubbleContentRightX:int              =   -15;
        protected var _bubbleContentY:int                   =   -130;

        protected var _data:BubbleUnitData;
        protected var _ui:Object;
        protected var _actor:Actor;
        protected var _timer:Timer;

        public function BubbleMindUnit(data:BasePlotUnitData)
        {
            super(data);
            _data = data as BubbleUnitData;
        }

        override public function destroy():void
        {
			LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK, onClick);
			_data = null;
			if(_timer)
			{
				_timer.stop();
				_timer.removeEventListener(TimerEvent.TIMER, onTimer);
				_timer = null;
			}
			if(_actor)
			{
				if(_ui)
				{
					_actor.removePopup(_ui as DisplayObject);
				}
				_actor = null;
			}
			if(_ui)
			{
				_ui = null;
			}
			super.destroy();
        }

        override public function play():void
        {
            if (_data == null)
            {
                GameTip.show(Const.NO_DATA_AVAILABLE);
                complete();
                return;
            }

            _actor = PlotUtils.getActor(_data.actorSeq);

            if (_actor != null)
            {
                showBubble();
            }
            else
            {
                GameTip.show(StrReplacer.replace(Const.NO_ACTOR_FOUND, _data.actorSeq));
                complete();
            }
        }

        protected function showBubble():void
        {
            createBubbleUI();
            showBubbleContent();

            if (_data.playType == BubblePlayType.TIME)
            {
                _timer = new Timer(_data.playTime);
                _timer.addEventListener(TimerEvent.TIMER, onTimer);
                _timer.start();
            }
            else
            {
                LayerManager.singleton.stage.addEventListener(MouseEvent.CLICK, onClick);
            }

			_actor.addPopup(_ui as DisplayObject);
//            _actor.popupContainer.addChild(_ui as DisplayObject);
        }

        protected function createBubbleUI():void
        {
            _ui = new BubbleMindUI();
            _ui.mouseEnabled = false;
            _ui.mouseChildren = false;
        }

        protected function showBubbleContent():void
        {
            _ui.contentText.text = _data.text;

            if (_data.direction == BubbleDirection.LEFT)
            {
                _ui.bg.gotoAndStop(1);
                _ui.x = _bubbleContentLeftX;
                _ui.y = _bubbleContentY;
//                _ui.y = -_actor.height + _bubbleContentY;
            }
            else
            {
                _ui.bg.gotoAndStop(2);
                _ui.x = _bubbleContentRightX;
                _ui.y = _bubbleContentY;
//                _ui.y = -_actor.height + _bubbleContentY;
            }
        }

        private function onClick(event:MouseEvent):void
        {
            LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK, onClick);

            complete();
        }

        private function onTimer(event:TimerEvent):void
        {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER, onTimer);

            complete();
        }
    }
}