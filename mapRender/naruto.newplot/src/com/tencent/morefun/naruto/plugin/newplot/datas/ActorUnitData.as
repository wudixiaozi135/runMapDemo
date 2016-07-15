package com.tencent.morefun.naruto.plugin.newplot.datas
{
    public class ActorUnitData extends BasePlotUnitData
    {
        public var actorId:uint;
        public var seq:uint;
        public var direction:String;
        public var mmeAction:String;
        public var x:int;
        public var y:int;
        public var desX:int;
        public var desY:int;
        public var action:int;
        public var moveMethod:int;
        public var directionAfterMove:String;

        public function ActorUnitData(cfg:XML)
        {
            super(cfg);

            this.actorId = uint(cfg.@actorId);
            this.seq = uint(cfg.@actorSeq);
            this.direction = cfg.@direction;
            this.mmeAction = cfg.@mmeAction;
            this.x = int(cfg.@x);
            this.y = int(cfg.@y);
            this.desX = int(cfg.@desX);
            this.desY = int(cfg.@desY);
            this.action = int(cfg.@action);
            this.moveMethod = int(cfg.@moveMethod);
            this.directionAfterMove = cfg.@directionAfterMove;
        }
    }
}