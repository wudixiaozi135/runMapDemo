package com.tencent.morefun.naruto.plugin.newplot.datas
{
    public class ScreenDialogUnitData extends BasePlotUnitData
    {
        public var actorId:uint;
        public var actorSeq:uint;
        public var avatarType:int;
        public var avatarPos:int;
        public var content:String;

        public function ScreenDialogUnitData(cfg:XML)
        {
            super(cfg);

            this.actorId = uint(cfg.@actorId);
            this.actorSeq = uint(cfg.@actorSeq);
            this.avatarType = int(cfg.@avatarType);
            this.avatarPos = int(cfg.@avatarPos);
            this.content = cfg.@content;
        }
    }
}