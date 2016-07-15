package com.tencent.morefun.naruto.plugin.newplot.utils
{
    import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
    
    import flash.geom.Point;
    
    import base.MapGridUtil;
    
    import map.model.MapInfo;

    public class PlotPathFinder
    {
        private static const ms_speed:int = 11;
        private static const ms_speedup:int = 11;

        private static var speed:Number = 12;
        private static var speedupEndPoint:Point;
        private static var mapInfo:MapInfo;
        private static var currentWalkPath:Array = new Array();
        private static var directionMotion:String = "idle_0";
        private static var faceArr:Array;
        private static var motionArr:Array = ["run_6", "run_7", "run_0", "run_1", "run_2", "run_3", "run_4", "run_5", "idle_6", "idle_7", "idle_0", "idle_1", "idle_2", "idle_3", "idle_4", "idle_5"];
        private static var roleRender:MmeAssetRender;
        private static var dirtype:Boolean = true;
        private static var lastDirection:int;
        private static var pathAdjusted:Boolean;

        public static function findPath(startPos:Point, endPos:Point):Array
        {
//TODO
            return [new Point(100, 100), new Point(110, 100), new Point(120, 100), new Point(120, 110), new Point(100, 130)];
////
        }

        public static function moveOnPathArr(pathArr:Array,notCut:Boolean=false):void
        {
            var mergerPath:Array;
            var nextPathStartPoint:Point;
            
//            dispatchWalkPathChange(pathArr);
            
            pathArr.splice(0, 1);
            speed = ms_speedup;
            speedupEndPoint = pathArr[0];
            
            if(speedupEndPoint == null)
            {
//                this.dispatchEvent(new RoleEvent(RoleEvent.MOVE_COMPLETE));
                return ;
            }
            
            nextPathStartPoint = MapGridUtil.getPixelPoint(mapInfo.tilePixelWidth, mapInfo.tilePixelHeight, mapInfo.mapPixelWidth, speedupEndPoint.x, speedupEndPoint.y);

            currentWalkPath = pathArr;
            
            directionMotion = faceArr[lastDirection];
            roleRender.play(dirCtrl(directionMotion), roleRender.getCurrFrame(), true);
            
//            this.notCut = notCut;
            moveToNextTile(notCut);
            pathAdjusted = false;
        }

        private static function dirCtrl(dir:String):String
        {
            var directionMotion:String = dir;
            if(dirtype){
                return dir;
            }else{
                if(directionMotion == "run_2" ){
                    directionMotion = "run_1";
                }else if(directionMotion == "run_4" ){
                    directionMotion = "run_3";
                }else if(directionMotion == "run_6"){
                    directionMotion = "run_5";
                }else if(directionMotion == "run_0"){
                    directionMotion = "run_7";
                }
                return directionMotion;
            }
        }

        private static function moveToNextTile(notCut:Boolean=false):void
        {
/*
            var tile:Point;
            
            if (currentWalkPath == null || currentWalkPath.length == 0)
            {
                walking = false;
                directionMotion = faceArr[lastDirection + 8];
                roleRender.play(dirCtrl(directionMotion), roleRender.getCurrFrame(), true);
//				this.dispatchEvent(new RoleEvent(RoleEvent.MOVE_COMPLETE));
                return;
            }

            nextPixel = getNextTilePixel(this.currentWalkPath,notCut);

            var dx:Number = nextPixel.x - this.x;
            var dy:Number = nextPixel.y - this.y;
            
            this.distance = Math.sqrt(dx * dx + dy * dy);
            
            this.radians = Math.atan2(dy, dx);
            
            this.xSpeed = Math.round(this.speed * Math.cos(radians));
            this.ySpeed = Math.round(this.speed * Math.sin(radians));
            
            this.setDirection(this.radians);	//方向
            
            this.walking = true;	//开始行走
            this.moveMapAndCell();
*/
        }

        public function PlotPathFinder()
        {
            throw new Error(PlotPathFinder + " can not be instantiated.");
        }
    }
}