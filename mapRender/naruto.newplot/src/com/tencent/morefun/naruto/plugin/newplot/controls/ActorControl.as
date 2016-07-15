package com.tencent.morefun.naruto.plugin.newplot.controls
{
	import com.tencent.morefun.naruto.plugin.newplot.cfgs.ActorConfig;
	import com.tencent.morefun.naruto.plugin.newplot.events.ActorEvent;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	
	import map.utils.MapTimeTypeUtil;
	
	public class ActorControl
	{
		public var actorConfig:ActorConfig;
		
		private var actors:Vector.<Actor>;
		
		private var actorLayer:Sprite;
		private var popupLayer:Sprite;
		private var viewpoint:Rectangle;
		
		public function ActorControl(actorLayer:Sprite,popupLayer:Sprite)
		{
			super();
			this.actorLayer = actorLayer;
			this.popupLayer = popupLayer;
			actors = new Vector.<Actor>();
		}
		
		public function setData(actorConfig:ActorConfig,actorCfgs:XMLList,timeType:int):void
		{
			actorLayer.transform.colorTransform = MapTimeTypeUtil.getColorTransform(timeType);
			
			this.actorConfig = actorConfig;
			
			for each(var actorCfg:XML in actorCfgs)
			{
//				var actorData:ActorData = new ActorData();
//				actorData.seq = actorCfg.@seq;
//				if(actorData.seq == 1)
//				{
//					actorData.id = PlotUtils.majorRoleType;
//					actorData.cfg = actorConfig.getActorCfg(actorData.id);
//					actorData.cfg.name = PlotUtils.majorRoleName;
//				}else
//				{
//					actorData.id = actorCfg.@id;
//					actorData.cfg = actorConfig.getActorCfg(actorData.id);
//				}
//				actorData.defaultAction = actorCfg.@action;
//				actorData.cfg = actorConfig.getActorCfg(actorData.id);
				
//				var actor:Actor = new Actor(actorData);
				
				var actor:Actor = PlotUtils.createActor(actorCfg.@seq,actorCfg.@id,actorCfg.@action);
				actor.x = int(actorCfg.@x);
				actor.y = int(actorCfg.@y);
				
				addActor(actor);
			}
		}
		
		
		public function update(viewpoint:Rectangle):void
		{
			this.viewpoint = viewpoint;
			for each(var actor:Actor in actors)
			{
				checkInOutViewpoint(actor,actorLayer);
				checkInOutViewpoint(actor.getPopupContainer(),popupLayer);
			}
		}
		
		private function checkInOutViewpoint(dobj:DisplayObject,layer:Sprite):void
		{
			var bound:Rectangle = dobj.getBounds(null);
			bound.x += dobj.x;
			bound.y += dobj.y;
			
			bound.inflate(10,10);
			
			if(bound.intersects(viewpoint))
			{
				if(!layer.contains(dobj))
				{
					layer.addChild(dobj);
				}
			}else
			{
				if(layer.contains(dobj))
				{
					layer.removeChild(dobj);
				}
			}
		}
		
		public function addActor(value:Actor):void
		{
			value.addEventListener(ActorEvent.UPDATE_POSITION,onActorUpdatePosition);
			value.addEventListener(ActorEvent.UPDATE_POPUP_POSITION,onActorUpdatePosition);
			actors.push(value);
			if(viewpoint)
			{
				checkInOutViewpoint(value,actorLayer);
				checkInOutViewpoint(value.getPopupContainer(),popupLayer);
			}
		}
		
		protected function onActorUpdatePosition(event:ActorEvent):void
		{
			var actor:Actor = event.currentTarget as Actor;
			if(viewpoint)
			{
				checkInOutViewpoint(actor,actorLayer);
				checkInOutViewpoint(actor.getPopupContainer(),popupLayer);
			}
		}
		
		public function removeActor(seq:int):void
		{
			for(var i:int=actors.length-1;i>=0;i--)
			{
				if(actors[i].data.seq == seq)
				{
					if(actorLayer.contains(actors[i]))
					{
						actorLayer.removeChild(actors[i]);
					}
					actors[i].removeEventListener(ActorEvent.UPDATE_POSITION,onActorUpdatePosition);
					actors[i].removeEventListener(ActorEvent.UPDATE_POPUP_POSITION,onActorUpdatePosition);
					actors.splice(i,1);
					return;
				}
			}
		}
		
		public function getActor(seq:int):Actor
		{
			for each(var actor:Actor in actors)
			{
				if(actor.data.seq == seq)
				{
					return actor;
				}
			}
			return null;
		}
		
		public function getActorByResId(resId:int):Actor
		{
			for each(var actor:Actor in actors)
			{
				if(actor.data.cfg.resId == resId)
				{
					return actor;
				}
			}
			return null;
		}
		
//		private var lastStep:int;
//		public function stepUpdate(step:int):void
//		{
//			if(step - lastStep > 500)
//			{
//				lastStep = step;
//				
//				actors = actors.sort(sortFun);
//				
//				for(var i:int=0;i<actors.length;i++)
//				{
//					if(getChildIndex(actors[i]) != i)
//					{
//						setChildIndex(actors[i],i);
//					}
//				}
//			}
//		}
//		
//		private function sortFun(a:Actor,b:Actor):int
//		{
//			if(a.y != b.y)
//			{
//				return b.y - a.y;
//			}else
//			{
//				return b.x - a.x;
//			}
//		}
		
		public function destroy():void
		{
			for each(var actor:Actor in actors)
			{
				actor.removeEventListener(ActorEvent.UPDATE_POSITION,onActorUpdatePosition);
				actor.removeEventListener(ActorEvent.UPDATE_POPUP_POSITION,onActorUpdatePosition);
				actor.destroy();
				if(actor.parent)
				{
					actor.parent.removeChild(actor);
				}
			}
			actors.length = 0;
			actors = null;
			
			actorConfig = null;
			actorLayer = null;
			popupLayer = null;
			viewpoint = null;
		}
	}
}