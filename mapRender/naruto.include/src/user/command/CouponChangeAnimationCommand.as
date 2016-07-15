package user.command
{
    import com.tencent.morefun.framework.base.Command;
    
    import flash.geom.Point;
    
    import def.PluginDef;

    public class CouponChangeAnimationCommand extends Command
    {
        public var from:Point;
        public var to:Point;

        public function CouponChangeAnimationCommand(from:Point, to:Point)
        {
            super();

            this.from = from;
            this.to = to;
        }

        override public function getPluginName():String
        {
            return PluginDef.USER;
        }
    }
}