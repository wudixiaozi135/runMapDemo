package com.tencent.morefun.naruto.plugin.motion.manager.effect.data
{
	import com.tencent.morefun.naruto.plugin.motion.MotionUrlFix;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	import flash.display.Sprite;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;

	public class EffectConfig
	{
		[StaticAutoDestroy]
		
		//不用担心这里的静态引用，�?��文本被加载进来后就不会释放的
		public static var configXml:XML;
		public static var shareConfigXml:XML;
		public static var inited:Boolean;
		
		private static var effectInfoMap:Dictionary;
		private static var shareEffectInfoMap:Dictionary;
		private static var defaultResDomain:ApplicationDomain;
		
		public function EffectConfig()
		{
			
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		private static function init():void
		{
			var effectObj:Object;
			var effectInfo:EffectInfo;
			var effectList:XMLList;
			var shareEffectList:XMLList;
			var res:Sprite
			
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			waitMap = new Dictionary();
			effectInfoMap = new Dictionary();
			shareEffectInfoMap = new Dictionary();
			
			effectList = configXml.EffectInfo;
			for each(var i:* in effectList)
			{
				effectInfo = new EffectInfo();
				effectInfo.id = i.@id;
				effectInfo.type = i.@type;
				effectInfo.target = i.@target;
				effectInfo.frontAction = i.@frontAction;
				effectInfo.backAction = i.@backAction;
				effectInfo.res = MotionUrlFix.fix(i.@res);
				effectInfo.color = i.@color;
				effectInfo.maxAlpha = i.@maxAlpha;
				effectInfo.minAlpha = i.@minAlpha;
				effectInfo.refPointName = i.@refPointName;
				effectInfo.ninjaAlpha = i.@ninjaAlpha;
				effectInfo.isBitmapShareRes = String(i.@isBitmapShareRes) == "1";
				effectInfo.isVectorgraphShareRes = String(i.@isVectorgraphShareRes) == "1";
				effectInfoMap[effectInfo.id] = effectInfo;
			}
			
			shareEffectList = shareConfigXml.EffectInfo;
			for each(var j:* in shareEffectList)
			{
				effectInfo = new EffectInfo();
				effectInfo.id = j.@id;
				effectInfo.type = j.@type;
				effectInfo.target = j.@target;
				effectInfo.frontAction = j.@frontAction;
				effectInfo.backAction = j.@backAction;
				effectInfo.res = MotionUrlFix.fix(j.@res);
				effectInfo.color = j.@color;
				effectInfo.maxAlpha = j.@maxAlpha;
				effectInfo.minAlpha = j.@minAlpha;
				effectInfo.refPointName = j.@refPointName;
				effectInfo.ninjaAlpha = j.@ninjaAlpha;
				effectInfo.isBitmapShareRes = String(j.@isBitmapShareRes) == "1";
				effectInfo.isVectorgraphShareRes = String(j.@isVectorgraphShareRes) == "1";
				shareEffectInfoMap[effectInfo.id] = effectInfo;
			}
		}
		
		public static function getShareEffectMap():Dictionary
		{
			if(!inited)
			{
				init();
			}
			
			return shareEffectInfoMap;
		}
		
		public static function getEffectMap():Dictionary
		{
			if(!inited)
			{
				init();
			}
			
			return effectInfoMap;
		}
		
		public static function updateEffectRes(effectId:int, res:String):void
		{
			var effectInfo:EffectInfo;
			
			if(!inited)
			{
				init();
			}
			
			effectInfo = effectInfoMap[effectId];
			if(effectInfo == null)
			{
				return ;
			}
			
			effectInfo.res = res;
		}
		
		private static var waitMap:Dictionary;
		public static function addWaitResEffect(effectInfo:EffectInfo):void
		{
			var effectList:Array;
			
			effectList = waitMap[effectInfo.res];
			if(effectList == null)
			{
				effectList = [];
				waitMap[effectInfo.res] = effectList;
			}
			effectList.push(effectInfo);
		}
		
		public static function updateResDomain(res:String, domain:ApplicationDomain):void
		{
			var effectList:Array;
			
			effectList = waitMap[res];
			if(effectList == null)
			{
				return ;
			}
			
			for each(var effectInfo:EffectInfo in effectList)
			{
				effectInfo.domain = domain;
			}
			
			effectList.splice(0, effectList.length);
		}
		
		public static function getShareEffectInfoById(effectId:int):EffectInfo
		{
			var effectInfo:EffectInfo;
			
			if(!inited)
			{
				init();
			}
			
			effectInfo = shareEffectInfoMap[effectId];
			
			return effectInfo;
		}
		
		public static function getEffectInfoById(effectId:int):EffectInfo
		{
			var effectInfo:EffectInfo;
			
			if(!inited)
			{
				init();
			}
			
			effectInfo = effectInfoMap[effectId];
			
			return effectInfo;
		}
		
		public static function getDefaultSkillEffect(hitType:int):EffectInfo
		{
			return effectInfoMap["plugin.battle.effect"];
		}
	
															
		public static function autoSetNull():void
		{

			configXml = null;
			shareConfigXml = null;
			effectInfoMap = null;
			shareEffectInfoMap = null;
			defaultResDomain = null;
			waitMap = null;
		}
	}
}