package com.tencent.morefun.naruto.plugin.motion.player.action
{
	import flash.events.IEventDispatcher;

	public interface IActor extends IEventDispatcher
	{
		function get isEnd():Boolean;
		function set parent(vale:IActor):void;
		function get parent():IActor;
		function set autoDestroy(value:Boolean):void;
		function get autoDestroy():Boolean;
		function set data(value:Object):void;
		function get data():Object;
		function set args(value:Array):void;
		function get args():Array;
		function executeCallBack(type:String, bubbles:Boolean = false):void;
		function addCallBack(type:String, callback:Function):void;
		function init():void;
		function start():void;
		function end():void;
		function destroy():void;
		function actionDestroy():void;
		function addWaitEndActions(actions:Array):void;
		function addDaemonAction(actions:Array):void;
	}
}