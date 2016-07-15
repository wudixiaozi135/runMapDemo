package com.tencent.morefun.naruto.plugin.newplot.defs
{
    public class PlotUnitTypeDef
    {
		public static const DEMO:uint                       =   999;	//旁白
		
        public static const ACTOR_APPEAR:uint               =   100;    // actor出场（并初始化actor）
        public static const ACTOR_DISAPPEAR:uint            =   101;    // actor离场（并销毁actor）
        public static const ACTOR_DIRECTION_CHANGE:uint     =   102;    // 改变actor方向
        public static const ACTOR_MOVE:uint                 =   103;    // 移动actor
        public static const ACTOR_ACTION:uint               =   104;    // actor表演特殊动作

        public static const BUBBLE_MIND:uint                =   200;    // actor头顶内心独白框
        public static const BUBBLE_DIALOG:uint              =   201;    // actor头顶对话框
        public static const SCREEN_DIALOG:uint              =   202;    // 宽屏对白
        public static const SMILEY_DIALOG:uint              =   203;    // actor头顶冒表情
		
		public static const ASIDE:uint                      =   300;	//旁白
		public static const SHAKE:uint                      =   301;	//震动
		public static const BLACKASIDE:uint                 =   302;	//动画背景的旁边
		public static const OLDPLOT:uint                    =   303;	//调用老剧情
		
		public static const CAMERA_MOVE:uint                =	  401;	// 移动镜头
		public static const BATTLE:uint					   =  501;	// 移动镜头
		
		public static const BLACK_SCREEN:uint					   =  601;	// 黑掉背景

        public function PlotUnitTypeDef()
        {
        }
    }
}