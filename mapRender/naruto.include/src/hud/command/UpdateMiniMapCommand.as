package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * 更新小地图。例如有 NPC 变动，就要 call 这个命令。
	 * @author yboyjiang
	 */	
	public class UpdateMiniMapCommand extends Command
	{
		public function UpdateMiniMapCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}