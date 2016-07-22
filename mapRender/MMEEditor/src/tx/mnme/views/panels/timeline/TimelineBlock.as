package tx.mnme.views.panels.timeline
{
	import flash.display.BitmapData;
	import flash.geom.ColorTransform;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import mx.core.UIComponent;
	
	public class TimelineBlock extends UIComponent
	{
		public static const TYPE_SELECT:String = "select";
		public static const TYPE_NONE:String = "none";
		public static const TYPE_HAS:String = "has";
		
		public static const WIDTH:int = 15;
		public static const HEIGHT:int = 30;
		
		private var type:String;
		private var length:int;
		private var frame:int;
		private var event:String;
		private var useTween:Boolean;
		private var useTweenError:Boolean;
		private var phantomType:String;
		private var txt:TextField;
		private var txtP:TextField;
		private var txtM:TextField;
		private var sound:uint;
		
		public function TimelineBlock()
		{
			super();
		}
		
		public function setData(type:String,length:int,frame:int,event:String,useTween:Boolean,useTweenError:Boolean,phantomType:String, sound:uint):void
		{
			this.type = type;
			this.length = length;
			this.frame = frame;
			this.event = event;
			this.useTween = useTween;
			this.useTweenError = useTweenError;
			this.phantomType = phantomType;
			this.sound = sound;
			update();
			
		}
		
		public function setType(type:String):void
		{
			this.type = type;
			update();
		}
		
		public function setLength(length:int):void
		{
			this.length = length;
			update();
		}
		
		public function getLength():int
		{
			return this.length;
		}
		
		public function setFrame(frame:int):void
		{
			this.frame = frame;
			update();
		}
		
		public function getFrame():int
		{
			return this.frame;
		}
		
		public function setEvent(value:String):void
		{
			this.event = value;
			update();
		}
		
		public function setUseTween(value:Boolean):void
		{
			this.useTween = value;
			update();
		}
		
		public function setUseTweenError(value:Boolean):void
		{
			this.useTweenError = value;
			update();
		}
		
		public function setPhantomType(value:String):void
		{
			this.phantomType = value;
			update();
		}
		
		public function setSound(value:uint):void
		{
			sound = value;
			update();
		}
		
		public function clear():void
		{
			this.graphics.clear();
		}
		
		public function update():void
		{
			this.graphics.clear();
			if(frame<0)
				return;
			switch(type)
			{
				case TYPE_NONE:
					this.graphics.lineStyle(1,0x0);
					this.graphics.drawCircle(frame*WIDTH+WIDTH*0.5+1,HEIGHT*0.7,4);
					break;
				case TYPE_HAS:
					this.graphics.lineStyle(1,0x0);
					if(useTween)
					{
						this.graphics.beginFill(0x99CC99,1);
					}else
					{
						this.graphics.beginFill(0xCCCCCC,1);
					}
					this.graphics.drawCircle(frame*WIDTH+WIDTH*0.5+1,HEIGHT*0.7,4);
					break;
				case TYPE_SELECT:
					this.graphics.beginFill(0x0000FF,0.5);
					break;
			}
			
			this.graphics.drawRect(frame*WIDTH,0,length*WIDTH,HEIGHT);
			if(length>1)
			{
				if(useTween)
				{
					if(useTweenError)
					{
//						this.graphics.lineStyle(1,0xFF0000);
//						this.graphics.moveTo((frame+1)*WIDTH-1,20);
//						this.graphics.lineTo((frame+length)*WIDTH,20);
					}else
					{
//						this.graphics.lineStyle(1,0xFFFFFF);
						this.graphics.moveTo((frame+1)*WIDTH-1,20);
						this.graphics.lineTo((frame+length)*WIDTH,20);
						this.graphics.moveTo((frame+length)*WIDTH,20);
						this.graphics.lineTo((frame+length)*WIDTH-5,16);
						this.graphics.moveTo((frame+length)*WIDTH,20);
						this.graphics.lineTo((frame+length)*WIDTH-5,24);
					}
				}else
				{
					this.graphics.drawRect((frame+length-1)*WIDTH+4,14,8,12);
				}
			}
			if(event)
			{
				if(txt==null)
				{
					txt = new TextField();
					txt.defaultTextFormat = new TextFormat(null,null,0xFF0000,true);
					txt.text = "e";
				}
				txt.x = frame*WIDTH;
				addChild(txt);
			}else
			{
				if(txt && contains(txt))
				{
					removeChild(txt);
				}
			}
			if(phantomType)
			{
				if(txtP==null)
				{
					txtP = new TextField();
					txtP.defaultTextFormat = new TextFormat(null,9,0x0000FF,true);
					txtP.text = "p";
				}
				txtP.x = frame*WIDTH + 7;
				addChild(txtP);
			}
			else
			{
				if(txtP && contains(txtP))
				{
					removeChild(txtP);
				}
			}
			
			if (sound)
			{
				if(!txtM)
				{
					txtM = new TextField();
					txtM.defaultTextFormat = new TextFormat("Lucida Console", 13, 0xFF00FF, true);
					txtM.autoSize = TextFieldAutoSize.LEFT;
					txtM.text = "♪";
				}
				
				txtM.x = frame * WIDTH;
				txtM.y = 0;
				addChild(txtM);
			}
			else
			if (txtM)
			{
				txtM.parent && txtM.parent.removeChild(txtM);
			}
			this.graphics.endFill();
		}
	}
}