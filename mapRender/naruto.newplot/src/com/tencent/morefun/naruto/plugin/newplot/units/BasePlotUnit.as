package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	[Event(name="complete", type="flash.events.Event")]
	public class BasePlotUnit extends EventDispatcher
	{
		public var data:BasePlotUnitData;
		
		public function BasePlotUnit(data:BasePlotUnitData)
		{
			this.data = data;
		}
		
		/**
		 * 开始播放这个剧情片段
		 * PS:已经计算好延迟
		 */
		public function play():void
		{
			
		}
		
		/**
		 * 跳过本次剧情表现，在选定的事件开始预览时使用
		 */
		public function skip():void
		{
			
		}
		
		/**
		 * 这个剧情片段表现完了，主动调用下这个方法
		 */
		public function complete():void
		{
			dispatchEvent(new Event(Event.COMPLETE));
		}
		
		public function destroy():void
		{
			data = null;
		}
	}
}