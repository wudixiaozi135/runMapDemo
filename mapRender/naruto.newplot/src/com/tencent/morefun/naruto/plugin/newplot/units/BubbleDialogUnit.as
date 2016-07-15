package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.tencent.morefun.naruto.plugin.exui.avatar.Avatar;
    import com.tencent.morefun.naruto.plugin.newplot.cfgs.ActorCfg;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BubblePlayType;
    import com.tencent.morefun.naruto.plugin.newplot.ui.BubbleDialogUI;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    
    import def.PlotAssetDef;

    public class BubbleDialogUnit extends BubbleMindUnit
    {
        private static const AVATAR_X:int                           =   6;
        private static const AVATAR_Y:int                           =   5;
        private static const AVATAR_WIDTH:int                       =   80;
        private static const AVATAR_HEIGHT:int                      =   80;
        private static const CONTENT_TEXT_X_WITH_AVATAR:int         =   85;
        private static const CONTENT_TEXT_WIDTH_WITH_AVATAR:int     =   180;
        private static const CONTENT_TEXT_X_WITHOUT_AVATAR:int      =   30;
        private static const CONTENT_TEXT_WIDTH_WITHOUT_AVATAR:int  =   230;

        private var _avatar:Avatar;

        public function BubbleDialogUnit(data:BasePlotUnitData)
        {
            super(data);

            _bubbleContentLeftX = -262;
            _bubbleContentRightX = -38;
            _bubbleContentY = -110;
        }
		
		override public function destroy():void
		{
			if (_avatar)
			{
				if(_avatar.parent)
				{
					_avatar.parent.removeChild(_avatar);
				}
				_avatar.destroy();
				_avatar = null;
			}
			super.destroy();
		}

//        override public function complete():void
//        {
//            if (_avatar != null && _ui.avatarContainer.contains(_avatar))
//            {
//                _ui.avatarContainer.removeChild(_avatar);
//                _avatar.destroy();
//            }
//
//            super.complete();
//        }

        override protected function showBubble():void
        {
            super.showBubble();

            _ui.mouse.visible = _data.playType == BubblePlayType.CLICK;

            if (_data.hasAvatar)
            {
                _ui.contentText.x = CONTENT_TEXT_X_WITH_AVATAR;
                _ui.contentText.width = CONTENT_TEXT_WIDTH_WITH_AVATAR;

                _avatar = new Avatar(AVATAR_WIDTH, AVATAR_HEIGHT);
                _avatar.x = AVATAR_X;
                _avatar.y = AVATAR_Y;
                _ui.avatarContainer.addChild(_avatar);

                loadAvatar(_data.actorSeq);
            }
            else
            {
                _ui.contentText.x = CONTENT_TEXT_X_WITHOUT_AVATAR;
                _ui.contentText.width = CONTENT_TEXT_WIDTH_WITHOUT_AVATAR;
            }
        }

        override protected function createBubbleUI():void
        {
            _ui = new BubbleDialogUI();
            _ui.mouseEnabled = false;
            _ui.mouseChildren = false;
        }

        private function loadAvatar(actorSeq:uint):void
        {
            var cfg:ActorCfg = PlotUtils.getActorCfgBySeq(actorSeq);
            var url:String;

            if (cfg != null)
            {
                url = PlotAssetDef.getAsset(PlotAssetDef.TYPE_BUBBLE_AVATAR, cfg.resId, _data.avatarType);
                _avatar.load(url);
            }
        }
    }
}