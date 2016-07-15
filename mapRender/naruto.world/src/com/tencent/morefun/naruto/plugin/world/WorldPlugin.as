package com.tencent.morefun.naruto.plugin.world
{
	import com.tencent.morefun.framework.apf.core.plugin.Plugin;
	import com.tencent.morefun.naruto.plugin.world.executers.LogicExecuter;
	import com.tencent.morefun.naruto.plugin.world.executers.ViewExecuter;
	import com.tencent.morefun.naruto.util.KeyboardManager;
	
	import def.PluginDef;
	
	import knowledgeTest.command.OpenKnowledgeTestCommand;
	
	import world.IWorldPlugin;
	
	public class WorldPlugin extends Plugin implements IWorldPlugin
	{
		public function WorldPlugin()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD;
		}
		
		override public function initialize(config:XML):void
		{
			KeyboardManager.singleton.addKeyboardListener("aaasssddd", function():void{
				(new OpenKnowledgeTestCommand()).call();
			});
			registerExecuter(new LogicExecuter());
			registerExecuter(new ViewExecuter());
		}
	}
}