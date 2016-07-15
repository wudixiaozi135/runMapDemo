package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import com.tencent.morefun.naruto.plugin.exui.base.Image;
	import com.tencent.morefun.naruto.plugin.motion.notice.AddSceneItemUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.RemoveSceneItemUINotice;
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class NinjaUI extends BaseSceneNinjaUI
	{
		private var res:NinjaResUI;
		private var hpBar:HpBar;
		private var shieldBar:ShieldBar;
		private var dialogue:DialogueUI;
		private var skillIcon:MovieClip;
		private var offlineIcon:MovieClip;
		private var skillPic:Image;
		private var nameText:TextField;
		
		private var dialogueX:int;
		private var dialogueY:int;
		
		private var targetGuid:TargetGuid;
		
		private var isShowText:Boolean;
		
		private var _majorRole:Boolean;
		private var _isOnline:Boolean;
		
		public function NinjaUI()
		{
			super();
			
			this.enableOffset = true;
			
			initUI();
		}
		
		public function updateSelfNameColor(value:Boolean):void
		{
			var textFormation:TextFormat;
			if(value)
			{
				textFormation = nameText.defaultTextFormat;
				textFormation.color = 0xffda46;
				nameText.defaultTextFormat = textFormation;
			}
			else
			{
				textFormation = nameText.defaultTextFormat;
				textFormation.color = 0x000000;
				nameText.defaultTextFormat = textFormation;
			}
			
			nameText.text = nameText.text;
		}
		
		public function get majorRole():Boolean
		{
			return _majorRole;
		}

		public function set majorRole(value:Boolean):void
		{
			var textFormation:TextFormat;
			
			_majorRole = value;
			
			if(_majorRole)
			{
				if(!isShowText){nameText.visible = true}
				skillIcon.y = nameText.y - skillIcon.height + 10;
			}
			updateOnlineIconInfo();
		}

		private function initUI():void
		{
			res = new NinjaResUI();
			
			skillPic = new Image(20, 20, true);
			
			skillIcon = res["skillIcon"];
			skillIcon["picContainer"].addChild(skillPic);
			
			offlineIcon = res["offlineIcon"];
			
			hpBar = new HpBar(res["hp"]);
			shieldBar = new ShieldBar(res["shield"]);
			dialogue = new DialogueUI(res["dialogue"]);
			nameText = res["nameText"];
			nameText.mouseEnabled = false;
			
			hideText();
			hideSkillIcon();
			shieldBar.alpha = 0;
			dialogue.showDialogue("");
			
			dialogueX = dialogue.x;
			dialogueY = dialogue.y;
			
			addChild(res);
			addChild(dialogue);
			
			new AddSceneItemUINotice(dialogue).send();
			
			mouseEnabled = mouseChildren = false;
			dialogue.mouseEnabled = dialogue.mouseChildren = false;
		}
		
		override public function set visible(value:Boolean):void
		{
			super.visible = value;
			
			if(value == false)
			{
				clearDialogue();
			}
		}
		
		public function showText():void
		{
			isShowText = true;
			
			hpBar.showText();
			shieldBar.showText();
			nameText.visible = true;
			skillIcon.y = nameText.y - skillIcon.height + 10;
			updateOnlineIconInfo();
		}
		
		public function hideText():void
		{
			isShowText = false;
			
			hpBar.hideText();
			shieldBar.hideText();
			if(!_majorRole)
			{
				nameText.visible = false;
				skillIcon.y = nameText.y - skillIcon.height + 10;
			}
			updateOnlineIconInfo();
		}
		
		public function showShield():void
		{
			nameText.y -= (shieldBar.height - 6);
			skillIcon.y -= (shieldBar.height - 6);
			hpBar.up(shieldBar.height - 6);
			shieldBar.alpha = 1;
			updateOnlineIconInfo();
		}
		
		public function hideShield():void
		{
			nameText.y += (shieldBar.height - 6);
			skillIcon.y += (shieldBar.height - 6);
			hpBar.down(shieldBar.height - 6);
			shieldBar.alpha = 0;
			updateOnlineIconInfo();
		}
		
		public function showHpBar():void
		{
			hpBar.alpha = 1;
		}
		
		public function hideHpBar():void
		{
			hpBar.alpha = 0;
		}
		
		public function showSkillIcon():void
		{
			skillIcon.alpha = 1;
			updateOnlineIconInfo();
		}
		
		public function hideSkillIcon():void
		{
			skillIcon.alpha = 0;
			updateOnlineIconInfo();
		}
		
		private function updateOnlineIconInfo():void
		{
			if(_majorRole == true && _isOnline == false)
			{
				offlineIcon.visible = true;
			}
			else
			{
				offlineIcon.visible = false;
			}
			
			if(skillIcon.alpha == 0)
			{
				offlineIcon.y = nameText.y - offlineIcon.height;
			}
			else
			{
				offlineIcon.y = skillIcon.y  - offlineIcon.height;
			}
		}
		
		public function set isOnline(value:Boolean):void
		{
			_isOnline = value;
			updateOnlineIconInfo();
		}
		
		public function get isOnline():Boolean
		{
			return _isOnline;
		}
		
		public function showNinjaName():void
		{
			nameText.alpha = 1;
		}
		
		public function hideNinjaName():void
		{
			nameText.alpha = 0;	
		}
		
		public function updateNinjaName(value:String):void
		{
			nameText.text = value;
		}
		
		public function clearDialogue():void
		{
			dialogue.showDialogue("");
		}
		
		public function updateDialogue(value:String):void
		{
			dialogue.showDialogue(value);
		}
		
		public function updateSkillIcon(value:String):void
		{
			skillPic.load(value);
		}
		
		public function setHpBarSize(value:int):void
		{
			hpBar.setSize(value);
		}
		
		public function setShieldBarSize(value:int):void
		{
			shieldBar.setSize(value);
		}
		
		public function setHpBarType(value:int):void
		{
			hpBar.setType(value);
		}
		
		public function updateHp(curValue:int, maxValue:int):void
		{
			hpBar.update(curValue, maxValue);
		}
		
		public function updateImmediately(curValue:int, maxValue:int):void
		{
			hpBar.updateImmediately(curValue, maxValue);
		}
		
		public function updateShield(curValue:int, maxValue:int):void
		{
			shieldBar.update(curValue, maxValue); 
		}
		
		public function showGuid():void
		{
			targetGuid ||= new TargetGuid();
			
			addChild(targetGuid);
		}
		
		public function hideGuid():void
		{
			if(targetGuid && contains(targetGuid))
			{
				removeChild(targetGuid);
			}
		}
		
		override public function set ninjaX(value:int):void
		{
			super.ninjaX = value;
			dialogue.ninjaX = value;
		}
		
		override public function set ninjaY(value:int):void
		{
			super.ninjaY = value;
			dialogue.ninjaY = value;
		}
		
		override public function updatePosition():void
		{
			super.updatePosition();
			
			dialogue.x = dialogueX + this.x;
			dialogue.y = dialogueY + this.y;
		}
		
		public function destroy():void
		{
			hpBar.destroy();
			shieldBar.destroy();
			skillPic.dispose();
			
			new RemoveSceneItemUINotice(dialogue).send();
			this.removeChildren();
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			res = null;
			hpBar = null;
			shieldBar = null;
			dialogue = null;
			skillIcon = null;
			skillPic = null;
			nameText = null;
			targetGuid = null;
			offlineIcon = null;
		}
	}
}