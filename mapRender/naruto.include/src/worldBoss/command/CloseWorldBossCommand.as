package worldBoss.command
{
    import base.NarutoCommand;
    
    import def.PluginDef;
    /**
     * 关闭世界BOSS面板
     */
    public class CloseWorldBossCommand extends NarutoCommand
    {
        public function CloseWorldBossCommand()
        {
            super();
        }
        
        override public function getPluginName():String
        {
            return PluginDef.WORLD_BOSS;
        }
    }
}
