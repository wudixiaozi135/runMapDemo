package com.tencent.morefun.naruto.plugin.newplot.datas
{
    public class SmileyUnitData extends BasePlotUnitData
    {
        public var actorId:uint;
        public var actorSeq:uint;
        public var smileyId:uint;

        public function SmileyUnitData(cfg:XML)
        {
            super(cfg);

            this.actorId = uint(cfg.@actorId);
            this.actorSeq = uint(cfg.@actorSeq);
            this.smileyId = uint(cfg.@smileyId);
        }
    }
}