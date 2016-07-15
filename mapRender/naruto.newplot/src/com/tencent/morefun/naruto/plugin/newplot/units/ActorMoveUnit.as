package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.tencent.morefun.naruto.plugin.newplot.Const;
    import com.tencent.morefun.naruto.plugin.newplot.datas.ActorUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.utils.AStarPathFinder;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
    import com.tencent.morefun.naruto.util.GameTip;
    import com.tencent.morefun.naruto.util.StrReplacer;
    
    import flash.events.Event;
    import flash.geom.Point;
    
    import base.MapGridUtil;
    
    import map.data.MapData;

    public class ActorMoveUnit extends BasePlotUnit
    {
        private static var _motionArr:Array = ["run_6", "run_7", "run_0", "run_1", "run_2", "run_3", "run_4", "run_5", "idle_6", "idle_7", "idle_0", "idle_1", "idle_2", "idle_3", "idle_4", "idle_5", "walk_6", "walk_7", "walk_0", "walk_1", "walk_2", "walk_3", "walk_4", "walk_5", ];

        private var _data:ActorUnitData;
        private var _actor:Actor;
        private var _path:Array;
        private var _desTilePoint:Point;
        private var _desPixelPoint:Point;
        private var _xSpeed:Number;
        private var _ySpeed:Number;
        private var _direction:int;

        public function ActorMoveUnit(data:BasePlotUnitData)
        {
            super(data);
            _data = data as ActorUnitData;
        }

        override public function destroy():void
        {
			_data = null;
			if(_actor)
			{
				_actor.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
				_actor = null;
			}
			_path = null;
			_desTilePoint = null;
			_desPixelPoint = null;
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

            _actor = PlotUtils.getActor(_data.seq);

            if (_actor != null)
            {
                findPathAndMove(_actor);
            }
            else
            {
                GameTip.show(StrReplacer.replace(Const.NO_ACTOR_FOUND, _data.seq));
                complete();
            }
        }

        override public function skip():void
        {
            if (_data == null)
            {
                GameTip.show(Const.NO_DATA_AVAILABLE);
                complete();
                return;
            }

            _actor = PlotUtils.getActor(_data.seq);

            if (_actor != null)
            {
                _actor.x = _data.desX;
                _actor.y = _data.desY;
            }
            else
            {
                GameTip.show(StrReplacer.replace(Const.NO_ACTOR_FOUND, _data.seq));
            }

            complete();
        }

        private function findPathAndMove(actor:Actor):void
        {
            var pathFinder:AStarPathFinder = PlotUtils.getPathFinder();
            var mapData:MapData = PlotUtils.getMapData();
            var startPoint:Point = MapGridUtil.getTilePoint(mapData.tilePixelWidth, mapData.tilePixelHeight, mapData.mapPixelWidth, actor.x, actor.y);
            var endPoint:Point = MapGridUtil.getTilePoint(mapData.tilePixelWidth, mapData.tilePixelHeight, mapData.mapPixelWidth, _data.desX, _data.desY);
			
			//如果两个点一样，就直接结束
			if(startPoint.equals(endPoint))
			{
				actor.x = _data.desX;
				actor.y = _data.desY;
				complete();
				return;
			}
			
            _path = pathFinder.find(startPoint, endPoint);

            if (_path != null && _path.length > 1)
            {
                _path.shift();//第一个是自己所在的格子，可能会跟实际当前所在的坐标有偏差，所以直接去掉就好
                moveOnNextPathPoint();
                actor.addEventListener(Event.ENTER_FRAME, onEnterFrame);
            }
            else
            {
                var msg:String = StrReplacer.replace(Const.NO_MOVE_PATH_FOUND, [_data.desX, _data.desY]);
                GameTip.show(msg);
                complete();
            }
        }

        private function moveOnNextPathPoint():void
        {
            if (_path.length > 0)
            {
                _desTilePoint = _path.shift();
                var mapData:MapData = PlotUtils.getMapData();
                _desPixelPoint = MapGridUtil.getPixelPoint(mapData.tilePixelWidth, mapData.tilePixelHeight, mapData.mapPixelWidth, _desTilePoint.x, _desTilePoint.y);

                var dx:Number = _desPixelPoint.x - _actor.x;
                var dy:Number = _desPixelPoint.y - _actor.y;
                var radians:Number = Math.atan2(dy, dx);

                setDirection(radians);
            }
            else
            {
				if(_data && _actor)
				{
					_actor.x = _data.desX;
					_actor.y = _data.desY;
				}
                _actor.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
                stopActor();
                complete();
            }

        }

        private function get runSpeed():Number
        {
            return 12;
        }

        private function get walkSpeed():Number
        {
            return 6;
        }

        private function onEnterFrame(event:Event):void
        {
            var dx:Number = _desPixelPoint.x - _actor.x;
            var dy:Number = _desPixelPoint.y - _actor.y;
            var distance:Number = Math.sqrt(dx * dx + dy * dy);
            var radians:Number = Math.atan2(dy, dx);
            var speed:int;

            // 1=Run, 2=Walk
            if (_data.moveMethod == 2)
                speed = this.walkSpeed;
            else
                speed = this.runSpeed;

            _xSpeed = Math.round(speed * Math.cos(radians));
            _ySpeed = Math.round(speed * Math.sin(radians));

            if (distance > speed)
            {
                _actor.x += _xSpeed;
                _actor.y += _ySpeed;
            }
            else
            {
                _actor.x = _desPixelPoint.x;
                _actor.y = _desPixelPoint.y;

                moveOnNextPathPoint();
            }
        }

        private function setDirection(radians:Number):void
        {
            var degrees:Number = radians * 180 / Math.PI;
            _direction = Math.round(degrees / 45);

            if (degrees < 0)
                _direction = Math.abs(_direction + 8) % 8;
            else
                _direction = _direction % 8;

            if (_data.moveMethod == 2)
                _direction += 16;

            var directionMotion:String = _motionArr[_direction];
            _actor.playAction(directionMotion,true,true,null);
        }

        private function stopActor():void
        {
            if (_data.directionAfterMove && _data.directionAfterMove != "0")
                _actor.playAction(_data.directionAfterMove, true,true,null);
            else
                _actor.playAction(_motionArr[(_direction % 8) + 8],true,true,null);
        }
		
		
    }
}