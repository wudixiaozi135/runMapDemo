package rankbattle.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 * 提供给新手引导用于设置 默认选中 排位战调阵型的哪个 
	 * 45级传入1, 55级传入0
	 * @author Georgehu
	 * 
	 */	
	public class SetRankBattleTroopIdxCmd extends NarutoCommand
	{
		public var troopIdx:int;
		public function SetRankBattleTroopIdxCmd(idx:int = 0) {
			troopIdx = idx;
			super(2);
		}
		override public function getPluginName():String {
			return PluginDef.RANKBATTLE;
		}
	}
}