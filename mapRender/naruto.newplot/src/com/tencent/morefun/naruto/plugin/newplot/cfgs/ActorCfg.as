package com.tencent.morefun.naruto.plugin.newplot.cfgs
{
	public class ActorCfg
	{
		public var id:int;
		public var resId:int;
		public var resAlone:int;
		public var name:String;
        public var showName:Boolean;
		public var showShadow:Boolean;
        public var avatar1:uint;
        public var avatar2:uint;
        public var avatar3:uint;
        public var avatar4:uint;
        public var avatar5:uint;
        public var avatar6:uint;
        public var avatar7:uint;
        public var avatar8:uint;
        public var avatar9:uint;
        public var avatar10:uint;
        public var avatar11:uint;
        public var avatar12:uint;
        public var avatar13:uint;
        public var avatar14:uint;
        public var avatar15:uint;
        public var avatar16:uint;
        public var avatar17:uint;
        public var avatar18:uint;
        public var avatar19:uint;
        public var avatar20:uint;
        public var avatar21:uint;
        public var avatar22:uint;
        public var avatar23:uint;
        public var avatar24:uint;

		public function ActorCfg()
		{
		}
		
		public function parse(xml:XML):void
		{
			id = xml.@id;
			resId = xml.@resId;
			resAlone = xml.@resAlone;
			name = xml.@name;
            showName = int(xml.@showName) == 1;
			showShadow = int(xml.@showShadow) == 1;
            avatar1 = uint(xml.@avatar1);
            avatar2 = uint(xml.@avatar2);
            avatar3 = uint(xml.@avatar3);
            avatar4 = uint(xml.@avatar4);
            avatar5 = uint(xml.@avatar5);
            avatar6 = uint(xml.@avatar6);
            avatar7 = uint(xml.@avatar7);
            avatar8 = uint(xml.@avatar8);
            avatar9 = uint(xml.@avatar9);
            avatar10 = uint(xml.@avatar10);
            avatar11 = uint(xml.@avatar11);
            avatar12 = uint(xml.@avatar12);
            avatar13 = uint(xml.@avatar13);
            avatar14 = uint(xml.@avatar14);
            avatar15 = uint(xml.@avatar15);
            avatar16 = uint(xml.@avatar16);
            avatar17 = uint(xml.@avatar17);
            avatar18 = uint(xml.@avatar18);
            avatar19 = uint(xml.@avatar19);
            avatar20 = uint(xml.@avatar20);
            avatar21 = uint(xml.@avatar21);
            avatar22 = uint(xml.@avatar22);
            avatar23 = uint(xml.@avatar23);
            avatar24 = uint(xml.@avatar24);
        }
	}
}