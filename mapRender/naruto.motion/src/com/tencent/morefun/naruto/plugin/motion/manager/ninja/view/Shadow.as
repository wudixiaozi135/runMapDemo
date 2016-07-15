package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;

	public class Shadow extends Sprite
	{
		private var psitionContainer:DisplayObject;
		private var shadowRender:MmeAssetRender;
		
		public function Shadow(psitionContainer:DisplayObject)
		{
			super();
			
			shadowRender = new MmeAssetRender();
			addChild(shadowRender);
			
			this.psitionContainer = psitionContainer;
		}
		
		public function set domain(value:ApplicationDomain):void
		{
			shadowRender.load(value);
			shadowRender.gotoAction("shadow", 0);
		}
		
		public function render():void
		{
			if(calculatePos != null)
			{
				this.x = psitionContainer.x;
				this.y = calculateVerPosition();
			}
			else if(localPos != null)
			{
				this.x = localPos.x;
				this.y = localPos.y;
			}
			else
			{
				this.x = psitionContainer.x;
				this.y = psitionContainer.y;
			}
		}
		
		public function destroy():void
		{
			removeChild(shadowRender);
			shadowRender.destroy();
		}
		
		private var localPos:Point;
		public function lockVerPos(pos:Point):void
		{
			localPos = pos;
		}
		
		private var orginPos:Point;
		private var calculatePos:Point;
		public function calculatVerPos(pos:Point):void
		{
			calculatePos = pos;
			orginPos = new Point(psitionContainer.x, psitionContainer.y);
		}
		
		public function resetVerLock():void
		{
			localPos = null;
			calculatePos = null;
		}
		
		private function calculateVerPosition():int
		{
			var totalHorDistacne:int;
			var totalVerDistance:int;
			var curHorDistance:int;
			var curVerPosition:int;
			
			totalHorDistacne = Math.abs(orginPos.x - calculatePos.x);
			totalVerDistance = Math.abs(orginPos.y - calculatePos.y);
		
			curHorDistance = Math.abs(psitionContainer.x - orginPos.x);
			curVerPosition = totalVerDistance * curHorDistance / totalHorDistacne;
			
			return orginPos.y + curVerPosition;
		}
	
															
		public function autoSetNull():void
		{

			psitionContainer = null;
			shadowRender = null;
			localPos = null;
			orginPos = null;
			calculatePos = null;
		}
	}
}