package com.tencent.morefun.naruto.plugin.motion.manager.shield.data
{
	import flash.utils.Dictionary;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

	public class ShieldConfig
	{
		[StaticAutoDestroy]
		
		public static var shieldConfigXml:XML;
		public static var inited:Boolean;
		
		private static var shieldCfgMap:Dictionary;
		
		public function ShieldConfig()
		{
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		public static function init():void
		{
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			shieldCfgMap = new Dictionary();
			
			for each(var shieldCfgObj:XML in shieldConfigXml.ShieldInfo)
			{
				var shieldInfoCfg:ShieldInfoCfg = new ShieldInfoCfg();
				shieldInfoCfg.data = shieldCfgObj;
				
				shieldCfgMap[shieldInfoCfg.id] = shieldInfoCfg;
			}
		}
		
		public static function isShieldBuff(id:int):Boolean
		{
			init();
			
			return shieldCfgMap[id] != null;
		}
		
		public static function getShieldInfoCfgById(id:int):ShieldInfoCfg
		{
			init();
			
			return shieldCfgMap[id];
		}
	
															
		public static function autoSetNull():void
		{

			shieldConfigXml = null;
			shieldCfgMap = null;
		}
	}
}