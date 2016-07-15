package com.tencent.morefun.naruto.plugin.motion.manager.effect
{
	import com.tencent.morefun.framework.loader.mission.LoaderMission;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	import flash.display.Sprite;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;

	public class EffectManager
	{
		private var domainMap:Dictionary;
		private var shareDomain:ApplicationDomain;
		public function EffectManager()
		{
			
		}
		
		public function setBitmapShareDomain(value:ApplicationDomain):void
		{
			var effectMap:Dictionary;
			
			shareDomain = value;
			
			effectMap = EffectConfig.getShareEffectMap();
			for each(var effectInfo:EffectInfo in effectMap)
			{
				if(effectInfo.isBitmapShareRes)
				{
					effectInfo.domain = shareDomain;
				}
			}
		}
		
		public function setVectorgraphShareDomain(value:ApplicationDomain):void
		{
			var effectMap:Dictionary;
			
			shareDomain = value;
			
			effectMap = EffectConfig.getShareEffectMap();
			for each(var effectInfo:EffectInfo in effectMap)
			{
				if(effectInfo.isVectorgraphShareRes)
				{
					effectInfo.domain = shareDomain;
				}
			}
		}
		
		public function set resMap(value:Dictionary):void
		{
			domainMap = value;
		}
		
		public function get resMap():Dictionary
		{
			return domainMap;
		}
		
		public function updateEffectRes(res:String):void
		{
			var domain:ApplicationDomain = domainMap[res] as ApplicationDomain;
			EffectConfig.updateResDomain(res, domain);
			
			var effectMap:Dictionary = EffectConfig.getEffectMap();
			for each(var effectInfo:EffectInfo in effectMap)
			{
				if(effectInfo.res != res)
				{
					continue ;
				}
				
				effectInfo.domain = domain;
				EffectConfig.updateResDomain(res, domain);
			}
		}
		
		public function destroy():void
		{
			var effectMap:Dictionary;
			
			CollectionClearUtil.clearDictionary(domainMap);
			effectMap = EffectConfig.getShareEffectMap();
			for each(var effectInfo:EffectInfo in effectMap)
			{
				effectInfo.domain = null;
			}
		}
		
		public function getEffectById(id:int):EffectInfo
		{
			var effectInfo:EffectInfo;
			
			effectInfo = EffectConfig.getEffectInfoById(id);
			
			return effectInfo;
		}
		
		public function onEffectComplete(res:String, domian:ApplicationDomain):void
		{
			var effectMap:Dictionary;
			
			effectMap = EffectConfig.getEffectMap();
			for each(var effectInfo:EffectInfo in effectMap)
			{
				if(effectInfo.res == res)
				{
					effectInfo.domain = domian;
				}
			}
		}
	
															
		public function autoSetNull():void
		{

			domainMap = null;
			shareDomain = null;
		}
	}
}