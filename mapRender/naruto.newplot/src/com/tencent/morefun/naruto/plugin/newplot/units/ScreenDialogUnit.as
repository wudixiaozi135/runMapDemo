package com.tencent.morefun.naruto.plugin.newplot.units
{
    import com.tencent.morefun.naruto.plugin.exui.avatar.Avatar;
    import com.tencent.morefun.naruto.plugin.newplot.Const;
    import com.tencent.morefun.naruto.plugin.newplot.cfgs.ActorCfg;
    import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.datas.ScreenDialogUnitData;
    import com.tencent.morefun.naruto.plugin.newplot.defs.ScreenDialogAvatarPos;
    import com.tencent.morefun.naruto.plugin.newplot.ui.ScreenDialogUI;
    import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
    import com.tencent.morefun.naruto.plugin.ui.base.BackGround;
    import com.tencent.morefun.naruto.plugin.ui.base.def.BackGroundDef;
    import com.tencent.morefun.naruto.plugin.ui.base.def.BackgroundGroupDef;
    import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
    import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
    import com.tencent.morefun.naruto.util.GameTip;
    
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.filters.BitmapFilterQuality;
    import flash.filters.DropShadowFilter;
    import flash.filters.GlowFilter;
    
    import base.ApplicationData;
    
    import def.PlotAssetDef;

    public class ScreenDialogUnit extends BasePlotUnit
    {
        private static const DIALOG_BOTTOM_OFFSET_Y:int     =   20;
        private static const AVATAR_SPACE_X:int             =   0;
        private static const AVATAR_SPACE_Y:int             =   5;
        private static const PLAYER_NAME_PATTERN:String     =   "(PLAYER)";
        private static const BLOODY_LEADER_X:int            =   0;
        private static const BLOODY_LEADER_Y:int            =   35;
        private static const MOUSE_ICON_X:int               =   850;
        private static const MOUSE_ICON_Y:int               =   70;
        private static const NAME_COLOR:String              =   "#F1F192";
        private static const CONTENT_COLOR:String           =   "#FFFFFF";

        private var _data:ScreenDialogUnitData;
        private var _ui:ScreenDialogUI;
        private var _avatar:Avatar;
        private var _container:Sprite;
        private var _speakTopFrameContainer:Sprite;
        private var _speakBottomFrameContainer:Sprite;

        public function ScreenDialogUnit(data:BasePlotUnitData)
        {
            super(data);

            _data = data as ScreenDialogUnitData;
            _container = PlotUtils.getPlotLayer();
			
			BackGround.createGroup(BackgroundGroupDef.NEW_PLOT_SCREEN_DIALOGUNIT);
        }

        override public function destroy():void
        {
            LayerManager.singleton.stage.removeEventListener(Event.RESIZE, onStageResize);
            LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK, onClick);

            if (_ui != null)
            {
                if (_ui.hasEventListener(MouseEvent.CLICK))
                    _ui.removeEventListener(MouseEvent.CLICK, onClick);

                if (_avatar != null && _ui.avatarContainer.contains(_avatar))
                {
                    _ui.avatarContainer.removeChild(_avatar);
                    _avatar.removeEventListener(Event.COMPLETE, onAvatarLoaded);
                    _avatar.filters = [];
                    _avatar.destroy();
                }

                _ui.nameText.filters = [];

                if (_container != null && _container.contains(_ui))
                    _container.removeChild(_ui);
            }
        }

        override public function play():void
        {
            if (_data == null)
            {
                GameTip.show(Const.NO_DATA_AVAILABLE);
                complete();
                return;
            }

            showDialog();
        }

        override public function complete():void
        {
            hideDialogFrames();

            super.complete();
        }

        private function showDialog():void
        {
            _ui = new ScreenDialogUI();
            _ui.mouseChildren = false;
            _ui.bg.visible = false;

            _avatar = new Avatar();
            _avatar.addEventListener(Event.COMPLETE, onAvatarLoaded);
            _avatar.filters = [this.avatarGlowFilter, this.avatarDropShadowFilter];
            _ui.avatarContainer.addChild(_avatar);

            _ui.nameText.filters = [this.nameTextGlowFilter];

            _ui.mouseIcon.x = MOUSE_ICON_X;
            _ui.mouseIcon.y = MOUSE_ICON_Y;

            updateName();
            updateContent();
            updatePosition();
            loadAvatar(_data.actorId);

            if (_container != null && (!_container.contains(_ui)))
                _container.addChild(_ui);

            LayerManager.singleton.stage.addEventListener(Event.RESIZE, onStageResize);
            LayerManager.singleton.stage.addEventListener(MouseEvent.CLICK, onClick);

            showDialogFrames();
        }

        private function showDialogFrames():void
        {
            if(_speakTopFrameContainer == null)
            {
//                tween = true;
                _speakTopFrameContainer = BackGround.createFrame(BackgroundGroupDef.NEW_PLOT_SCREEN_DIALOGUNIT, BackGroundDef.OLD_PLOT_SPEAK_TOP_FRAME);
                _speakTopFrameContainer.x = -_ui.x;
                _speakTopFrameContainer.y = -_ui.y;
                _ui.addChildAt(_speakTopFrameContainer, _ui.getChildIndex(_ui.avatarContainer) + 1);
            }
            
            if(_speakBottomFrameContainer == null)
            {
//                tween = true;
                _speakBottomFrameContainer = BackGround.createFrame(BackgroundGroupDef.NEW_PLOT_SCREEN_DIALOGUNIT, BackGroundDef.OLD_PLOT_SPEAK_BOTTOM_FRAME);
                _speakBottomFrameContainer.x = -_ui.x;
                _speakBottomFrameContainer.y = -_ui.y;
                _ui.addChildAt(_speakBottomFrameContainer, _ui.getChildIndex(_ui.avatarContainer) + 1);
            }
        }

        private function hideDialogFrames():void
        {
			BackGround.disposeGroup(BackgroundGroupDef.NEW_PLOT_SCREEN_DIALOGUNIT);
            
            _ui.removeChild(_speakTopFrameContainer);
            _ui.removeChild(_speakBottomFrameContainer);
            
            _speakTopFrameContainer = null;
            _speakBottomFrameContainer = null;
        }

        private function get avatarGlowFilter():GlowFilter
        {
            return new GlowFilter(0xFFFF99, 1, 5, 5, 8, BitmapFilterQuality.LOW, false, false);
        }

        private function get avatarDropShadowFilter():DropShadowFilter
        {
            return new DropShadowFilter(5, 0, 0x000000, 1, 5, 5, 0.46, BitmapFilterQuality.LOW, false, false);
        }

        private function get nameTextGlowFilter():GlowFilter
        {
            return new GlowFilter(0xFF0000, 1, 2, 2, 1, BitmapFilterQuality.LOW, false, false);
        }

        private function updateName():void
        {
            var name:String = getActorName(_data.actorId);

            if (name != null && name.indexOf(PLAYER_NAME_PATTERN) != -1)
                name = ApplicationData.singleton.selfInfo.name;

            _ui.nameText.htmlText = "<b><font color='" + NAME_COLOR + "'>" + name + "</font></b>";
        }

        private function updateContent():void
        {
            _ui.contentText.htmlText = "<font color='" + CONTENT_COLOR + "'>" + _data.content + "</font>";
        }

        private function onStageResize(event:Event):void
        {
            updatePosition();

            if (_speakTopFrameContainer != null)
            {
                _speakTopFrameContainer.x = -_ui.x;
                _speakTopFrameContainer.y = -_ui.y;
            }

            if (_speakBottomFrameContainer != null)
            {
                _speakBottomFrameContainer.x = -_ui.x;
                _speakBottomFrameContainer.y = -_ui.y;
            }
        }

        private function updatePosition():void
        {
            _ui.x = LayoutManager.stageWidth - _ui.bg.width >> 1;
            _ui.y = LayoutManager.stageHeight - _ui.bg.height - DIALOG_BOTTOM_OFFSET_Y;

            _ui.x += BLOODY_LEADER_X;
            _ui.y += BLOODY_LEADER_Y;
        }

        private function loadAvatar(actorId:uint):void
        {
            var cfg:ActorCfg = PlotUtils.getActorCfgById(actorId);
            var url:String;

            if (cfg != null)
            {
                url = PlotAssetDef.getAsset(PlotAssetDef.TYPE_DIALOG_AVATAR, cfg.resId, _data.avatarType);
                _avatar.load(url);
            }
        }

        private function getActorName(actorId:uint):String
        {
            var cfg:ActorCfg = PlotUtils.getActorCfgById(actorId);

            if (cfg != null)
                return cfg.name;
            else
                return Const.UNKNOWN;
        }

        private function onClick(event:MouseEvent):void
        {
            LayerManager.singleton.stage.removeEventListener(Event.RESIZE, onStageResize);
            LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK, onClick);

            complete();
        }

        private function onAvatarLoaded(event:Event):void
        {
            updateAvatarPos();
        }

        private function updateAvatarPos():void
        {
            if (_data == null)
                return;

            if (_data.avatarPos == ScreenDialogAvatarPos.LEFT)
                placeAvatarLeft();
            else if (_data.avatarPos == ScreenDialogAvatarPos.MIDDLE)
                placeAvatarMiddle();
            else if (_data.avatarPos == ScreenDialogAvatarPos.RIGHT)
                placeAvatarRight();
        }

        private function placeAvatarLeft():void
        {
            _avatar.x = _ui.bg.x + AVATAR_SPACE_X;
            _avatar.y = _ui.bg.y - _avatar.height + AVATAR_SPACE_Y;
        }

        private function placeAvatarMiddle():void
        {
            _avatar.x = _ui.bg.x + (_ui.bg.width - _avatar.width >> 1);
            _avatar.y = _ui.bg.y - _avatar.height + AVATAR_SPACE_Y;
        }

        private function placeAvatarRight():void
        {
            _avatar.x = _ui.bg.x + _ui.bg.width - AVATAR_SPACE_X - _avatar.width;
            _avatar.y = _ui.bg.y - _avatar.height + AVATAR_SPACE_Y;
        }
    }
}