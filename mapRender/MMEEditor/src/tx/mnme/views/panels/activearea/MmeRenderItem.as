package tx.mnme.views.panels.activearea
{
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.mmefile.render.datas.ActionData;
	import com.tencent.morefun.naruto.mmefile.render.datas.MmeData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.MmeElementData;
	
	import flash.display.Sprite;

	public class MmeRenderItem extends BaseItem
	{
		private var render:MmeAssetRender;
		private var sprite:Sprite;
		private var frame:int;
		
		public function MmeRenderItem(layerIndex:int,mmeEleData:MmeElementData)
		{
			super(mmeEleData, layerIndex);
		}
		
		private function initSprite():void
		{
			sprite = new Sprite();
			sprite.graphics.beginFill(0x00FF00,0.5);
			sprite.graphics.drawRect(0,0,100,100);
			sprite.graphics.endFill();
			addChild(sprite);
		}
		
		public function setFrame(value:int):void
		{
			frame = value;
		}
		
		public function getFrame():int
		{
			return frame;
		}
		
		public function setAction(action:String,andElementData:Boolean=false):void
		{
			(data as MmeElementData).action = action;
			if(render && render.getMmeData())
			{
				render.gotoAction(action);
			}
		}
		
		public function setUrl(url:String,andElementData:Boolean=false):void
		{
			(data as MmeElementData).url = url;
			if(render)
			{
				render.loadUrl(url);
			}else
			{
				initRender();
			}
		}
		public function getUrl():String
		{
			return (data as MmeElementData).url;
		}
		
		private function initRender():void
		{
			render = new MmeAssetRender();
			render.addEventListener(MmeAssetRenderEvent.READY,onRender);
			addChild(render);
			render.loadUrl((data as MmeElementData).url);
		}
//		private function destroyRender():void
//		{
//			if(render)
//			{
//				render.removeEventListener(MmeAssetRenderEvent.READY,onRender);
//				render.destroy();
//				render = null;
//			}
//		}
		
		override public function initDisplay():void
		{
			initSprite();
			if((data as MmeElementData).url)
			{
				initRender();
			}
		}
		
		private function onRender(e:MmeAssetRenderEvent):void
		{
			switch(e.type)
			{
				case MmeAssetRenderEvent.READY:
					if(sprite)
					{
						sprite.width = sprite.height = 10;
					}
					if((data as MmeElementData).action)
					{
						render.gotoAction((data as MmeElementData).action,frame);
					}
					break;
			}
			
		}
		
		public function getActions():Array
		{
			var arr:Array = [];
			var mmeData:MmeData = render?render.getMmeData():null;
			if(mmeData)
			{
				for each(var ad:ActionData in mmeData.actionDatas)
				{
					arr.push(ad.name);
				}
			}
			return arr;
		}
		
		override public function destroy():void
		{
			if(parent)
			{
				parent.removeChild(this);
			}
			super.destroy();
		}
			
	}
}