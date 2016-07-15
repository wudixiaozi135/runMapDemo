package com.tencent.morefun.naruto.plugin.newplot.datas
{
    public class BubbleUnitData extends BasePlotUnitData
    {
        public var actorId:uint;
        public var actorSeq:uint;
        public var playType:String;
        public var playTime:int;                // milliseconds
        public var hasAvatar:Boolean;
        public var avatarType:int;
        public var direction:String;
        public var text:String;

        public function BubbleUnitData(cfg:XML)
        {
            super(cfg);

            this.actorId = uint(cfg.@actorId);
            this.actorSeq = uint(cfg.@actorSeq);
            this.playType = cfg.@playType;
            this.playTime = int(cfg.@playTime);
            this.hasAvatar = int(cfg.@hasAvatar) == 1;
            this.avatarType = int(cfg.@avatarType);
            this.direction = cfg.@direction;
            this.text = cfg.@text;
        }
    }
}