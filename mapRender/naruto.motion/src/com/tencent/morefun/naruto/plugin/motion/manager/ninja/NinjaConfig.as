package com.tencent.morefun.naruto.plugin.motion.manager.ninja
{

	import com.tencent.morefun.naruto.plugin.motion.MotionUrlFix;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaResCfgInfo;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.geom.Point;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaConfig
	{
		[StaticAutoDestroy]
		
		public static var configXml:XML;
		public static var baseConfigXml:XML;
		public static var inited:Boolean;
		
		public static var ninjaInfoBin:ByteArray;
		
		private static var ninjaInfoMap:Dictionary;
		private static var ninjaCfgInfoMap:Dictionary;
		private static var ninjaResCfgInfoMap:Dictionary;
		
		public function NinjaConfig()
		{
			
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		private static function init():void
		{
			var ninjaList:XMLList;
			var ninjaObj:Object;
			var ninjaCfg:NinjaBattleCfgInfo;
			var ninjaResCfg:NinjaResCfgInfo;
			var area:Array;
			var attOffsetArr:Array;
			var scenePos:Point;
			var baseInfoObj:Object;
			var refId:int;
			
			if(inited == true)
			{
				return ;
			}
			inited = true;
			
			ninjaInfoMap = new Dictionary();
			ninjaCfgInfoMap = new Dictionary();
			ninjaResCfgInfoMap = new Dictionary();
			
			ninjaInfoBin.position = 0;
			ninjaCfgInfoMap = CFGDataLibs.parseData(ninjaInfoBin, CFGDataEnum.ENUM_NinjaBattleInfoCFG);
			
			ninjaList = baseConfigXml.BaseNinjaInfo;
			for(var i:int = 0;i < ninjaList.length();i ++)
			{
				ninjaObj = ninjaList[i];
				ninjaResCfg = new NinjaResCfgInfo();
				ninjaResCfg.id = ninjaObj.@id;
				ninjaResCfg.leftRes = MotionUrlFix.fix(ninjaObj.@leftRes);
				ninjaResCfg.rightRes = MotionUrlFix.fix(ninjaObj.@rightRes);
				ninjaResCfg.skillActionEffect = ninjaObj.@skillActionEffect;
				ninjaResCfg.ignoreDepth = String(ninjaObj.@ignoreDepth) == "true";
				ninjaResCfg.hideShadow = String(ninjaObj.@hideShadow) == "true";
				ninjaResCfg.ignoreSkillAction = String(ninjaObj.@ignoreSkillAction) == "true";
				ninjaResCfg.mirrorRes = String(ninjaObj.@mirrorRes) == "true";
				ninjaResCfg.scene = ninjaObj.@scene;
				ninjaResCfg.beHitEffectId = ninjaObj.@beHitEffectId;
				area = String(ninjaObj.@area).split(",");
				ninjaResCfg.area = new Point(area[0], area[1]);
				ninjaResCfgInfoMap[ninjaResCfg.id] = ninjaResCfg;
			}
		}
		
		public static function updateNinjaRes(ninjaId:int, res:String):void
		{
			var ninjaBattleCfg:NinjaBattleCfgInfo;
			
			init();
			
			ninjaBattleCfg = getNinjaInfoById(ninjaId);
			if(ninjaBattleCfg == null)
			{
				return ;
			}
			
			ninjaBattleCfg.resCfgInfo.res = res;
		}
		
		public static function getNinjaInfoById(ninjaId:int):NinjaBattleCfgInfo
		{
			var ninjaBattleCfg:NinjaBattleCfgInfo;
			
			init();
			
			ninjaBattleCfg = ninjaInfoMap[ninjaId];
			if(ninjaBattleCfg == null)
			{
				ninjaBattleCfg = new NinjaBattleCfgInfo();
				ninjaBattleCfg.cfgInfo = ninjaCfgInfoMap[ninjaId];
				if(ninjaBattleCfg.cfgInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4232_0") + ninjaId + I18n.lang("as_motion_1451031573_4232_1"))}
				ninjaBattleCfg.resCfgInfo = ninjaResCfgInfoMap[ninjaBattleCfg.cfgInfo.refId];
				ninjaInfoMap[ninjaBattleCfg.cfgInfo.id] = ninjaBattleCfg;
			}
			
			return ninjaBattleCfg;
		}
	
																			
		public static function autoSetNull():void
		{

			configXml = null;
			baseConfigXml = null;
			ninjaInfoBin = null;
			ninjaInfoMap = null;
			ninjaCfgInfoMap = null;
			ninjaResCfgInfoMap = null;
		}
	}
}