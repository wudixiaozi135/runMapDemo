package tx.mme
{
	import tx.mme.datas.PointElementData;

	internal class BaseInnerRenderer
	{
		protected var render:MmeAssetRender;
		
		protected var currFrame:int = -1;
		protected var currTotalFrame:int;
		protected var currActionName:String;
		
		public function BaseInnerRenderer(render:MmeAssetRender)
		{
			this.render = render;
		}
		
		internal function gotoAction(action:String,frame:int=0):Boolean
		{
			return false;
		}
		
		internal function update():void
		{
			
		}
		
		public function setCurrFrame(v:int):void
		{
			currFrame = v;
		}
		
		public function getCurrFrame():int
		{
			return currFrame;
		}
		
		public function getCurrTototalFrame():int
		{
			return currTotalFrame;
		}
		
		public function getCurrActionName():String
		{
			return currActionName;
		}
		
		public function getCurrReferPoints():Array
		{
			return null;
		}
		
		public function getCurrReferPointByName(pointName:String):PointElementData
		{
			return null;
		}
		
		public function getReferPointsFromAction(actionName:String,frame:int):Array
		{
			return null;
		}
		
		public function getReferPointFromActionByName(actionName:String,frame:int,pointName:String):PointElementData
		{
			return null;
		}
		
		public function getTotalFrameByActionName(name:String):int
		{
			return 0;
		}
		
		public function getActionNames():Array
		{
			return null;
		}
		
		public function hasActionName(name:String):Boolean
		{
			return false;
		}
		
		public function eventIndexOf(actionName:String,eventName:String,maxNum:int=1):Array
		{
			return null;
		}

		public function destroy():void
		{
			currActionName = null;
			currFrame = -1;
			currTotalFrame = 0;
			render = null;
		}
		
		public function hitTestPoint(x:Number, y:Number):Boolean
		{
			throw new Error("as_core_1451031566_660");
		}
	}
}