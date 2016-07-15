package com.tencent.morefun.naruto.plugin.motion.data
{
	import flash.utils.Dictionary;
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

	public class AttackResultConfig
	{
		public static var inited:Boolean;
		public static var configXml:XML;
		
		public static var resultInfoMap:Dictionary = new Dictionary();
		public function AttackResultConfig()
		{
		}
		
		public static function init():void
		{
			var resultItem:AttackResultItemInfo;
			
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			for each(var resultCfg:Object in configXml.ResultItem)
			{
				resultItem = new AttackResultItemInfo();
				resultItem.code = resultCfg.@code;
				resultItem.defenceType = resultCfg.@defenceType;
				resultItem.defenceAction = resultCfg.@defenceAction;
				resultItem.defenceEndEffect = resultCfg.@defenceEndEffect;
				resultItem.defenceEffect = resultCfg.@defenceEffect;
				resultItem.defenceEndAction = resultCfg.@defenceEndAction;
				resultItem.needRestIdle = String(resultCfg.@needRestIdle) == "true";
				resultItem.beatback = String(resultCfg.@beatback) == "true";
				resultItem.hideBlood = String(resultCfg.@hideBlood) == "true";
				resultItem.showBlood = String(resultCfg.@showBlood) == "true";
				
				resultInfoMap[String(resultCfg.@code)] = resultItem;
			}
		}
		
		public static function getResultItemInfo(attackStatus:int, beHitEffect:String, attackResult:int):AttackResultItemInfo
		{
			var resultInfo:AttackResultItemInfo;
			init();

			resultInfo = resultInfoMap[getResultCodeStr(attackStatus, beHitEffect, attackResult)];
			if(resultInfo == null)
			{
				throw new Error(getResultCodeStr(attackStatus, beHitEffect, attackResult) + "attackResult can't found");
			}
			
			return resultInfo;
		}
		
		private static function getResultCodeStr(attackStatus:int, beHitEffect:String, attackResult:int):String
		{
			var attackStatusStr:String;
			var attackResultStr:String;
			
			attackStatusStr = attackStatus.toString();
			while(attackStatusStr.length < 3)
			{
				attackStatusStr = "0" + attackStatusStr;
			}
			attackResultStr = attackResult.toString();
			while(attackResultStr.length < 3)
			{
				attackResultStr = "0" + attackResultStr;
			}
			
			
			return attackStatusStr + beHitEffect + attackResultStr;
		}
		
		public static function getResultItem(value:String):AttackResultItemInfo
		{
			init();
			
			return resultInfoMap[value];
		}
		
		
		public static function getResultItemByCode(value:String, beHitEffect:String):AttackResultItemInfo
		{
			var code:String;
			var resultInfo:AttackResultItemInfo;
			
			init();
			
			code = value.substring(0, 3) + beHitEffect + value.substring(3, 6);
			resultInfo = resultInfoMap["" + code];
			if(resultInfo  == null)
			{
				throw new Error(code + "attackResult can't found");
			}
			
			
			return resultInfo;
		}
	
															
		public function autoSetNull():void
		{

			configXml = null;
			resultInfoMap = null;
		}
	}
}