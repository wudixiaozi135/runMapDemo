package quiz.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2015-5-14 下午5:18:48
	 **/
	public class OpenQuizRulePanelCommand extends Command
	{
		public function OpenQuizRulePanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.QUIZ;
		}
	}
}