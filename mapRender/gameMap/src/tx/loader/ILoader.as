package tx.loader
{
	import flash.events.IEventDispatcher;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	
	import tx.loader.mission.Mission;
	
	public interface ILoader extends IEventDispatcher
	{
		function get traceFunction():Function;
		function set traceFunction(value:Function):void;

		function get base():String;
		function set base(value:String):void;
		
		function get applicationDomain():ApplicationDomain;
		function set applicationDomain(value:ApplicationDomain):void;
		
		function trace(...alt):void;
		
		function getClass(def:String):Class;
		function createObject(def:String):Object;
		
		function hasBytes(name:String):Boolean;
		function getBytes(name:String,uncompress:Boolean=false):ByteArray;
		
		function removeAllBytes():void;
		function removeBytes(name:String):void;
		
		function saveCache(mission:Mission):void;	
		
		function getLazyMission(name:String):Mission;
		function get lazyMissionCount():uint;
		function get currentLazyMission():Mission;
		function loadLazyMission(mission:Mission):void;
		function hasLazyMission(name:String):Boolean;
		
		function startLazyQueue():void;
		function stopLazyQueue():void;
		
		function get missionCount():uint;
		function get currentMission():Mission;
		function loadMission(mission:Mission):void;
		function hasMission(name:String):Boolean;
		
		function removeMission(name:String,containCurrentMission:Boolean):void;
		function removeAllMission(containCurrentMission:Boolean):void;
		

		
		function get flashCacheSize():Number;
		function get isCachePanel():Boolean;
		function transferCache():void;
		function flushCache():void;
		function get isNeedFlush():Boolean;
	}
}