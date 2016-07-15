package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.cmds.GetCurrentNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BlackAsidePlotUnitData;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	
	import flash.display.Sprite;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.filters.GlowFilter;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import flash.utils.Timer;
	
	
	
	public class BlackAsidePlotUnit extends BasePlotUnit
	{
		public function BlackAsidePlotUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():BlackAsidePlotUnitData
		{
			return data as BlackAsidePlotUnitData;
		}
		
		private var asideText:TextField;
		private var cmd:GetCurrentNewPlotCommand;
		private var timer:Timer;
		
		private var txtOutTimer:Timer;
		private var str:String = "  ";
		private var strArr:Array = new Array();
		private var showLength:uint=60;
		private var newstrArr:Array = new Array();
		private var sprite:Sprite;
		private var txtFormat:TextFormat;
		
		override public function play():void
		{
			cmd = new GetCurrentNewPlotCommand();
			cmd.call();
			
			txtOutTimer = new Timer(20);//出单个字的时间
			txtOutTimer.addEventListener(TimerEvent.TIMER,onTimerHandle);
			
			asideText = new TextField();
			//asideText.text = selfData.asideText;
			sprite = new Sprite();
			sprite.graphics.beginFill(0x000000,1);
			sprite.graphics.drawRect(0,0,LayoutManager.stageWidth,LayoutManager.stageHeight);
			sprite.graphics.endFill();
			cmd.newplot.maskLayer.addChild(sprite);
			
			show(selfData.asideText);
			cmd.newplot.maskLayer.addChild(asideText);
			
			LayerManager.singleton.stage.addEventListener(Event.RESIZE,resizeHandler);
			
			asideText.x = LayoutManager.stageWidth / 2 - asideText.width/2;
			asideText.y = LayoutManager.stageHeight / 2 + LayoutManager.stageOffsetY;
			
			LayerManager.singleton.stage.addEventListener(MouseEvent.CLICK,mouseHandler);
		}
		
		protected function mouseHandler(event:MouseEvent):void
		{
			LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK,mouseHandler);
			if(txtOutTimer)
			{
				txtOutTimer.stop();
				txtOutTimer.removeEventListener(TimerEvent.TIMER,onTimerHandle);
				txtOutTimer = null;
			}
			asideText.text = str;
			waitingOver();
		}
		
		override public function complete():void
		{
			super.complete();
		}
		
		protected function resizeHandler(event:Event):void
		{
			sprite.graphics.clear();
			sprite.graphics.beginFill(0x000000,1);
			sprite.graphics.drawRect(0,0,LayoutManager.stageWidth,LayoutManager.stageHeight);
			
			asideText.x = LayoutManager.stageWidth / 2 - asideText.width/2;
			asideText.y = LayoutManager.stageHeight / 2 + LayoutManager.stageOffsetY;
		}
		
		private function show(msg:String):void
		{
			str = str + msg;
			for (var i:uint=0;i<str.length;i++)
			{
				strArr.push(str.charAt(i));
			}
			asideText.text = str;
			asideText.visible = false;
			asideText.autoSize = TextFieldAutoSize.LEFT;
			asideText.mouseEnabled = false;
			asideText.mouseWheelEnabled = false;
			asideText.wordWrap = false;
			txtFormat = new TextFormat("SimSun",20,0xffffff,true);
			txtFormat.align = TextFormatAlign.LEFT;
			asideText.setTextFormat(txtFormat);
			asideText.defaultTextFormat = txtFormat;
			asideText.filters = [new GlowFilter(0x0b1200, 1, 2, 2, 10, 1)];
			txtOutTimer.start();
		}
		
		private function onTimerHandle(event:TimerEvent):void{
			asideText.visible = true;
			newstrArr.push(strArr.shift());
			var showStr:String = newstrArr.join("")
			asideText.text = showStr.substr(0,showLength);
			if(strArr.length == 0){
				txtOutTimer.stop();
				txtOutTimer.removeEventListener(TimerEvent.TIMER,onTimerHandle);
				waitingOver();
			}
		}
		
		private function waitingOver():void
		{
			timer = new Timer(selfData.waitTime+800,1);//出完字之后的等待时间
			timer.addEventListener(TimerEvent.TIMER,timerHandler);
			timer.start();
		}
		
		
		protected function timerHandler(event:TimerEvent):void
		{
			if(timer){
				timer.removeEventListener(TimerEvent.TIMER,timerHandler);
				timer = null;
			}
			LayerManager.singleton.stage.removeEventListener(Event.RESIZE,resizeHandler);
			if(sprite)
			{
				sprite.graphics.clear();
				if(sprite.parent)
				{
					sprite.parent.removeChild(sprite);
				}
				sprite = null;
			}
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
			if(txtOutTimer)
			{
				txtOutTimer.stop();
				txtOutTimer.removeEventListener(TimerEvent.TIMER,onTimerHandle);
				txtOutTimer = null;
			}
			if(asideText)
			{
				cmd.newplot.maskLayer.removeChild(asideText);
				asideText = null;
			}
			
			LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK,mouseHandler);
			
			super.destroy();
		}
	}
}