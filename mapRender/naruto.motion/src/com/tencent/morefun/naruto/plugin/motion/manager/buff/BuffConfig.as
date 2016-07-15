package com.tencent.morefun.naruto.plugin.motion.manager.buff
{

	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfoCfg;
	import flash.utils.Dictionary;
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class BuffConfig
	{
		[StaticAutoDestroy]
		
		public static var configXml:XML;
		public static var refConfigXml:XML;
		public static var groupConfigXml:XML;
		public static var inited:Boolean;
		
		private static var buffCfgMap:Dictionary;
//		private static var buffGroupCfgMap:Dictionary = new Dictionary();//buff������ �Ժ���ܻ�����
		public function BuffConfig()
		{
			
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		public static function init():void
		{
			var refXml:XML;
			var buffInfoCfg:BuffInfoCfg;
			var refId:int;
			
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			buffCfgMap = new Dictionary();
			for each(var biRef:XML in refConfigXml.BuffRefInfo)
			{
				buffInfoCfg = new BuffInfoCfg();
				buffInfoCfg.xml = configXml.bufferInfo.(@id == biRef.@refId)[0];
				buffInfoCfg.id = biRef.@buffId;
				buffCfgMap[buffInfoCfg.id] = buffInfoCfg; 
			}
		}
		
		public static function getBuffInfoCfg(id:int):BuffInfoCfg
		{
			var buffInfoCfg:BuffInfoCfg;
			
			init();
			
			buffInfoCfg = buffCfgMap[id];
			if(buffInfoCfg == null)
			{
				throw new Error("buff " + id +I18n.lang("as_motion_1451031572_4081"));
			}
			return buffInfoCfg;
		}
		
		public static function getBuffGroupUrl(id:int):String
		{
			return "assets/battle/buffgroup/" + id + ".png";
		}
	
															
		public static function autoSetNull():void
		{

			configXml = null;
			refConfigXml = null;
			groupConfigXml = null;
			buffCfgMap = null;
		}
	}
}