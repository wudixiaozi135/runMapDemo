package tx.mme
{

	import flash.display.Sprite;

	public class MmeAssetMultiRender extends Sprite
	{
		private var renders:Vector.<MmeAssetRender>;
		private var layerNum:int;
		
		/**
		 * MmeAssetRender的一个多层封装
		 * @param layerNum 层数
		 * @param assets 资源提供者
		 * @param frameRate 帧频
		 * 
		 */		
		public function MmeAssetMultiRender(layerNum:int, assets:MmeAsset = null)
		{
			super();
			
			this.layerNum = layerNum;
			renders = new Vector.<MmeAssetRender>(layerNum);
			
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i] = new MmeAssetRender(assets);
				addChild(renders[i]);
			}
		}
		
		/**
		 *为每一层添加侦听 
		 * @param frameListener
		 * 
		 */		
		public function addFrameEventListener(frameListener:Function):void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i].addEventListener(MmeAssetRenderEvent.FRAME_EVENT, frameListener);
			}
		}
		
		/**
		 *移除每一层上的侦听 
		 * @param frameListener
		 * 
		 */		
		public function removeFrameEventListener(frameListener:Function):void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i].removeEventListener(MmeAssetRenderEvent.FRAME_EVENT, frameListener);
			}
		}
		
		/**
		 *播放所有层上的指定动作，如果没还载入资源的层将不进行播放 
		 * @param action
		 * @param frame
		 * @param loop
		 * 
		 */		
		public function play(action:String, frame:int = 0, loop:Boolean = false):void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				if(renders[i].getMmeData() != null)
				{
					renders[i].play(action, frame, loop);
				}
			}
		}
		
		/**
		 *停止所有层的播放 
		 * 
		 */		
		public function stop():void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i].stop();
			}
		}
		
		public function show():void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i].visible = true;
			}
		}
		
		public function hide():void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i].visible = false;
			}
		}
		
		/**
		 *通过索引获取某一层 
		 * @param index
		 * @return 
		 * 
		 */		
		public function getRenderByIndex(index:int):MmeAssetRender
		{
			return renders[index];
		}
		
		/**
		 *销毁索引相关层级（这里仅效果层内资源）
		 * @param index
		 * 
		 */		
		public function destoryByIndex(index:int):void
		{
			if(renders[index] != null)
			{
				renders[index].destroy();
			}
		}
		
		/**
		 *销毁全部 
		 * 
		 */		
		public function destory():void
		{
			for(var i:int = 0;i < layerNum;i ++)
			{
				renders[i].destroy();
			}
			
			this.removeChildren();
		}
	}
}