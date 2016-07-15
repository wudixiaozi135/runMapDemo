package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.cmds.GetCurrentNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.datas.AsidePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.filters.GlowFilter;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import flash.utils.Timer;

	public class AsidePlotUnit extends BasePlotUnit
	{
		public function AsidePlotUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():AsidePlotUnitData
		{
			return data as AsidePlotUnitData;
		}
		
		private var asideText:TextField;
		private var timer:Timer;
		private var txtFormat:TextFormat;
		override public function play():void
		{
			trace(selfData.asideText);
			
			var cmd:GetCurrentNewPlotCommand = new GetCurrentNewPlotCommand();
			cmd.call();
			
			asideText = new TextField();
			asideText.mouseEnabled = false;
			asideText.mouseWheelEnabled = false;
			asideText.text = selfData.asideText;
			asideText.wordWrap = false;
			asideText.width = 400;
			txtFormat = new TextFormat("SimSun",20,0xffffff,true);
			txtFormat.align = TextFormatAlign.CENTER;
			asideText.defaultTextFormat = txtFormat;
			asideText.setTextFormat(txtFormat);
			asideText.filters = [new GlowFilter(0x0b1200, 1, 2, 2, 10, 1)];
			
			asideText.x = LayoutManager.stageWidth / 2 - asideText.width/2;
			asideText.y = LayoutManager.stageHeight / 2 + LayoutManager.stageOffsetY;
			//LayoutManager.stageHeight / 2
			cmd.newplot.maskLayer.addChild(asideText);
			
			timer = new Timer(selfData.waitTime);
			timer.addEventListener(TimerEvent.TIMER,timerHandler);
			timer.start();
			
			LayerManager.singleton.stage.addEventListener(Event.RESIZE,resizeHandler);
		}
		
		protected function resizeHandler(event:Event):void
		{
			
			asideText.x = LayoutManager.stageWidth / 2 - asideText.width/2;
			asideText.y = LayoutManager.stageHeight / 2 + LayoutManager.stageOffsetY;
		}
		
		protected function timerHandler(event:TimerEvent):void
		{
			timer.removeEventListener(TimerEvent.TIMER,timerHandler);
			LayerManager.singleton.stage.removeEventListener(Event.RESIZE,resizeHandler);
			complete();
		}
		
		override public function destroy():void
		{
			LayerManager.singleton.stage.removeEventListener(Event.RESIZE,resizeHandler);
			if(timer)
			{
				timer.stop();
				timer.removeEventListener(TimerEvent.TIMER,timerHandler);
				timer = null;
			}
			
			if(asideText)
			{
				if(asideText.parent)
				{
					asideText.parent.removeChild(asideText);
				}
				asideText = null;
			}
			txtFormat = null;
			super.destroy();
		}
	}
}