package tx.sce.view
{
	import LibCore.mme.MmeAsset;
	import LibCore.mme.MmeAssetRender;
	import LibCore.mme.data.FrameData;
	import LibCore.mme.data.LayerData;
	import LibCore.mme.data.MmeData;
	import LibCore.mme.events.MmeAssetRenderEvent;
	
	import flash.display.DisplayObject;
	import flash.geom.Point;
	
	public class NpcRender extends MmeAssetRender
	{
		public static const maxIdleIndex:int = 10;  //假设可能的idle_xx序号最大不超过10
		public var movePathOffset:Point;
		public var idleIndex:int;
		public var totalIndex:int;
		public var topLeft:Point;
		public var bottomRight:Point;
		
		public function NpcRender(mmeAsset:MmeAsset=null)
		{
			super(mmeAsset);
			movePathOffset = new Point(0,2);
			idleIndex = 0;
			this.addEventListener(MmeAssetRenderEvent.READY,onReady);
		}
		
		public function turn(direction:String):void
		{
			var mmeData:MmeData = this.getMmeData();
			if (direction == "left")
			{
				this.play("idle_"+(++idleIndex),0,true) || this.play("idle_"+(idleIndex=0),0,true);
			}
			else
			{
				this.play("idle_"+(--idleIndex),0,true) || this.play("idle_"+(idleIndex=totalIndex),0,true)
			}
			countRange("idle_"+idleIndex);
		}
		
		private function onReady(evt:MmeAssetRenderEvent):void
		{
			this.removeEventListener(MmeAssetRenderEvent.READY,onReady);
			totalIndex = countTotalIndex();
			countRange("idle_"+idleIndex);
			this.play("idle_"+idleIndex,0,true);
		}
		
		private function countRange(actionName:String):void
		{
			var totalFrame:int = this.getTotalFrameByAction(actionName);
			var pic:DisplayObject;
			topLeft = null;
			bottomRight = null;
			for (var i:int = 0; i < totalFrame; i++)
			{
				this.gotoAction(actionName, i);
				for (var j:int = 0; j < this.numChildren; j++)
				{
					pic = this.getChildAt(j);
					if (j == 0)
					{
						topLeft = new Point(pic.x-pic.width/2,pic.y-pic.height/2);
						bottomRight = new Point(pic.x+pic.width/2, pic.y+pic.height/2);
						continue;
					}
					if (pic.x-pic.width/2 < topLeft.x) topLeft.x = pic.x-pic.width/2;
					if (pic.y-pic.height/2 < topLeft.y) topLeft.y = pic.y-pic.height/2;
					if (pic.x+pic.width/2 > bottomRight.x) bottomRight.x = pic.x+pic.width/2;
					if (pic.y+pic.height/2 > bottomRight.y) bottomRight.y = pic.y+pic.height/2;
				}
			}
		}
		
		private function getTotalFrameByAction(actionName:String):int
		{
			var ti:int = -1;
			for(var i:int=0;i<this.getMmeData().actionDatas.length;i++)
			{
				if(this.getMmeData().actionDatas[i].name == actionName)
				{
					ti = i;
					break;
				}
			}
			if(ti==-1)
			{
				return -1;
			}
			var tf:int = 0;
			for each(var ld:LayerData in this.getMmeData().actionDatas[ti].layerDatas)
			{
				
				for each(var fd:FrameData in ld.frameDatas)
				{
					if(tf < fd.index+fd.length-1)
					{
						tf = fd.index+fd.length-1;
					}
				}
			}
			return tf;
		}
		
		public function turnTo(index:int):void
		{
			idleIndex = index;
			countRange("idle_"+idleIndex);
			this.play("idle_"+idleIndex,0,true);
		}
		
		private function countTotalIndex():int
		{
			var index:int = maxIdleIndex;
			while(!this.play("idle_"+index,0,true))
			{
				if (--index <= 0) break;
			}
			return index;
		}
	}
}