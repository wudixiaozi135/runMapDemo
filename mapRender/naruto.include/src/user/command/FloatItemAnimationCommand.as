package user.command
{
    import com.tencent.morefun.framework.base.Command;
    
    import flash.geom.Point;
    
    import def.PluginDef;
    
    public class FloatItemAnimationCommand extends Command
    {
        public var data:Object;
		public var traceData:Class;
		public var traceTime:int;
        public var from:Point;
        public var to:Point;
        public var speed:Number = 1;
        public var minScale:Number = 1;
        public var onComplete:Function;
        public var onAllComplete:Function;
		public var delay:uint = 500;

        public function FloatItemAnimationCommand(data:Object, from:Point)
        {
            super();

            this.data = data;
            this.from = from;
        }

        override public function getPluginName():String
        {
            return PluginDef.USER;
        }
    }
}