package com.tencent.morefun.naruto.plugin.motion.manager.effect.data
{
	import com.tencent.morefun.naruto.plugin.motion.player.data.EffectIdProvider;
	import flash.system.ApplicationDomain;

	public class EffectInfo
	{
		public var id:int = 0;
		
		public var target:int = 0;
		
		public var color:uint;//color滤镜颜色
		public var maxAlpha:Number; //alpha效果透明度
		public var minAlpha:Number;// minALpha
		public var ninjaAlpha:Number; //ninjaAlpha作用者透明度
		public var res:String = "";//资源逻辑名
		public var frontAction:String = "";//特效动作名
		public var backAction:String = "";
		public var refPointName:String = "";
		public var uid:Number = 0;
		public var isBitmapShareRes:Boolean;
		public var isVectorgraphShareRes:Boolean;
		public var resComplete:Boolean;
		
		private var _type:int = 0; //0仅动画 1仅滤镜 2动画加滤镜
		private var _domain:ApplicationDomain;
		public function set domain(value:ApplicationDomain):void
		{
			_domain = value;
			updateResComplete();
		}
		
		public function get domain():ApplicationDomain
		{
			return _domain;
		}
		
		public function set type(value:int):void
		{
			_type = value;
			updateResComplete();
		}
		
		public function get type():int
		{
			return _type;
		}
		
		private function updateResComplete():void
		{
			switch(_type)
			{
				case 0:
				case 2:
					resComplete = _domain != null;
					break;
				case 1:
					resComplete = true;
					break;
			}
		}
		
		public function clone():EffectInfo
		{
			var effectInfo:EffectInfo;
			
			effectInfo = new EffectInfo();
			effectInfo.id = id;
			effectInfo._type = _type;
			effectInfo.target = target;
			effectInfo.domain = domain;
			effectInfo.color = color;
			effectInfo.maxAlpha = maxAlpha;
			effectInfo.minAlpha = minAlpha;
			effectInfo.ninjaAlpha = ninjaAlpha;
			effectInfo.res = res;
			effectInfo.frontAction = frontAction;
			effectInfo.backAction = backAction;
			effectInfo.refPointName = refPointName;
			effectInfo.uid = EffectIdProvider.getId();
			effectInfo.resComplete = resComplete;
			
			return effectInfo;
		}
	
															
		public function autoSetNull():void
		{

			res = null;
			frontAction = null;
			backAction = null;
			refPointName = null;
			_domain = null;
		}
	}
}