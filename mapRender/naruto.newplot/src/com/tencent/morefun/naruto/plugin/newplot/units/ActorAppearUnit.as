package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.greensock.TweenLite;
    import com.tencent.morefun.naruto.plugin.newplot.Const;
    import com.tencent.morefun.naruto.plugin.newplot.controls.ActorControl;
    import com.tencent.morefun.naruto.plugin.newplot.datas.ActorUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
    import com.tencent.morefun.naruto.util.GameTip;
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    import ui.newplot.ActorAppearAni2;
    import ui.newplot.ActorAppearAni3;

    import com.tencent.morefun.naruto.i18n.I18n;
    public class ActorAppearUnit extends BasePlotUnit
    {
        private static const ALPHA_FRAME_VALUE:Number       =   0.05;

        private var _data:ActorUnitData;
        private var _actor:Actor;
		private var _anis:Array;

        public function ActorAppearUnit(data:BasePlotUnitData)
        {
            super(data);
            _data = data as ActorUnitData;
        }

        override public function destroy():void
        {
			_data = null;
			TweenLite.killTweensOf(_actor);
			for each(var ani:MovieClip in _anis)
			{
				ani.removeEventListener("appear",onAni);
				ani.removeEventListener("done",onAni);
				if(ani.parent)
				{
					ani.parent.removeChild(ani);
				}
			}
			if(_anis)
			{
				_anis.length = 0;
				_anis = null;
			}
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
			_anis = [];
            initActor();
            appear();
//            complete();
        }

		private var isPlayed:Boolean = false;
		override public function skip():void
		{
			if(!isPlayed)
			{
				initActor();
			}
		}


        private function initActor():void
        {
            _actor = PlotUtils.createActor(_data.seq,_data.actorId,_data.direction);
			_actor.x = _data.x;
			_actor.y = _data.y;
            var actorControl:ActorControl = PlotUtils.getActorControl();
            actorControl.addActor(_actor);
        }

        private function appear():void
        {
//            _actor.x = _data.x;
//            _actor.y = _data.y;
			if(_data.action == 1)//淡入
			{
				_actor.alpha = 0;
				TweenLite.to(_actor,1.5,{alpha:1,onComplete:function():void{
					complete();
				}});
			}else if(_data.action == 2)//冒烟
			{
				if(_actor.parent)
				{
					_actor.visible = false;
					var ani2:ActorAppearAni2 = new ActorAppearAni2();
					ani2.addEventListener("appear",onAni);
					ani2.addEventListener("done",onAni);
					ani2.x = _actor.x;
					ani2.y = _actor.y;
					
					_actor.parent.addChild(ani2);
					_anis.push(ani2);
				}else
				{
					throw new Error(I18n.lang("as_newplot_1451031574_4581"));
				}
			}else if(_data.action == 3)//水分身
			{
				if(_actor.parent)
				{
					_actor.visible = false;
					var ani3:ActorAppearAni3 = new ActorAppearAni3();
					ani3.addEventListener("appear",onAni);
					ani3.addEventListener("done",onAni);
					ani3.x = _actor.x;
					ani3.y = _actor.y;
					_actor.parent.addChild(ani3);
					_anis.push(ani3);
				}else
				{
					throw new Error(I18n.lang("as_newplot_1451031574_4583"));
				}
			}else
			{
				GameTip.show(I18n.lang("as_newplot_1451031574_4584")+_data.action);
			}
            
//            _actor.addEventListener(Event.ENTER_FRAME, onEnterFrame);
        }
		
		protected function onAni(event:Event):void
		{
			switch(event.type)
			{
				case "appear":
					_actor.visible = true;
					break;
				case "done":
					var ani:MovieClip = event.currentTarget as MovieClip;
					ani.removeEventListener("appear",onAni);
					ani.removeEventListener("done",onAni);
					if(ani.parent)
					{
						ani.parent.removeChild(ani);
					}
					var index:int = _anis.indexOf(ani);
					_anis.splice(index,1);
					complete();
					break;
			}
		}
//        protected function onEnterFrame(event:Event):void
//        {
//            _actor.alpha += ALPHA_FRAME_VALUE;
//
//            if (_actor.alpha >= 1)
//            {
//                _actor.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
//                complete();
//            }
//        }
    }
}