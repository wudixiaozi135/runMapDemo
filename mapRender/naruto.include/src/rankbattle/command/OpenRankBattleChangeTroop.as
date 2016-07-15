package rankbattle.command {
    import base.NarutoCommand;
    
    import def.PluginDef;
	/**
	 * 打开 排位战 调 阵法的界面
	 * @author Georgehu
	 * 
	 */    
    public class OpenRankBattleChangeTroop extends NarutoCommand {
		public var troopIdx:int;
        public function OpenRankBattleChangeTroop(idx:int = 0) {
            troopIdx = idx;
			super(2);
        }
        
        override public function getPluginName():String {
            return PluginDef.RANKBATTLE;
        }
		
    }
}
