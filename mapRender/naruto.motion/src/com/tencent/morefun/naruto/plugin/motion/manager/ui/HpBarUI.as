package com.tencent.morefun.naruto.plugin.motion.manager.ui
{
	import com.greensock.TweenLite;
	import com.tencent.morefun.naruto.plugin.exui.base.Image;
	import com.tencent.morefun.naruto.plugin.motion.MotionAssetDef;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	import flash.display.MovieClip;
	import flash.geom.Matrix;
	import flash.text.TextField;
	import motionUI.SkillIconPic;
	import motionUI.hpBar;

	public class HpBarUI extends MovieClip
	{
		public static const TYPE_SINGLE:int = 0;
		public static const TYPE_MULTI:int = 1;
		public static const TYPE_PROTECT:int = 2;
		
		private var res:MovieClip;
		
		private var _hp:int;
		
		private var _maxhp:int;
		private var _skillIcon:Image;
		private var _hpbar2WidthMax:int;
		private var type:int;
		
		
		public function HpBarUI()
		{
			
		}
		
		public function init(type:int = 0, hp:int = 0, maxhp:int = 0):void
		{
			var i:int;
			
			_hp = hp;
			_maxhp = maxhp;
			this.type = type;
			
			res = new hpBar();
			this.addChild(res);
			_hpbar2WidthMax = res["hpbackgound1"].width;
			
			res.x = -res.width>>1;			
			res.txt.visible = false;
			
			reset();
			
			switch(type)
			{
				case TYPE_SINGLE:
					tweenHpObj.hp = hp;
					tweenHpBackObj.hp = hp;
					iconMc.visible = false;
					numMc.visible = false;
					break;
				case TYPE_MULTI:
					iconMc.visible = false;
					break;
				case TYPE_PROTECT:
					numMc.visible = false;
					break;
			}
		}
		
		private function reset():void
		{
			for(var i:int = 1;i < 7;i ++)
			{
				res["hp" + i].width = 0;
				res["hpbackgound" + i].width = 0;
			}
			
			res["nextbackground"].visible = false;
		}
		
		
		public function update(hp:int,maxhp:int):void
		{			
			switch(type)
			{
				case TYPE_SINGLE:
					updateSingleHpBar(hp, maxhp);
					break;
				case TYPE_PROTECT:
					updateProtectHpBar(hp, maxhp);
					break;
				case TYPE_MULTI:
					_hp = hp;
					_maxhp = maxhp;
					updateHpValue(hp);
					break;
			}
		}
		
		private function updateProtectHpBar(hp:int,maxhp:int):void
		{
			_hp = hp;
			_maxhp = maxhp;
			var p:Number =  _hp/_maxhp;
			
			//TweenManager.addTweenTo(_hpBar["hp1"],0.3,{scaleX:p});
			TweenLite.to(res["hp6"],0.2,{width:p*_hpbar2WidthMax});
			TweenLite.to(res["hpbackgound6"],0.2,{delay:0.5,width:p*_hpbar2WidthMax});
			
			res.txt.text = hp+"/"+maxhp;
		}
		
		private function updateSingleHpBar(hp:int,maxhp:int):void
		{
			_hp = hp;
			_maxhp = maxhp;
			var p:Number =  _hp/_maxhp;
			
			//TweenManager.addTweenTo(_hpBar["hp1"],0.3,{scaleX:p});
			TweenLite.to(res["hp1"],0.2,{width:p*_hpbar2WidthMax});
			TweenLite.to(res["hpbackgound1"],0.2,{delay:0.5,width:p*_hpbar2WidthMax});
			
			res.txt.text = hp+"/"+maxhp;
		}
		
		private var isTweening:Boolean;
		private var tweenHpObjList:Array = [];
		private var tweenHpObj:Object = {hp:-1};
		private var tweenHpBackObj:Object = {hp:-1};
		private function updateHpValue(hp:int):void
		{
			var time:Number;
			
			if(isTweening == false)
			{
				time = ((tweenHpObj.hp - hp) / 1000) * 0.5;
				
				isTweening = true;
				TweenManager.addTweenTo(tweenHpObj, time, {hp:hp, onUpdate:onHpUpdate});
				TweenManager.addTweenTo(tweenHpBackObj, time, {hp:hp, delay:0.3, onUpdate:onHpUpdate, onComplete:onHpUpdateComplete});
			}
			else
			{
				tweenHpObjList.push(hp);
			}
		}
		
		private function onHpUpdate():void
		{
			updateHpBarByHpValue(tweenHpObj.hp, tweenHpBackObj.hp);
		}
		
		private function onHpUpdateComplete():void
		{
			var hp:int;
			
			isTweening = false;
			if(tweenHpObjList.length != 0)
			{
				hp = tweenHpObjList.shift();
				updateHpValue(hp);
			}
		}
		
		
		private function updateHpBarByHpValue(hp:int, backGroundHp:int):void
		{
			var maxHp:int;
			var curHpbarNum:int;
			var curRealHpBarNum:int;
			var curHpBarMc:MovieClip;
			var curHpBackgroundMc:MovieClip;
			var p:Number;
			
			if(curHpbarNum == -1)
			{
				curHpbarNum = Math.floor(hp / 1000);
			}
			
			curHpbarNum = Math.floor(hp / 1000);
			curHpbarNum -= (hp % 1000 == 0 && hp != 0)?1:0;
			curRealHpBarNum = curHpbarNum % 5 + 1;
			maxHp = (curHpbarNum + 1) * 1000;
//			numText.text = "x" + (curHpbarNum + 1);
			
			curHpBarMc = res["hp" + curRealHpBarNum];
			curHpBackgroundMc = res["hpbackgound" + curRealHpBarNum];
			
			p = (hp - curHpbarNum * 1000) / 1000;
			curHpBarMc.width = p*_hpbar2WidthMax;
			updateOtherHpBar(curHpbarNum, curRealHpBarNum);
			
			curHpbarNum = Math.floor(backGroundHp / 1000);
			p = (backGroundHp - curHpbarNum * 1000) / 1000;
			curHpBackgroundMc.width = p*_hpbar2WidthMax;
			
			res.txt.text = hp+"/"+maxHp;
		}
		
		private function updateOtherHpBar(hpBarNum:int, hpBarRealNum:int):void
		{
			for(var i:int = hpBarRealNum + 1;i < 6;i ++)
			{
				res["hp" + i].width = 0;
				res["hpbackgound" + i].width = 0;
			}
			
			for(var j:int = hpBarRealNum - 1;j > 0;j --)
			{
				res["hp" + j].width = _hpbar2WidthMax;
				res["hpbackgound" + j].width = _hpbar2WidthMax;
			}
			
			if(hpBarRealNum == 1 && hpBarNum != 0)
			{
				res["nextbackground"].visible = true;
			}
			else
			{
				res["nextbackground"].visible = false;
			}
		}
		
		public function get hp():int
		{
			return _hp;
		}
		
		public function get maxHp():int
		{
			return _maxhp;
		}
		
		public function showSkillIcon(skillId:int):void
		{
			if(_skillIcon==null)
			{
				_skillIcon = new Image(20,20,true);
				var bd:SkillIconPic = new SkillIconPic();
				_skillIcon.graphics.beginBitmapFill(bd,new Matrix(1,0,0,1,-4,-4));
				_skillIcon.graphics.drawRect(-4,-4,bd.width,bd.height);
				_skillIcon.graphics.endFill();
				//				_skillIcon.graphics.beginFill(0x746536);
				//				_skillIcon.graphics.drawRoundRect(-1.5,-1.5,23,23,3,3);
				_skillIcon.x = -11;
				_skillIcon.y = -27;
				_skillIcon.load(MotionAssetDef.getAsset(MotionAssetDef.SKILL_ICON,skillId));
			}
			addChild(_skillIcon);
		}
		
		public function hideSkillIcon():void
		{
			if(_skillIcon)
			{
				_skillIcon.graphics.clear();
				if(_skillIcon.parent)
				{
					_skillIcon.parent.removeChild(_skillIcon);
				}
			}
		}
		
		public function showHpText():void
		{
			res.txt.visible = true;
		}
		
		public function hideHpText():void
		{
			res.txt.visible = false;
		}
		
		public function get iconMc():MovieClip
		{
			return res["icon"];
		}
		
		public function get numMc():MovieClip
		{
			return res["num"];
		}
		
		public function get numText():TextField
		{
			return res["num"].txt;
		}
	
															
		public function autoSetNull():void
		{

			res = null;
			_skillIcon = null;
			tweenHpObjList = null;
			tweenHpObj = null;
			tweenHpBackObj = null;
		}
	}
}