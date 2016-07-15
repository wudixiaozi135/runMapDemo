package ninja.executer
{
	import def.PluginDef;

	public class NinjaProtoTool
	{
		private static var toolInstance:NinjaProtoExecuter;
		
		public function NinjaProtoTool()
		{
		}
		
		public static function get tool():NinjaProtoExecuter
		{
			if(!toolInstance)
			{
				toolInstance = new NinjaProtoExecuter(PluginDef.NINJA);
			}
			return toolInstance;
		}
	}
}