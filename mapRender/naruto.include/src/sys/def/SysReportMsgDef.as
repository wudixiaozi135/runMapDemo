package sys.def
{
    public class SysReportMsgDef
    {
        // 第一次loading的过程
        public static const SOCKET_CONNECTED:int                    =   10001;  // socket已连接（主loading14%）
        public static const GAME_LOADING_PERCENT_20:int             =   10002;  // 主loading20%
        public static const GAME_LOADING_PERCENT_40:int             =   10003;  // 主loading40%
        public static const GAME_LOADING_PERCENT_60:int             =   10004;  // 主loading60%
        public static const GAME_LOADING_PERCENT_80:int             =   10005;  // 主loading80%
        public static const GAME_LOADING_COMPLETE:int               =   10010;  // 主loading完成

        //public static const PLAY_NEWBIE_ANIMATION:int               =   1;      // 1.加载完进入flash（开始播放新手动画）
        //public static const SKIP_NEWBIE_ANIMATION:int               =   2;      // 2.点击跳过新手（九尾）动画
        //public static const START_NEWBIE_BATTLE:int                 =   3;      // 3.看完flash进入定制战斗
        //public static const FINISH_NEWBIE_BATTLE:int                =   4;      // 4.完成定制战斗
        //public static const FINISH_NPC_TALKING:int                  =   5;      // 5.三代火影放完
        //public static const OPEN_NINJA_SELECT_PAGE:int              =   6;      // 6.注册界面动画展示完
        //public static const FINISH_NINJA_SELECT:int                 =   7;      // 7.点确定（注册名字）
        //public static const ENTER_FIRST_SCENE:int                   =   8;      // 8.loading 完进入主场景
        //public static const NARUTO_JOINED:int                       =   11;     // 11.成功拖上鸣人

		//STEP:01
		public static const ENTER_GAME_CONTAINER_HTML:uint	= 20; // 进入游戏容器页面
		//STEP:02
		public static const iMSDK_LOGIN_PASS:uint			= 35; // iMSDK登陆成功
		public static const iMSDK_LOGIN_FAIL:uint			= 36; // iMSDK登陆失败
		//STEP:03
		public static const QUERY_SERVER_INFO_PASS:uint		= 25; // 拉取服务器IP端口信息成功
		public static const QUERY_SERVER_INFO_FAIL:uint		= 26; // 拉取服务器IP端口信息失败
		//STEP:04
		public static const FP_PLUGIN_CHECK_PASS:uint		= 30; // FP插件启动成功
		public static const FP_PLUGIN_CHECK_FAIL:uint		= 31; // FP插件启动失败
		//STEP:05
		public static const GAME_LOADING_START:uint			= 40; // 开始游戏加载
		//STEP:06
		public static const GAME_LOADING_TO_SERVER:uint		= 45; // 服务器模块加载完成
		//STEP:07
		public static const SERVER_CONNECT_PASS:uint		= 50; // 服务器连接成功
		public static const SERVER_CONNECT_FAIL:uint		= 51; // 服务器连接失败
		//STEP:08
		public static const SKEY_PTLOGIN_PASS:uint			= 60; // SKEY身份验证成功
		public static const SKEY_PTLOGIN_FAIL:uint			= 61; // SKEY身份验证失败
		//STEP:09
		public static const ROLE_NOT_EXIST:uint				= 65; // 角色不存在
		public static const START_NPC_TALKING:uint			= 66; // 开始三代火影对话
		public static const ENTER_REGISTER_VIEW:uint		= 70; // 进入角色注册页面
		//STEP:10
		public static const CONFIRM_TO_CREATE_ROLE:uint		= 75; // 点击确认注册角色
		public static const CREATE_ROLE_PASS:uint			= 80;	// 创建角色成功
		public static const CREATE_ROLE_FAIL:uint			= 81;	// 创建角色失败
    }
}