package com.tencent.morefun.naruto.plugin.newplot.cfgs
{
	public class ActorConfig
	{
		private var list:Vector.<ActorCfg>;
		
		public function ActorConfig()
		{
			
		}
		
		public function setData(xml:XML):void
		{
			list = new Vector.<ActorCfg>;
			var cfg:ActorCfg;
			var actorXML:XML;
			for each(actorXML in xml.actor)
			{
				cfg = new ActorCfg();
				cfg.parse(actorXML);
				list.push(cfg);
			}
			for each(actorXML in xml.actorInfo)
			{
				cfg = new ActorCfg();
				cfg.parse(actorXML);
				list.push(cfg);
			}
		}
		
		public function getActorCfg(id:int):ActorCfg
		{
			for each(var cfg:ActorCfg in list)
			{
				if(cfg.id == id)
				{
					return cfg;
				}
			}
			return null;
		}
	}
}