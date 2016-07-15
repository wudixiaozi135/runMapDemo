package hud.command
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    public class HudIconFlashCommand extends Command
    {
		/**
		 *后台协议对应的ID ，menuscfg.xml中的conditionProtoHudNotify 值
		 */		
        public var type:int;
		/**
		 *是否闪烁 
		 */		
        public var flashing:Boolean;
		public var isNewOpenIcon:Boolean
		
		public var skinName:String;
		/**
		 * 
		 * @param type  后台协议对应的ID
		 * @param flashing 是否闪烁
		 * @param isNewOpenIcon  是否新功能开启
		 * @param skinName  icon 皮肤名
		 */
        public function HudIconFlashCommand(type:int, flashing:Boolean ,isNewOpenIcon:Boolean = false,skinName:String = "")
        {
            super();

            this.type = type;
            this.flashing = flashing;
			this.isNewOpenIcon = isNewOpenIcon;
			this.skinName = skinName;
        }
        
        override public function getPluginName():String
        {
            return PluginDef.HUD;
        }
    }
}