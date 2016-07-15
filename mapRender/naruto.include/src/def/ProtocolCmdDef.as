package def
{

	public class ProtocolCmdDef
	{
		public static const LOGIN:uint = 0x00030001;
		public static const PT_LOGIN:uint = 0x00050001;

        public static const SYS_REPORT:uint                     =   0x0003D401;     // 系统数据上报

        // 服务器通知
        public static const NOTIFY_AUTO_POPUP:uint              =   0x00100003;     // 自动强弹通知
        public static const NOTIFY_HUD_ICON_FLASH:uint          =   0x00100004;     // 主场景按钮闪烁通知
		public static const NOTIFY_FUNC_NEED_UPADTE:uint		  =	0X00030608;		// 功能刷新推送协议
		public static const CMD_SERVER_CMD_NOTIFY:uint          = 0X00030609; //服务器通知客户端做某事


        // 背包
        public static const GET_ITEM_LIST:uint                  =   0x00030024;     // 拉取背包
        public static const EXPAND_ITEM_CELLS:uint              =   0x00030025;     // 扩展背包格
        public static const SELL_ITEM:uint                      =   0x00030026;     // 出售背包物品
        public static const DESTROY_ITEM:uint                   =   0x00035003;     // 摧毁背包物品
        public static const USE_ITEM:uint                       =   0x00030027;     // 使用背包物品
        public static const NOTIFY_ITEM_CHANGED:uint            =   0x00030028;     // 背包物品变更
        public static const SPLIT_CARD_ITEM:uint                =   0x00030029;     // 分解卡牌

        //装备
        public static const GET_EQUIPMENT_LIST:uint             =   0x00030801;     // 拉取装备列表
        public static const EQUIP_OPERATION:uint                =   0x00030802;     // 装备/卸下/自动最优装备
        public static const UPGRADE_EQUIPMENT:uint              =   0x00030803;     // 装备强化/装备升阶
        public static const GEM_OPERATION:uint                  =   0x00030804;     // 勾玉镶嵌/勾玉卸下
        public static const UPGRADE_GEM:uint                    =   0x00030805;     // 勾玉合成
        public static const GET_FORGE_PROP_INFO:uint            =   0x00030806;     // 获取装备精炼信息
        public static const FORGE_PROP:uint                     =   0x00030807;     // 精炼装备
        public static const AUTO_FORGE_PROP:uint                =   0x00030808;     // 自动精炼装备
        public static const GET_FORGE_QUALITY_INFO:uint         =   0x00030809;     // 获取装备洗炼信息
        public static const FORGE_QUALITY:uint                  =   0x0003080A;     // 洗炼装备
		public static const CMD_ZONE_DECOMPOSE_JADE:uint  		=   0X0003080C; //宝石分解
        // 忍者考试（千重楼）
        public static const GET_EXAM_INFO:uint                  =   0x00036002; //获取信息
        public static const RESET_EXAM_INFO:uint                =   0x00036003; //重置
        public static const EXAM_RAIDS:uint                     =   0x00036004; //考试扫荡
        public static const EXAM_CANCEL_RAIDS:uint              =   0x00036005; //取消考试扫荡
		public static const EXAM_WIPE_OUT_NOTIFY:uint			=	0x00036006; // 忍者考试扫荡推送
        public static const GET_TOTAL_REWARDS:uint              =   0x00036007; //获取累计奖励
        public static const EXAM_REVIVE:uint                    =   0x00036008; //挑战失败复活
        public static const EXAM_GET_RELIVE_COST:uint           =   0x00036009; //获取忍者考试花费
        public static const EXAM_CLEAR_UP_WIPEOUT_INFO:uint     =   0x00036102; //清理忍者考试收益列表
		public static const EXAM_GET_RANK_INFO:uint				=	0x00036104; //获取忍考豪杰榜
        // 基地
        public static const ENTER_MY_BASE:uint                      =   0x00080001; //进入己方基地
        public static const LEAVE_MY_BASE:uint                      =   0x00080002; //离开己方基地
        public static const SEARCH_OTHER_BASE:uint                  =   0x00080003; //匹配敌方基地
        public static const ATTACK_OTHER_BASE_BUILDING:uint         =   0x00080004; //攻击敌方建筑物
//        public static const UPDATE_BASE_NINJA_NOTIFY:uint           =   0x00080005; //基地忍者（SERVER用）
        public static const UPGRADE_MY_BASE_BUILDING:uint           =   0x00080006; //升级我方基地建筑
        public static const HARVEST_MY_BASE_TREASURE:uint           =   0x00080007; //收获我方基地金钱
        public static const FINISH_ATTACK_OTHER_BASE:uint           =   0x00080008; //结束攻击敌方基地
        public static const START_ATTACK_OTHER_BASE:uint            =   0x00080009; //开始进攻敌方基地
        public static const UPDATE_BASE_NOTIFY:uint                 =   0x0008000A; //基地更新通知
        public static const FINISH_ATTACK_OTHER_BASE_NOTIFY:uint    =   0x0008000B; //基地结束通知
        public static const GET_BASE_DETAIL_INFO:uint               =   0x0008000C; //基地详细情报
        public static const REFRESH_MY_BASE:uint                    =   0x0008000D; //刷新我方基地
        public static const COUNTERATTACK_OTHER_BASE:uint           =   0x0008000E; //反击

        // 各种商店
        public static const RANKING_STORE_GET_INFO:uint                         =   0x00034201;     // 获取商店信息
        public static const RANKING_STORE_BUY_ITEM:uint                         =   0x00034202;     // 购买商店物品
        public static const RANKING_STORE_REFRESH_ITEMS:uint                    =   0x00034203;     // 刷新商店物品
        public static const RANKING_STORE_SPLIT_EXTRA_NINJA_FRAGMENTS:uint      =   0x00035009;     // 分解多余的五星忍者碎片

        // 签到
        public static const SIGNIN_GET_INFO:uint                =   0x00100111;     // 拉取签到信息
        public static const SIGNIN_SIGN_IN:uint                 =   0x00100112;     // 签到
        public static const SIGNIN_DELAY_SIGN_IN:uint           =   0x00100113;     // 补签
        public static const SIGNIN_GET_REWARD:uint              =   0x00100114;     // 签到领奖
        public static const SIGNIN_GET_ALL_REWARDS:uint         =   0x00100115;     // 一键领取全部签到奖励

        public static const CMD_ZONE_POPULAR_FORMATION_QUERY:uint       =   0x00030060;     //查询或再换一个流行阵容  ProtoPopularFormationQueryReq ProtoPopularFormationQueryRsp
        public static const CMD_ZONE_POPULAR_FORMATION_CHOOSE:uint      =   0x00030061;     //选择或取消只显示自己拥有的阵容 ProtoPopularFormationChooseReq ProtoPopularFormationChooseRsp
        public static const CMD_ZONE_POPULAR_FORMATION_USE:uint         =   0x00030062;     //一键使用流行阵容 EmptyMessage ProtoPopularFormationUseRsp

        public static const CMD_NEW_YEAR_QUERY:uint             =   0x00100200;     // 查询 EmptyMessage ProtoNewYearQueryRsp
        public static const CMD_NEW_YEAR_AWARD:uint             =   0x00100201;     // 领礼包 ProtoNewYearAwardReq ProtoNewYearAwardRsp
        public static const CMD_NEW_YEAR_REPORT:uint            =   0x00100202;     // 上报 ProtoInnerCommonReportReq
        public static const CMD_NEW_YEAR_NOTIFY:uint            =   0x00100203;     // 消费通知
        public static const CMD_NEWEST_QUERY:uint               =   0x00100204;     // 最新活动页签 ProtoActivityNewestQueryRsp
        public static const CMD_NEWEST_NOTIFY:uint              =   0x00100205;     // 最新活动页签 ProtoActivityNewestQueryRsp
		
		public static const CMD_ACTIVITY_RECHARGE_GIFT_QUERY:uint = 0x00100270; //查询充值返利信息
		public static const CMD_ACTIVITY_RECHARGE_GIFT_AWARD:uint = 0x00100271; //领取充值返利礼包
		public static const CMD_ACTIVITY_CONSUME_GIFT_QUERY:uint = 0x00100280;  //查询消费返利信息
		public static const CMD_ACTIVITY_CONSUME_GIFT_AWARD:uint = 0x00100281;  //领取消费返利礼包
		public static const CMD_ACTIVITY_NEW_YEAR_WISH_QUERY:uint = 0x001002c0;  //查询 EmptyMessage ProtoNewYearWishQueryRsp
		public static const CMD_ACTIVITY_NEW_YEAR_WISH_AWARD:uint = 0x001002c1;  //领奖 ProtoNewYearWishAwardReq ProtoNewYearWishAwardRsp
		public static const CMD_ACTIVITY_VALENTINE_QUERY:uint        = 0x001002d0;  //查询 EmptyMessage ProtoValentineQueryRsp
		public static const CMD_ACTIVITY_VALENTINE_TASK_QUERY:uint    = 0x001002d1;  //查询 EmptyMessage ProtoValentineTaskQueryRsp
		public static const CMD_ACTIVITY_VALENTINE_GIVE:uint          = 0x001002d2;  //赠送 ProtoValentineGiveReq ProtoValentineGiveRsp
		public static const CMD_ACTIVITY_VALENTINE_AWARD:uint         = 0x001002d3;  //领奖 ProtoValentineAwardReq ProtoValentineAwardRsp
		
		// 新年忍者活动
		public static const CMD_ACTIVITY_NEW_YEAR_NINJA_QUERY:uint = 0x001002b0; // 新年忍者查询
		public static const CMD_ACTIVITY_NEW_YEAR_NINJA_CATCH:uint = 0x001002b1; // 新年忍者捞鱼
		public static const CMD_ACTIVITY_NEW_YEAR_NINJA_EXCHANGE:uint = 0x001002b2; // 新年忍者积分兑换

        // 最新活动-充值返利
        public static const CMD_ACTIVITY_GOLDSAVE_FANLI_QUERY:uint              =   0x00100230;  //查询 EmptyMessage ProtoGoldsaveFanliQueryRsp
        public static const CMD_ACTIVITY_GOLDSAVE_FANLI_AWARD:uint              =   0x00100231;  //领礼包 EmptyMessage ProtoGoldsaveFanliAwardRsp

		//战袍升阶活动
		public static const CMD_ACTIVITY_TABARD_STEP_UP_QUERY_REQ:uint			=	0x00100480;		// 活动查询 ProtoTabardStepUpQueryReq
		public static const CMD_ACTIVITY_TABARD_STEP_UP_GET_AWARD_REQ:uint		=	0x00100481;		// 领取奖励 ProtoTabardStepUpGetAwardReq 
		/**
		 * 新年抽奖
		 */
		public static const CMD_NEW_YEAR_LOTTERY_QUERY:uint         = 0x001001f0;  //查询 EmptyMessage ProtoNewYearLotteryQueryRsp
		public static const CMD_NEW_YEAR_LOTTERY_AWARD:uint         = 0x001001f1;  //领礼包 ProtoNewYearLotteryAwardReq ProtoNewYearLotteryAwardRsp

		//角色创建
		public static const CMD_GET_ROLE:uint                             = 0x00034001; //获取在这个服务器的角色
		public static const CMD_RECOMMEND_NAME:uint                       = 0x00061001; //注册的时候，获取系统推荐名字
		public static const CMD_REGISTER_ROLE:uint                        = 0x00034003; //注册角色
		public static const CMD_GETENCRYPT_LIST:uint 					  = 0x00010001; //获取加密列表
		
		//用户相关
		public static const GET_USER_INFO:uint = 0x00030002;
        public static const GET_OTHER_USER_INFO:uint = 0x00035002;
		public static const REQ_MOVE_TO:uint = 0x00030003;
		public static const NTF_MOVE:uint = 0x00030004;
		public static const GET_SELF_DETAIL:uint = 0x00030005;
		public static const GET_PLAYER_VIEW:uint = 0x0003001F;//获取玩家的视野列表
		public static const USER_DISPLAY_STATE_CHANGE_NOTIFY:uint = 0x00030601; //通知玩家的显示状态更变
		public static const UPDATE_SELF_INFO:uint = 0x00030602;//玩家自身状态变更
		public static const NINJA_INFO_CHANGE_NOTIFY:uint = 0x00031201;//玩家自身状态变更
		public static const PLAYER_GOHOME:uint				= 0x00035001;//请求回城
		public static const IMPORTANT_OPERATION_NOTIFY:uint = 0x00030606; // 重要操作提示
		public static const BUY_STRENGTH:uint = 0X00030703; //购买体力
		public static const USER_GET_TRANSFIGURATION_INFO:uint       = 0x0003D301; //获取变身信息
		public static const USER_TRANSFIGURE:uint                    = 0x0003D302; //变身
		public static const PLAYER_TODO_NOTIFY:uint         = 0x00035007; //通知玩家去做某件事
        public static const CMD_ZONE_RENAME:uint                =   0x00035008; //改名
        public static const CMD_ZONE_GUILD_RENAME:uint          =   0x00030a27; //组织改名
        public static const CMD_ZONE_CHANNEL_INFO_NOTIFY:uint      = 0x00031213;   //渠道信息通知 ProtoExtraChannelInfo
		public static const CMD_ZONE_SECONDARY_PASSWORD:uint           = 0x00035010; //二级密码
		
		//出战
		public static const CREW_MOOD_GET_UPDATE_INFO:uint = 0x00030201;
		public static const CREW_MOOD_UPDATE_OPTION:uint = 0x00030202;
		public static const CREW_MOOD_CONFIRM_OPTION:uint = 0x00030203;
		public static const CREW_MOOD_GET_MAJOR_OPTION:uint = 0x00030204;
		public static const CREW_MOOD_CHANGED_MAJOR_MOOD_INDEX:uint = 0x00030205;
		
		//转职
		public static const CREW_TRANSFER_ROLE_DATA:uint = 0x0003D303;
		public static const CREW_TRANSFER_ROLE:uint = 0x0003D304;
		// 隐藏合服后大区ID显示
		public static const CREW_HIDE_ZONE_ID:uint = 0x00031801; //
		
//		//技能相关
//		public static const GET_SKILL_INFO:uint = 0x0003000E;
//		public static const LEARN_SKILL:uint = 0x0003000F;
//		public static const OPERATE_SKILL:uint = 0x00030010;
		
		//阵法相关
		public static const LEARN_FORMATION:uint = 0x00030006;
		public static const UPGRADE_FORMATION:uint = 0x00030007;
		public static const ACTIVE_AWAKEN_SKILL:uint = 0x00030009;
		public static const SET_FORMATION_EYE:uint = 0x0003000A;
		public static const CHOOSE_FORMATION:uint = 0x00030008;
		public static const OPEATE_FORMATION:uint = 0x0003000B;
		
		//战斗相关
		public static const FIGHT_START:uint = 0x00030011;
		public static const KACHA_SKILL:uint = 0x00030012;
		public static const TINY_ROUND:uint = 0x00030013;
		public static const INSERT_TINY_ROUND:uint = 0x0003004E;
		public static const ROUND_SYNC:uint = 0x00030014;
		public static const FIGHT_OVER:uint = 0x00030015;
		public static const KACHA_SKILL_BROADCAST:uint = 0x00030016;
		public static const PVP_FIGHT_CHALLENGE_NOTIFY:uint = 0x00030017;
		public static const PVP_FIGHT_START_NOTIFY:uint = 0x00030018;
		public static const FIGHT_ERROR_NOTIFY:uint = 0x00030019;
		public static const PVP_INSERT_FIGHT:uint = 0x0003003B;
		public static const PVP_INSERT_FIGHT_RES_LOAD:uint = 0x0003003C;
		public static const FIGHT_DELAY_START_NOTIFY:uint = 0x0003003D;
		public static const FIGHT_RES_LOADED:uint = 0x0003001A;
		public static const BATTLE_SCRIPT_ACK:uint = 0x0003001B;
		public static const BATTLE_CHANGE_FORMATION_ACK:uint = 0x0003001C;
		public static const BATTLE_FIGHT_SUMMON_CONTRACT_PET:uint = 0x0003001D;
		public static const BATTLE_PLAYER_RECONNECT:uint = 0x0003003F;
		public static const BATTLE_PLAYER_DISCONNECT:uint = 0x0003003E;
		public static const BATTLE_TIME_REPORT:uint = 0x00030040;
		public static const BATTLE_SPEED_UP:uint = 0x0003004F;//战斗加速
		public static const OTHER_PLAYER_RES_COMPLETE:uint = 0x00030050;
		public static const BATTLE_TRUSTEE:uint = 0x00030051;//战斗托管
		public static const BATTLE_TRUSTEE_NOTIFY:uint = 0x00030052;//战斗托管状态变化的通知
		public static const BATTLE_WATCH_NOTIFY:uint = 0x00030053;//观战的通知
		public static const BATTLE_WATCH_READY_ACK:uint = 0x00030055;//观战的玩家切入战斗,加载战斗资源
		public static const BATTLE_WATCH_TRANSFORM_NOTIFY:uint = 0x00030054;//观战的玩家切入战斗,加载战斗资源
		public static const BATTLE_CLOSE_TIPS:uint = 0x00030048;//点了直接开始战斗下发的广播
		public static const BATTLE_GIVE_UP:uint = 0x00030056;//投降
		public static const BATTLE_GIVE_UP_BROADCAST:uint = 0x00030057;//投降广播
		public static const BATTLE_OVER_CONFIRM:uint = 0x00030058;//投降广播
		public static const BATTLE_RES_LOAD_PROCESS_NOTIFY:uint = 0x00030059;//观战切战斗时,给所有参与战斗玩家的加载资源进度通知
		public static const SPPED_UP_NOTIFY:uint = 0x0003005A;//加速通知
		
		//副本相关
		public static const GET_DUNGEON_LIST:uint = 0x00030101;
		public static const BEGIN_DUNGEON:uint = 0x00030102;
		public static const GET_DUNGEON_BASE_INCOME:uint = 0x00030103;
		public static const QUIT_DUNGEON:uint = 0x00030104;
		public static const DUNGEON_FINISH:uint = 0x00030105;
		public static const REQUEST_REVIVE:uint = 0x00030106;  //请求复活
		public static const WIPE_OUT_DUNGEON:uint = 0x00030107; //副本扫荡
		public static const CANCEL_WIPE_OUT_DUNGEON:uint = 0x00030108; //取消副本扫荡
		public static const FINISH_WIPE_OUT_DUNGEON_IMMEEDIATELY:uint = 0x00030109; //立即完成扫荡
		public static const DUNGEON_WIPE_OUT_NOTIFY:uint = 0x00030110; //扫荡通知
		public static const GET_DUNGEON_WIPE_OUT_INFO:uint = 0x00030111; //获取扫荡信息
		public static const DUNGEON_GET_RELIVE_COST:uint   = 0x00030114; //获取副本复活花费
		public static const DUNGEON_CLEAN_UP_WIPE_OUT:uint = 0x00030115; // 清理副本扫荡奖励信息
		public static const GET_WIPE_OUT_STATE:uint        = 0x00030116; // 扫荡信息查询接口
		public static const DUNGEON_RESET_PASS_COUNT:uint  = 0x00030117; // 重置精英副本通关次数
		
		
		//世界Boss
		public static const CMD_WORLD_BOSS_GET_STATUS:uint            = 0x0003B001;//拉取特定的世界boss信息
		public static const CMD_WORLD_BOSS_REVIVAL:uint               = 0x0003B002;//复活请求&回包
		public static const CMD_WORLD_BOSS_GET_LIST:int              = 0x0003B003;//拉取世界boss列表
		public static const CMD_WORLD_BOSS_FAINT_NOTIFY:uint          = 0x0003B004;//气绝通知
		public static const CMD_WORLD_BOSS_ACTIVITY_OVER_NOTIFY:uint  = 0x0003B005;//活动结束通知
		public static const CMD_WORLD_BOSS_ADD_BUFF:uint              = 0x0003B006;//加buff
		public static const CMD_WORLD_BOSS_KICK_OUT_NOTIFY:uint       = 0x0003B00A;//活动结束,踢出世界boss场景通知
		
		//时来运转
		public static const CMD_ACTIVITY_LUCK_COME_QUERY_REQ:uint = 0x00100460;						// 活动查询 ProtoLuckComeQueryReq ProtoLuckComeRsp
		public static const CMD_ACTIVITY_LUCK_COME_OPEN_BOX_REQ:uint = 0x00100461;					// 开启轮盘 ProtoLuckComeOpenBoxReq ProtoLuckComeRsp
		public static const CMD_ACTIVITY_LUCK_COME_EXCHANGE_REQ:uint = 0x00100462;					// 奖品兑换 ProtoLuckComeExchangeReq ProtoLuckComeRsp

		
		//场景相关
		public static const CHANGE_SCENE:uint = 0x0003001E;//使用传送门
		public static const WORLD_CHANGE_DYNAMIC_SCENE:uint = 0x0003D607; //进入、离开动态场景
		
		//NPC相关
		public static const GET_NPC_LOCATION:uint = 0x00030020;;
		public static const NPC_LOCATION_NOTIFY:uint = 0x00030021;
		
		public static const CMD_ZONE_INTERACT_NPC:uint	= 0x00030022;//和交互NPC发生交互
		public static const CMD_ZONE_INTERACT_AWARD:uint	= 0x00030023;//交互NPC获得的奖励
		public static const MAP_OBSTACLE:uint = 0x00030043;    //地图障碍请求，包括攀岩，碎岩，封印，幻术
		public static const MAP_OBSTACLE_NOTIFY:uint = 0x00030044;//地图障碍通知，包括攀岩，碎岩，封印，幻术
		
		public static const CMD_ZONE_MAP_PITFALL_REQUEST:uint	= 0x00030041;//地图机关请求
		public static const CMD_ZONE_MAP_PITFALL_NOTIFY:uint	= 0x00030042;//地图机关通知
		
		public static const CMD_ZONE_TASK_TRIGGER:uint = 		0x00030030;//和任务触发器交互
		
		public static const CMD_ZONE_STORY_TRIGGER_BEGIN:uint			= 0x00030901; //和剧情触发器开始交互
		public static const CMD_ZONE_STORY_TRIGGER_END:uint			= 0x00030902; //和剧情触发器开始结束
		public static const CMD_ZONE_NPC_REWARD_NOTIFY:uint           = 0x00030903; //NPC交互（包括战斗等行为）得到的奖励
		
		//天赋
		public static const MAJOR_GET_TALENT_PAGES:uint 			= 0x00030031; // 拉取天赋页
		public static const MAJOR_SET_TALENT_PAGES:uint			= 0x00030032; // 设置天赋页
		public static const MAJOR_SET_TALENT_PAGE_INDEX:uint		= 0x00030033; // 设置当前天赋页、增加天赋页
		public static const MAJOR_TALENT_PAGES_NOTIFY:uint		= 0x00035030; // 获取天赋,通知  ProtoGetTalentResponse
		
		//任务相关
		public static const TASK_GET_ALL_TASK_INFO:uint 			= 0x00030301;
		public static const TASK_GET_TASK_INFO_BY_TYPE:uint 		= 0x00030302;
		public static const TASK_GET_TASK_INFO:uint 				= 0x00030303;
		public static const TASK_RECEIVE_TASK:uint 				= 0x00030304;
		public static const TASK_GET_TASK_REWARD:uint 			= 0x00030305;
		public static const TASK_GIVEUP_TASK:uint 				= 0x00030306;
		public static const TASK_NEW_TASK_NOTIFY:uint 			= 0x00030307;
		public static const TASK_UPDATE_TASK_INFO_NOTIFY:uint 	= 0x00030308;
		public static const TASK_GET_HISTORY:uint					= 0x00030309;
		public static const TASK_IMMEDIATELY_COMPLETE:uint		= 0x0003030A;
		public static const TASK_REFRESH_COUNT_NOTIFY:uint		= 0x0003030B;//任务计数更新通知，完成次数、刷新时间等
		public static const TASK_REFRESH_TASK:uint 				= 0x0003030C;
		public static const TASK_SYNC_NOTIFY:uint					= 0x0003030D;//根据类型来全量刷新任务
		public static const TASK_GET_PRATICE_TASK_INFO:uint		= 0x0003030e;//查询忍者修行状态
		public static const ARENA_TASK_DOWN_GRADE:uint		= 0x0003030f;//降低竞技场任务等级
		public static const TASK_GET_TASK_REWARD_NOTIFY:uint		= 0x00030312;
		
		//忍者仓库
		public static const CMD_ZONE_CARRY_NINJA:uint 			= 0x00030034; // 携带忍者到背包
		public static const CMD_ZONE_TAKE_BACK_NINJA:uint 		= 0x00030035; // 从背包取回忍者
		public static const CMD_ZONE_GET_NINJA_STORAGE:uint		= 0x00030036; // 拉取忍者仓库
		public static const CMD_ZONE_GET_NINJA_PACKAGE:uint     = 0x00030000; // 拉取忍者背包
		public static const CMD_ZONE_GET_NINJA_INFO:uint        = 0x00030037; //获取忍者详细信息
		public static const CMD_ZONE_STRENGTHEN_NINJA:uint      = 0x00030038; //强化忍者
		public static const CMD_ZONE_AWAKE_NINJA:uint           = 0x00030039; //觉醒忍者
		public static const CMD_ZONE_ASSEMBLE_NINJA:uint        = 0x0003003A; //集结忍者
		
		//卡牌
		public static const CARD_SWALLOW:uint = 0x00030401; //卡牌吞噬
		
		
		//组队
		public static const TEAM_CREATE:uint						= 0x00030501; //创建队伍
		public static const TEAM_INVITE_MEMBER:uint				= 0x00030502; //邀请队员
		public static const TEAM_INVITE_MEMBER_NOTIFY:uint		= 0x00030503; //邀请队员 通知
		public static const TEAM_JOIN:uint						= 0x00030504; //加入队伍
		public static const TEAM_JOIN_NOTIFY:uint					= 0x00030505; //加入队伍 通知
		public static const TEAM_BAN_MEMBER:uint					= 0x00030506; //T掉队员
		public static const TEAM_BAN_MEMBER_NOTIFY:uint			= 0x00030507; //T掉队员 通知
		public static const TEAM_CHANGE_CAPTAIN:uint				= 0x00030508; //更换队长
		public static const TEAM_CHANGE_CAPTAIN_NOTIFY:uint		= 0x00030509; //更换队长 通知
		public static const TEAM_EXIT:uint						= 0x0003050a; //退出队伍
		public static const TEAM_EXIT_NOTIFY:uint					= 0x0003050b; //退出队伍 通知
		public static const TEAM_DISSOLUTION:uint					= 0x0003050c; //解散队伍
		public static const TEAM_DISSOLUTION_NOTIFY:uint			= 0x0003050d; //解散队伍 通知
		public static const TEAM_MEMBER_AFK:uint					= 0x0003050e; //队员暂离队伍
		public static const TEAM_MEMBER_AFK_NOTIFY:uint			= 0x0003050f; //队员暂离队伍 通知
		public static const TEAM_MEMBER_BACK:uint					= 0x00030510; //队员归队
		public static const TEAM_MEMBER_BACK_NOTIFY:uint			= 0x00030511; //队员归队 通知
		public static const TEAM_GET_TEAM_INFO:uint				= 0x00030512; //获取队伍信息
		public static const TEAM_GET_TEAM_INFO_LIST:uint			= 0x00030513; //获取队伍列表
		public static const TEAM_MEMBER_STATUE_CHANGE:uint		= 0x0003050e; //队员状态更改
		public static const TEAM_MEMBER_STATUE_CHANGE_NOTIFY:uint	= 0x0003050f; //队员状态更改 通知
		public static const TEAM_MEMBER_POS_UPDATE:uint = 0xffffffff;//调整队员站位
		public static const TEAM_MEMBER_POS_UPDATE_BROADCAST:uint = 0x0003000D;//调整队员站位广播
		
		public static const TEAM_CHANGE_MEMBER_POS:uint			= 0X00030517; //更换队伍玩家的位置
		public static const TEAM_INFO_CHANGE_NOTIFY:uint		= 0X00030518; //队伍信息变更通知

		public static const TEAM_MEMBER_TO_DO_NOTIFY:uint = 0X00030514; //队伍成员去做某件事
		public static const TEAM_MEMBER_SYNC:uint         = 0X00030515; //队伍成员状态同步
		public static const TEAM_MEMBER_SYNC_NOTIFY:uint  = 0X00030516; //队伍的所有成员的状态
		
		public static const TEAM_RESPOND_INVITE_MEMBER:uint = 0x00030519;//应答组队邀请
		public static const TEAM_SELF_TEAM_INFO_CHANGE_NOTIFY:uint  = 0X0003051c; //玩家自己所在队伍发生变化的通知
		
		public static const TEAM_UPDATE_TEAM_INFO:uint = 0x0003051a;//修改组队信息
		public static const TEAM_UPDATE_PLAYER_TEAM_INFO:uint = 0X0003051d;//修改个人的组队信息
		//组队副本
		public static const TEAM_MATCH_DUNGEON:uint					= 0x00030112; //匹配组队副本
		public static const TEAM_MATCH_DUNGEON_NOTIFY:uint			= 0x00030113; //匹配组队副本
		public static const TEAM_MATCH_DUNGEON_ASSEMBLE_NOTIFY:uint	= 0X0003051b; //系统发起的组队，成功后下发该通知
		
		//聊天
		public static const CHAT:uint = 0X00030701;//聊天 
		public static const CHAT_NOTIFY:uint = 0X00030702;//通知
		
		//商城系统::卡包
		public static const MALL_CARD_PACKAGE_TAB_GET_PACKAGES:uint		= 0x00032001; // 获取卡片信息
		public static const MALL_CARD_PACKAGE_TAB_QUILT_PACKAGE:uint	= 0x00032002; // 抽取卡片
		public static const MALL_CARD_PACKAGE_TAB_NOTIFY:uint			= 0x00032003; // 轮播广告
		public static const MALL_CARD_PACKAGE_TAB_GET_PACKAGES_BY_TYPE:uint			= 0x00032004; // 获取卡片信息
		
		//热点忍者抽卡
		public static const CARD_PACKAGE_GET_HOT_NINJA_INFO:uint = 0x00032011; // 获取热点忍者信息
		public static const CARD_PACKAGE_QUILT_HOT_NINJA:uint = 0x00032012; // 热点忍者抽卡
		public static const CARD_PACKAGE_RESET_HOT_NINJA:uint = 0x00032013; // 重置热点忍者
		public static const CARD_PACKAGE_NOTIFY_HOT_NINJA_UPATE:uint = 0x00032014; // 奖池变更通知
		
		//神秘宝箱抽卡
		public static const CARD_PACKAGE_GET_MYSTERY_NINJA:uint = 0x00032051;
		public static const CARD_PACKAGE_QUILT_MYSTERY_NINJA:uint = 0x00032052;
		public static const CARD_PACKAGE_CHECK_CHEST_OPEN:uint = 0x00032053;
		//商城系统::卡牌合成
		public static const MALL_COMPOSE_TAB_GET_CARDS:uint		= 0x0003A004;		// 获取合成卡牌列表
		public static const MALL_COMPOSE_TAB_COMPOSE_CARD:uint	= 0x0003A003;		// 合成单张卡牌
		public static const MALL_COMPOSE_ROLL:uint	= 0x00035012;		// 合成卷轴
		
		
		//商城
		/**
		 *获取商城基本物品信息 
		 */		
		public static const CS_SHOP_GETSHOPINFO:uint = 0x0003A005 ;
		/**
		 *购买商城道具 
		 */		
		public static const CS_SHOP_BUYITEM:uint = 0x0003A001 ;
		
		//通知
        public static const CMD_ZONE_SYSTEM_NOTIFY:uint             =   0x00030603; //系统通知
        public static const CMD_ZONE_NINJA_LEVEL_UP_NOTIFY:uint     =   0x00030604; //忍者升级通知
		
		//忍者系统::忍者仓库
		public static const NINJA_GET_NINJA_TROOP:uint     		= 0x00031301; // 拉取小队编成
		public static const NINJA_GET_NINJA_INFO:uint      		= 0x00031302; // 获取指定忍者详细信息
		public static const NINJA_GET_STRENGTHEN_LIST:uint    	= 0x00031701; // 获取可以被强化的忍者列表
		public static const NINJA_GET_WAKE_LIST:uint      		= 0x00031304; // 获取可以被觉醒的忍者列表
		public static const NINJA_UPGRADE_NINJA_STAR_LEVEL:uint = 0x00031702; // 升星忍者
		public static const NINJA_WAKE_UP_NINJA:uint       		= 0x00031306; // 觉醒忍者
		public static const NINJA_CARRY_NINJA:uint         		= 0x00031307; // 把忍者从仓库带到背包
		public static const NINJA_TAKE_BACK_NINJA:uint     		= 0x00031308; // 把忍者从背包或者阵法取回
		public static const NINJA_MSG_CHANGE_NOTIFY:uint   		= 0x00031309; // 页签数字发生变化时推送
		public static const NINJA_GET_EAT_LEVEL_UPGRADE_INFO:uint   	= 0x00035005; 	// 获取单个忍者的进食升级信息
		public static const NINJA_GET_LEVEL_UPGRADE_NEED_EAT_NUM:uint 	= 0x00035006;  	// 获取单个忍者升级所需进食的数量
		public static const NINJA_LEVEL_UPGRADE_BY_EAT:uint 			= 0x00035004;   // 通过进食来升级忍者   

		//忍者系统::阵法操作
		public static const NINJA_OPERATE_FORMATION:uint   = 0x00031401; // 上场、替换、撤销忍者
		public static const NINJA_SWAP_HOTKEY:uint         = 0x00031402; // 设置热键
		public static const NINJA_OPERATE_FORMATION_BROADCAST:uint = 0x0003000C;// 队友调整阵形广播
		
		
		//忍者系统::图鉴
		public static const NINJA_GET_NINJA_BOOK:uint      = 0x00031501; // 拉取忍者图鉴列表
		
		
		//战前准备
		public static const PREWAR_NOTICE:uint			   = 0x00030045;// 
		public static const PREWAR_FIGHT_OPTION_ACK:uint   = 0x00030046;// 
		public static const PREWAR_FIGHT_RES_NOTICE:uint   = 0x00030047;// 
		public static const PREWAR_INSERT_RES_NOTICE:uint  = 0x0003004C;// 
		public static const PREWAR_INSERT_BROADCAST:uint   = 0x0003004D;//
		public static const PREWAR_READY_ACK:uint 		   = 0x0003001C;//
		public static const PREWAR_RES_READY_ACK:uint 	   = 0x0003004B;//
		public static const PREWAR_READY_BROADCAST:uint    = 0x00030049;//
		
		//新功能开启
		public static const CMD_ZONE_HUD_OPEN:uint          =   0x00030605;//新功能开启通知
		
		//系统
		public static const HELLO_PACKAGE:uint			  =   0x00030600;//心跳包
		public static const SKEY_RELIVE:uint			  =	  0x00030100;//续key
		
		//新增加协议修改
		public static const CMD_ZONE_SYSTEM_NOTIFY_TMP:uint  = 0x0003E005; //临时的系统提示信息
		
		//好友模块
		public static const GET_FRIEND_LIST:uint = 0x00070001;
		public static const GET_FRIEND_APPLY_LIST:uint = 0x00070002;
		public static const ADD_FRIEND:uint = 0x00070003;
		public static const ADD_FRIEND_NOTIFY:uint =0x00070004;
		public static const REPLY_ADD_FRIEND:uint = 0x00070005;
		public static const REPLY_ADD_FRIEND_NOTIFY:uint = 0x00070006;
		public static const DEL_FRIEND:uint = 0x00070007;
		public static const DEL_FRIEND_NOTIFY:uint = 0x00070008;
		public static const GET_ASSISTOR_LIST:uint = 0x00070009;
		public static const CHOOSE_ASSISTOR:uint = 0x0007000a;
		public static const GET_RECOMMEND_FRIEND:uint = 0x0007000b;
		public static const FRIEND_STATUS_CHANGE_NOTIFY:uint = 0x0007000c;
		public static const FRIEND_TEAM_INFO_CHANGE_NOTIFY:uint = 0x0007000d; //玩家队伍信息变化
		public static const CMD_FRIEND_RECOMMEND_FRIEND_NOTIFY:uint = 0x00070010; //推荐好友推下来的信息

		/**
		 * 竞技场模块 打开竞技场
		 */
		public static const CS_PROTO_ARENAREQUEST:uint = 0x0003D001;
		/**
		 * 竞技场模块 开始匹配
		 */
		public static const CS_PROTO_COMPETITIONREQUEST:uint= 0x0003D002;
		/**
		 * 竞技场模块 历史记录
		 */
		
		public static const CMD_Z2Z_LOCK_ZONE:uint = 0x0003F604;    //跨服，锁定一个大区 ProtoZ2ZLockZoneReq ProtoZ2ZLockZoneRsp

		//邮件
		public static const GET_MAIL_LIST:uint = 0x00090001;
		public static const GET_MAIL_DETAIL:uint = 0x00090002;
		public static const EXTRACT_ITEM:uint = 0x0009000a;
		public static const EXTRACT_ALL_ITEM:uint = 0x00090004;
		public static const GET_ALL_ITEM_LIST:uint = 0x00090003;
		public static const SEND_MAIL:uint = 0x00090005;
		public static const DELETE_MAIL:uint = 0x00090009;
		public static const NEW_MAIL_NOTIFY:uint = 0x00090008;
		public static const CHARGE_MAIL:uint = 0x0009000c;
		public static const SEND_GUILD_MAIL:uint = 0x00090011;
		
		//排行榜
		public static const CMD_RANK_QUERY_RANK_INFO:uint = 0x000A0002; //获取排行榜信息
		public static const CMD_RANK_QUERY_NINJA_NUM:uint = 0x0003E106; // 忍者数量排行榜
		public static const CMD_RANK_QUERY_ARENA:uint = 0x0003E105; // 竞技场
		public static const CMD_RANK_QUERY_PVP:uint = 0x0003E107; // PVP战场
		public static const CMD_RANK_QUERY_SURVIVAL_TRIAL:uint = 0x0003E104; // 生存试炼关卡
		public static const CMD_RANK_QUERY_SURVIVAL_BREAK:uint = 0X0003E10B; // 生存试炼突破
		public static const CMD_RANK_QUERY_WORLD_BOSS:uint = 0x0003E103; // 世界BOSS
		public static const CMD_RANK_QUERY_GUILD:uint = 0x00030A25;
		public static const CMD_RANK_QUERY_BEFALL_DUNGEON:uint = 0x0003E10C; // 降临副本排行榜
		public static const CMD_RANK_QUERY_KNOWLEDGE_TEST:uint = 0x0003E10d;  //喵问答排行
		//排位赛
		public static const CMD_RANK_BATTLE_GET_PLAYER_INFO:uint = 0x000E0001; //获取玩家排位战信息
		public static const CMD_RANK_BATTLE_CHALLENGE_RIVAL:uint = 0x000E0003; //挑战对手; 
		public static const  CMD_RANK_BATTLE_CHALLENGE_RESULT_NOTIFY_CLIENT:uint = 0x000E0004;  //挑战结果通知客户端
		public static const  CMD_RANK_BATTLE_PAY_FOR_CHALLENGE_TIMES:uint = 0x000E0007;  //花元宝购买挑战次数
		public static const  CMD_RANK_BATTLE_GET_RANK_LIST:uint = 0x000E000B;  //获取排行榜列表
		public static const  CMD_RANK_BATTLE_REPORT_NOTIFY:uint = 0x000E000C;  //战报更新通知客户端
		public static const  CMD_RANK_BATTLE_ELIMINATE_CDTIME:uint = 0x000E000A;  //消耗元宝消CD时间
		public static const  CMD_RANK_BATTLE_NEW_HIGHEST_RANK_NOTIFY:uint  = 0x000E000F; //突破历史最高排名通知
		
		public static const  CMD_RANK_BATTLE_SWAP_FORMATION:uint = 0x00031403;//交换阵法
		public static const  CMD_RANK_BATTLE_GET_RANK_BATTLE_FORMATION:uint  = 0x00031404;//调整阵型界面的 拉取3个排位战阵法
		
		
		//主角晋级
		public static const CMD_ROLE_GET_PROMOTE_INFO:uint = 0x00031601; //
		public static const CMD_ROLE_SET_ROLE_STAR:uint = 0x00031602; //
		public static const CMD_PROMOTE_BATTLE:uint = 0x00031603; //
		
		public static const CMD_PRACTICE_GET_PRACTICE:uint = 0x00037101;  //请求修炼信息
		public static const CMD_PRACTICE_GET_NINJA_PRACTICE_DETAIL_INFO:uint = 0x00037102; //获取打算修练忍者信息
		public static const CMD_PRACTICE_NINJA:uint = 0x00037103; //修练忍者
		public static const CMD_PRACTICE_FINISH:uint = 0x00037104; //结束修练
		public static const CMD_PRACTICE_SPEED_UP:uint = 0x00037105; //加速修练
		public static const CMD_PRACTICE_OPEN_PRACTICE_POS:uint =  0x00037106; //开启修炼位
		public static const CMD_PRACTICE_GET_SPEED_UP_DETAIL:uint = 0x00037107;//查询加速信息
		public static const CMD_PRACTICE_GET_SPARRING_REWARD:uint = 0x00037108;//领取陪练奖励
		
		//工会
		public static const GUILD_DONATION_INFO:uint = 0;  //获取工会捐献信息
		public static const DONATE_GUILD:uint = 0;  //请求捐献
		public static const GUILD_UPGRADE:uint = 0;  //请求工会升级
		public static const TURNTABLE_UPGRADE:uint = 0;  //请求幸运转盘升级
		public static const SKILL_RESEARCH_UPGRADE:uint = 0;  //请求技能研究升级
		/**
		 *公会的正式协议
		 */
		public static const CMD_GUILD_CLIENT_DATA_NOTIFY:uint        = 0x00030a00; //公会客户端数据通知客户端   ProtoGuildClientDataNotify
		public static const CMD_GUILD_CREATE:uint                   = 0x00030a01; //创建公会 ProtoGuildCreateReq ProtoGuildCreateRsp
		public static const CMD_GUILD_RECOMMEND_QUERY:uint           = 0x00030a02; //查询推荐李诶表 EmptyMessage ProtoGuildRecommandQueryRsp
		public static const CMD_GUILD_JOIN:uint                     = 0x00030a03; //申请加入公会 ProtoGuildJoinReq ProtoGuildJoinRsp
		public static const CMD_GUILD_CANCEL_APPLY:uint              = 0x00030a04; //取消公会申请  ProtoGuildCancelApplyReq ProtoGuildCancelApplyRsp
		public static const CMD_GUILD_REFUSE_ALL_APPLY:uint          = 0x00030a05; //拒绝所有申请   ProtoGuildRefuseAllApplyReq ProtoGuildRefuseAllApplyRsp
		public static const CMD_GUILD_APPLY_LIST_QUERY:uint          = 0x00030a06; //查询申请列表 EmptyMessage ProtoGuildQueryApplyListRsp
		public static const CMD_GUILD_AUDIT:uint                     = 0x00030a07; //同意或拒绝申请  ProtoGuildAuditReq ProtoGuildAuditRsp
		public static const CMD_GUILD_QUIT:uint                      = 0x00030a08; //主动退出公会  ProtoGuildQuitReq ProtoGuildQuitRsp
		public static const CMD_GUILD_CHUAN:uint                     = 0x00030a09; //传位公会  ProtoGuildChiefChuanReq ProtoGuildChiefChuanRsp
		public static const CMD_GUILD_MEMBER_LIST_QUERY:uint         = 0x00030a0b; //查询成员列表  ProtoGuildMemberListReq ProtoGuildMemberListRsp
		public static const CMD_GUILD_MEMBER_REMOVE:uint             = 0x00030a0c; //请离成员  ProtoGuildMemberRemoveReq ProtoGuildMemberRemoveRsp
		public static const CMD_GUILD_MEMBER_IDENTITY:uint           = 0x00030a0d; //任命或解职成员  ProtoGuildMemberIdentityReq ProtoGuildMemberIdentyRsp
		public static const CMD_GUILD_EDIT_ANNO:uint                 = 0x00030a0e; //编辑公告  ProtoGuildEditAnnoReq ProtoGuildEditAnnoRsp
		public static const CMD_GUILD_MAIN_UI_QUERY:uint             = 0x00030a0f; //打开公会主UI查询  EmptyMessage ProtoGuildMainUIQueryRsp
		public static const CMD_GUILD_DONATE_QUERY:uint              = 0x00030a10;  //公会捐献查询 EmptyMessage ProtoGuildDonateQueryRsp
		public static const CMD_GUILD_DONATE:uint                    = 0x00030a11;  //公会捐献 ProtoGuildDonateReq ProtoGuildDonateRsp
		public static const CMD_GUILD_UPGRADE:uint                   = 0x00030a12;  //公会升级 ProtoGuildUpgradeReq ProtoGuildUpgradeRsp
		public static const CMD_GUILD_LUCKY_WHEEL_QUERY:uint         = 0x00030a13;  //幸运转盘查询 EmptyMessage ProtoGuildLuckyWheelQueryRsp
		public static const CMD_GUILD_LUCKY_WHEEL_LOTTERY:uint       = 0x00030a14;  //幸运转盘抽奖 EmptyMessage ProtoGuildLuckyWheelLotteryRsp
		public static const CMD_GUILD_GUILD_SKILL_QUERY:uint         = 0x00030a15;  //公会技能查询 EmptyMessage ProtoGuildSkillQueryRsp
		public static const CMD_GUILD_GUILD_SKILL_LEARN:uint         = 0x00030a16;  //公会技能学习 ProtoGuildSkillLearnReq ProtoGuildSkillLearnRsp
		public static const CMD_GUILD_GUILD_SKILL_QUICKEN:uint       = 0x00030a17;  //公会技能加速清除CD EmptyMessage ProtoGuildSkillQuickenRsp
		public static const CMD_GUILD_BASE:uint 					 = 0x00030a22; //进入或者退出组织基地
		public static const CMD_GUILD_IMPEARCH:uint             = 0x00030a26;  //弹劾首领 
		public static const CMD_ZONE_GUILD_OPERATE_WHITE_LIST:uint   = 0x00030a28;  //操作白名单 ProtoGuildOperateWhiteListReq EmptyRspStruct
		
		public static const GUILD_TAKE_ESCORT_REEL:uint				=	0x00030a21;//领取天地卷轴
		public static const GUILD_ESCORT:uint						=	0x00030a19;//护送请求
		public static const GUILD_ESCORT_NOTIFY:uint				=	0x00030a1a;//护送通知
		public static const GUILD_ESCORT_FINISH_NOTIFY:uint			=	0x00030a1b;//护送完成通知
		public static const GUILD_GET_ROBERRY_LIST:uint				=	0x00030a1c;//获取掠夺列表
		public static const GUILD_ROBERRY:uint						=	0x00030a1d;//掠夺请求
		public static const GUILD_ROBERRY_NOTIFY:uint				=	0x00030a1e;//掠夺通知
		public static const GUILD_ROBERRY_FIGHT:uint				=	0x00030a1f;//罗多战斗请求
		public static const GUILD_ROBERRY_END_NOTIFY:uint			=	0x00030a20;//掠夺结束通知
		public static const	GUILD_OSS_ROBERRY_MATCH:uint	        =	0x00030a23;//掠夺匹配时间记录,OSS用
		
		//忍具
		public static const CMD_NINJA_PROPS_GET_PROPS_LIST:uint	= 0x00038000; // 获取忍具信息
		public static const CMD_NINJA_PROPS_OPERATE:uint		= 0x00038001; // 操作忍具
		public static const CMD_NINJA_PROPS_UPGRADE:uint		= 0x00038002; // 忍具升级
		public static const CMD_NINJA_PROPS_NOTIFY:uint			= 0x00038003; // 忍具背包变更通知
		public static const CMD_NINJA_PROPS_TIPS:uint			= 0x00038004; // 拉取忍具TIPS数据
		public static const CMD_NINJA_PROPS_RECAST:uint		= 0x00038005; // 忍具重铸
		
		
		//世界BOSS场景
		public static const CMD_WORLD_BOSS_SCENE:uint			= 0x0003B007; // 进入或退出世界BOSS场景
		/**
		 * 好友家园
		 */
		public static const Family_HELP_WATER_WISH_TREE:uint = 0x00030b10;  //帮助好友浇水，不在帮忙记录里
		public static const Family_ONE_KEY_HELP_WATER_TREE:uint = 0x00030b11;  //一键帮助好友浇水
		public static const Family_QUERY_FAMILY_INFO:uint = 0x00030b12;  //查询家园信息
		public static const Family_QUERY_HELP_RECORD:uint = 0x00030b13;  //查询帮助记录
		public static const Family_QUERY_FRIEND_WISH_TREE:uint = 0x00030b14;  //查询好友许愿树
		public static const Family_QUERY_WISH_TREE:uint = 0x00030b15;  //查询自己的许愿树
		public static const Family_WATER_WISH_TREE:uint = 0x00030b16;  //给自己的树浇水
		public static const Family_WISH_TREE_WISH:uint = 0x00030b17;  //许愿
		public static const Family_HELP_WATER_IN_RECORDS:uint = 0x00030b18;  //在帮助记录里帮助浇水
		//送花
		
		public static const Family_SEND_FLOWER_QUERY:int               = 0x00030b04;  //送花查询 ProtoSendFlowerQueryReq ProtoSendFlowerQueryRsp
		
		public static const Family_SEND_FLOWER_BUY:int                 = 0x00030b05;  //送花购买 ProtoSendFlowerBuyReq ProtoSendFlowerBuyRsp
		
		public static const Family_SEND_FLOWER_RANK:int                = 0x00030b06;  //送花排行 EmptyMessage ProtoSendFlowerRankRsp
		
		public static const Family_SEND_FLOWER_999_NOTIFY:int          = 0x00030b07;  //送了999朵玫瑰， 全频玫瑰通知 EmptyMessage
		//忍者受命所
		
		public static const Family_DISPATCH_NINJA_QUERY:int            = 0x00030b01;  //忍者派遣查询 EmptyMessage ProtoDispatchNinjaQueryRsp
		
		public static const Family_DISPATCH_NINJA_FRIEND:int           = 0x00030b02;  //派遣好友完成任务 ProtoDispatchNinjaFriendReq ProtoDispatchNinjaFriendRsp
		
		public static const Family_DISPATCH_NINJA_AWARD:int            = 0x00030b03;  //领取奖励 ProtoDispatchNinjaAwardReq ProtoDispatchNinjaAwardRsp
		
		public static const Family_DISPATCH_NINJA_CHOOSE:int         = 0x00030b00;  //忍者派遣选择 ProtoDispatchNinjaChooseReq ProtoDispatchNinjaChooseRsp
		
		public static const CMD_ZONE_DISPATCH_NINJA_FRIEND_AWARD:int     = 0x00030b09;  //领取好友奖励 ProtoDispatchNinjaFriendAwardReq ProtoDispatchNinjaFriendAwardRsp
		//家园里 拉取好友
		public static const Family_FRIEND_LIST:int                    = 0x00030b1a;
		/**
		 *远征 
		 *
		 */ 
		public static const EXPEDITION_GET_INFO:int                = 0x0003D101;//拉取远征信息
		public static const EXPEDITION_GET_HEAP_AWARD :int                = 0x0003D102;//拉取远征信息
		public static const EXPEDITION_OPEN_CHEST :int              = 0x0003D103;//开宝箱
		public static const EXPEDITION_RESET:int                    = 0x0003D104;//重新开始远征挑战
		public static const EXPEDITION_GET_NINJA_LIST:int           = 0x0003D105;//拉取远征忍者列表
		public static const EXPEDITION_CARRY_NINJA:int              = 0x0003D106;//选择远征的忍者
		public static const EXPEDITION_RADIS:int                    = 0x0003D108;//远征扫荡
		/**
		 * 
		 * 活动 -7日礼包
		 */
		public static const ACTIVITY_SEVEN_DAYS_QUERY:int               = 0x00100120;  //7日礼包查询  ProtoSevenDaysQueryRsp
		public static const ACTIVITY_SEVEN_DAYS_AWARD:int              = 0x00100121;  //7日礼包领奖 ProtoSevenDaysAwardReq ProtoSevenDaysAwardRsp
		
		public static const ACTIVITY_ONLINE_QUERY:uint = 0x00100130;  //礼包查询
		public static const ACTIVITY_ONLINE_AWARD:uint = 0x00100131;  //礼包领奖
		public static const ACTIVITY_ONLINE_NOTIFY:uint = 0x00100132;  //礼包通知
		/**
		 * 招募活动
		 */		
		public static const ACTIVITY_RECRUIT_QUERY:uint = 0x001001d0;//招募活动的查询
		public static const ACTIVITY_RECRUIT_AWARD:uint = 0x001001d1;//招募活动的领奖
		//0x001001dx 忍者限时招募礼包(800022)
		public static const CMD_ACTIVITY_NINJA_RECRUIT_QUERY:uint         = 0x00100250;  //查询 EmptyMessage ProtoNinjaRecruitQueryRsp
		public static const CMD_ACTIVITY_NINJA_RECRUIT_AWARD:uint         = 0x00100251;  //领礼包 ProtoNinjaRecruitAwardReq ProtoNinjaRecruitAwardRsp
		public static const CMD_ACTIVITY_INNER_NINJA_RECRUIT_REPORT:uint  = 0x00100252;  //上报 ProtoInnerCommonReportReq
		/*回流*/
		public static const CMD_ZONE_COME_BACK_QUERY:uint         = 0x00037211; //回流查询 EmptyMessage ProtoComeBackRsp
		public static const CMD_ZONE_COME_BACK_AWARD:uint         = 0x00037212; //回流奖励 ProtoComeBackReq ProtoComeBackRsp

		//活动: 鸣人的钱包
		public static const CMD_ACTIVITY_INVESTMENT_PLAN_QUERY:uint = 0x00100560;//查询
		public static const CMD_ACTIVITY_INVESTMENT_PLAN_AWARD:uint = 0x00100561;//领礼包
		public static const CMD_ACTIVITY_INNER_INVESTMENT_PLAN_REPORT:uint = 0x00100562;//购买
		public static const CMD_ACTIVITY_INNER_INVESTMENT_PLAN_INNER_REPORT:uint = 0x00100563;//上报
		
		/**
		 * 活动 招财符
		 */
		public static const BRINGINMONEY_QUERY:uint = 0x00100140;  //
		public static const BRINGINMONEY_BRING:uint = 0x00100141;  //
		public static const BRINGINMONEY_AWARD:uint = 0x00100142;  //
		public static const BRINGINMONEY_NOTIFY:uint = 0x00100143;  //
		
		/**
		 * 活动 招财符
		 */
		public static const FIRST_SAVE_QUERY:uint = 0x00100150;  //
		public static const FIRST_SAVE_AWARD:uint = 0x00100151;  //
		/**
		 * 竞技场 拉取 奖励
		 * 
		 */
		public static const ARENA_GET_REWARD_INFO:uint = 0x0003D003;
		public static const ARENA_REWARD_NOTIFY :uint                = 0x0003D004;//竞技场奖励信息通知
		public static const  ARENA_BUILTIN_REWARD  :uint              = 0x0003D005;//竞技场内部的每日/每周奖励
		public static const ARENA_TASK_GET_FIX_NINJA_LIST:uint        = 0x00030311;//任务匹配的忍者
		public static const ARENA_FIRST_WIN_NINJA:uint               = 0x0003D006;//竞技场忍者首胜 
		/**
		 * VIP协议
		 */
		public static const VIP_GET_VIP_DETAIL		:uint = 0x0003D201;	// 获取VIP信息
		public static const VIP_BUY_VIP				:uint = 0x0003D202;	// 购买VIP
		public static const VIP_FETCH_VIP_REWARDS	:uint = 0x0003D203;	// 领取VIP首开礼包
		
		/**
		 * 福利大厅
		 */
		public static const WELFARE_GET_FIND_BACK_INFO:uint  		= 0x00037201; //拉取找回信息
		public static const WELFARE_FIND_BACK_EXP:uint			= 0x00037202; //找回任务经验
		public static const WELFARE_QUERY_DAILY_WELFARE:uint		= 0x00100160; //查询每日福利数据
		public static const WELFARE_GET_DAILY_WELFARE_AWARD:uint	= 0x00100161; //领取每日福利奖励
		public static const WELFARE_GET_TAB_STATE:uint            = 0x00100005; //查询福利大厅页签状态
		public static const WELFARE_LEVEL_INFO:uint				= 0x00100190; //查询等级礼包
		public static const WELFARE_LEVEL_AWARD:uint				= 0x00100191; //领取等级礼包
		public static const WELFARE_COMBAT_INFO:uint				= 0x001001a0; //查询战斗力礼包
		public static const WELFARE_COMBAT_AWARD:uint				= 0x001001a1; //领取战斗力礼包
		public static const WELFARE_ANNOUNCEMENT_CHECKED:uint       =   0x00100180 //已看过公告
		public static const WELFARE_BUY_MONTH_CARD:uint			= 0x00100163;//购买月卡
		
		/**
		 * 800007,开服活动
		 */
		public static const OPEN_SERVICE_QUERY:uint = 0x00100170;  //
		public static const OPEN_SERVICE_AWARD:uint = 0x00100171;  //
		
		/**
		 * 联服活动
		 */
		public static const MERGE_SERVER_QUERY  :uint     = 0x00100390;  //查询 ProtoMergeServerQueryReq ProtoMergeServerQueryRsp
		public static const MERGE_SERVER_AWARD  :uint     = 0x00100391;  //领礼包 ProtoMergeServerAwardReq ProtoMergeServerAwardRsp

		/**
		 *我要变强 
		 */		
		public static const CMD_GROWUPSTRONGER_PROMOTE:uint = 0x0003B101;//我要变强请求
		public static const CMD_GROWUPSTRONGER_LEVELUP:uint = 0x0003B102;//我要升级请求

		/**
		 * 忍者属性强化
		 */
		public static const NINJA_STRENGTHEN_PROPERTY:uint = 0x00031703;
		
		
		
		
		public static const BLUE_DIAMOND_QUERY:uint = 0x001001b0;  //查询 EmptyMessage ProtoBlueDiamondQueryRsp
		public static const BLUE_DIAMOND_AWARD:uint = 0x001001b1;  //领礼包 ProtoBlueDiamondAwardReq ProtoBlueDiamondAwardRsp
		
		public static const CMD_ACTIVITY_TGP_BOX_QUERY:uint         = 0x00100310;  //查询 EmptyMessage ProtoTGPBoxQueryRsp
		public static const CMD_ACTIVITY_TGP_BOX_AWARD:uint         = 0x00100311;  //领礼包 ProtoTGPBoxAwardReq ProtoTGPBoxAwardRsp
		
		
		
		public static const YELLOW_DIAMOND_QUERY:uint = 0x001001c0;  //查询 EmptyMessage ProtoBlueDiamondQueryRsp
		public static const YELLOW_DIAMOND_AWARD:uint = 0x001001c1;  //领礼包 ProtoBlueDiamondAwardReq ProtoBlueDiamondAwardRsp
		
		
		public static const QQ_VIP_QUERY:uint = 0x00100210;  ///查询 EmptyMessage ProtoQQVIPQueryRsp
		public static const QQ_VIP_AWARD:uint = 0x00100211;  //领礼包 ProtoQQVIPAwardReq ProtoQQVIPAwardRsp
		
		
		
		public static const QQ_3366_LOGIN_QUERY:uint = 0x00100220;  //查询 EmptyMessage ProtoQQ3366LoginQueryRsp
		public static const QQ_3366_LOGIN_AWARD:uint = 0x00100221;  //领礼包 ProtoQQ3366LoginAwardReq ProtoQQ3366LoginAwardRsp

		
		public static const GUANJIA_LOGIN_QUERY:uint = 0x00100240;   //查询 EmptyMessage ProtoGuanjiaLoginQueryRsp
		public static const GUANJIA_LOGIN_AWARD:uint = 0x00100241;  //领礼包 ProtoGuanjiaLoginAwardReq ProtoGuanjiaLoginAwardRsp

		
		public static const TGP_QUERY:uint = 0x00100260;  //查询 EmptyMessage ProtoTGPQueryRsp
		public static const TGP_AWARD:uint = 0x00100261;  //领礼包 ProtoTGPAwardReq ProtoTGPAwardRsp

		
		public static const WEIDUAN_QUERY:uint = 0x00200110;   //查询 EmptyMessage ProtoPlatActivityWeiDuanQueryRsp
		public static const WEIDUAN_AWARD:uint = 0x00200111;  //领礼包 ProtoPlatActivityWeiDuanAwardReq ProtoPlatActivityWeiDuanAwardRsp
		
		
		/**
		 *战场 
		 */	
//		public static const GET_BATTLE_FIELD_INFO:uint = 0x0003D501;
//		public static const BATTLE_FIELD_OVER_NOTIFY:uint =  0x0003D502;
//		public static const BATTLE_FIELD_PLAYER_STATE_CHANGE_NOTIFY:uint = 0x0003D503;
		
		public static const CMD_BATTLE_ROYALE_GET_FIELD_INFO:uint                 = 0x0003D601; //拉取阵营信息
		public static const CMD_BATTLE_ROYALE_PLAYER_STATE_CHANGE_NOTIFY:uint     = 0x0003D602; //玩家信息变更通知
		public static const CMD_BATTLE_ROYALE_OVER_NOTIFY:uint                    = 0x0003D603; //pvp战场结束,奖励通知
		public static const CMD_BATTLE_ROYALE_SIGN_UP:uint                        = 0x0003D604; //pvp战场,报名
		public static const CMD_BATTLE_ROYALE_GET_SCHEMA :uint                    = 0x0003D606; //pvp战场,拉取战场开启信息
		public static const CMD_BATTLE_ROYALE_GET_FIELD_INIT_INFO :uint 				  = 0x0003D605; //pvp战场,进入战场时拉取的初始信息
		public static const CMD_CHANGESCENE:uint = 0x0003D607; //进入、离开动态场景
		public static const CMD_BATTLE_ROYALE_GET_PROBABLE_MAX_AWARD:uint =        0x0003D608; //查看奖励
		public static const CMD_BATTLE_ROYALE_RELIVE:uint = 0x0003D609 ; // 复活
		public static const CMD_BATTLE_ROYALE_FIGHT_OVER_INFO_NOTIFY:uint         = 0x0003D60A; //战斗结束相关信息的提示
		public static const CMD_BATTLE_ROYALE_SYNC_CLIENT_TIME:uint            = 0x0003D60B; //同步前端时间
		public static const CMD_BATTLE_ROYALE_AUTO_POLL:uint            =  0x0003D60C; //pvp战场,设置战场开启的时候是否自动拉入战场

		
		
		/**
		 * 称号系统
		 */
		public static const CMD_TITLE_GET_TITLE_LIST:uint = 0x0003E101; // 查询称号
		public static const CMD_TITLE_SET_TITLE:uint = 0x0003E102; // 设置称号
		
		
		//GVG
		public static const CMD_GUILD_GVG_MAIN_UI_QUERY:uint                   = 0x000D0101;  //gvg主UI查询 EmptyMessage ProtoGvGMainUIQueryRsp
		public static const CMD_GUILD_GVG_SIGN_UP:uint                         = 0x000D0102;  //报名 EmptyMessage ProtoGvGSignUpRsp
		public static const CMD_GUILD_GVG_BATTLE_FIELD_INFO_NOTIFY:uint        = 0x000D0103;  //gvg战场信息通知 ProtoGvGBattleFieldInfoNotify
		public static const CMD_GUILD_GVG_ENTER:uint                           = 0x000D0104;  //进入gvg EmptyMessage ProtoGvGEnterRsp
		public static const CMD_GUILD_GVG_LEAVE:uint                           = 0x000D0105;  //进入gvg EmptyMessage ProtoGvGLeaveRsp
		public static const CMD_GUILD_GVG_SELF_AJUST_BATTLE_FIELD_POS:uint     = 0x000D0106;  //玩家自己调整战场位置 ProtoGvGSelfAjustBattleFieldPosReq ProtoGvGSelfAjustBattleFieldPosRsp
		public static const CMD_GUILD_GVG_MANAGER_AJUST_BATTLE_FIELD_POS:uint  = 0x000D0107;  //管理员拖动玩家 ProtoGvGManagerAjustBattleFieldPosReq ProtoGvGManagerAjustBattleFieldPosRsp
		public static const CMD_GUILD_GVG_MANAGER_KICK_PLAYER:uint             = 0x000D0108;  //管理员踢人 ProtoGvGManagerKickPlayerReq ProtoGvGManagerKickPlayerRsp
		public static const CMD_GUILD_GVG_PACKAGE_FENPEI_QUERY:uint            = 0x000D0109;  //礼包分配查询 EmptyMessage ProtoGvGPackageFenpeiQueryRsp
		public static const CMD_GUILD_GVG_PACKAGE_FENPEI_DO:uint               = 0x000D010a;  //分配礼包 ProtoGvGPackageFenpeiDoReq ProtoGvGPackageFenpeiDoRsp
		public static const CMD_GUILD_GVG_QUICK_AJUST_BATTLE_FIELD_POS:uint    = 0x000D0115;  //快速拖动玩家 ProtoGvGQuickAjustBattleFieldPosReq ProtoGvGQuickAjustBattleFieldPosRsp
		public static const CMD_GUILD_WHITE_LIST_CHANGE_NOTIFY:uint            = 0x000D0117;  //白名单变化通知 ProtoGvGEnterRsp(借用)
		public static const CMD_ZONE_GET_PLAYER_TIPS_INFO:uint 				   = 0x00030b21;//拉取玩家tips
		
		/**
		 * 活动整合
		 */
		public static const CMD_ACTIVITY_HUB_GET_MAIN_UI:uint            = 0x0003D501; //主界面显示的活动整合信息
		public static const CMD_ACTIVITY_HUB_OPEN:uint                   = 0x0003D502; //打开活动整合面板显示的定时活动
		public static const CMD_ACTIVITY_HUB_STATUS_CHANGE_NOTIFY:uint   = 0x0003D503; //活动状态变化通知

        public static const GET_HOT_ACTIVITY_INFO:uint                  =   0x001001e0;     // 拉取最热活动数据
        public static const GET_HOT_ACTIVITY_REWARD:uint                =   0x001001e1;     // 最热活动领奖
        public static const HOT_ACTIVITY_REWARD_NOTIFY:uint             =   0x001001e3;     // 最热活动奖励变更通知
		public static const CMD_GUILD_GVG_PLAYER_NOTIFY:uint                  = 0x000D010b;  //主动通知玩家的包  ProtoGvGPlayerNotify（如果原因是1， 就主动关闭UI， 并给出提示）
        /**
		 * 通灵兽
		 */
		public static const CMD_BEATS_GET_SUMMON_MONSTER:uint = 0x00034501;//拉取通灵兽列表
		public static const CMD_BEATS_CONTRACT_POS:uint =       0x00034502;//拉取契约位
		public static const CMD_BEATS_CARRY_SUMMON_MONSTER:uint = 0x00034503; //上下阵通灵兽
		public static const CMD_SUMMON_MONSTER_OPEN_CAPTURE_MONSTER:uint = 0x00034504; //查询捕捉通灵兽信息
		public static const CMD_SUMMON_MONSTER_CAPTURE_FIGHT_NOTIFY:uint = 0x00034505; //捕捉通灵兽战斗结束通知
		public static const CMD_SUMMON_MONSTER_OPERATE_RUNE:uint = 0x00034506; //装备、卸下符文
		public static const CMD_SUMMON_MONSTER_COMPOSE_RUNE:uint = 0x00034507; //符文融合
		public static const CMD_SUMMON_MONSTER_GET_SUMMON_MONSTER_INFO_BY_ID:uint = 0x00034508; //通过ID获取通灵兽信息
		
        // 周循环
        public static const WEEKLY_CYCLE_INFO:uint                  =   0x00100290;     //周循环信息
        public static const MODULE_EXTRA_REWARD_INFO:uint           =   0x0003D700;     //模块加成信息
		
		//活动 心悦礼包
		public static const CMD_ACTIVITY_XINYUE_QUERY :uint =  0x001002a0;  //查询 EmptyMessage ProtoXinyueQueryRsp
		public static const CMD_ACTIVITY_XINYUE_AWARD :uint = 0x001002a1;  //领奖 ProtoXinyueAwardReq ProtoXinyueAwardRsp
		
		
		//小游戏
		public static const MINI_GAME_REPORT:uint = 0x00100206;//小游戏上报
		
		//限时热点活动——元宵节
		public static const OPERATING_ACTIVITY_LANTERN_QUERY:uint = 0x001002f1;//元宵活动查询
		public static const OPERATING_ACTIVITY_LANTERN_AWARD:uint = 0x001002f3;//元宵活动领取奖励		
		public static const CMD_ZONE_GET_LIMIT_HOT_POINT:uint = 0x00030b22;   //获取限时热点列表ProtoLimitHotPointRsp
		
		//充值消费送好礼v3
		public static const CMD_ACTIVITY_CHANNEL_RECHARGE_GIFT_QUERY:uint	=	0x00100360;  //查询EmptyMessage
		public static const CMD_ACTIVITY_CHANNEL_RECHARGE_GIFT_AWARD:uint	=	0x00100361;  //领礼包 ProtoChannelRechargeGiftAwardReq 
		
		//助威
		public static const CMD_GUILD_GVG_CHEER:uint  = 0x000D0114;  //助威 ProtoGvGCheerReq ProtoGvGCheerRsp
		
	
		//活动 试试手气
		public static const CMD_ACTIVITY_USE_GOLD_QUERY:uint             = 0x001002e1; //查询 EmptyMessage ProtoDailyUseGoldInfoRsp
		public static const CMD_ACTIVITY_USE_GOLD_PAY:uint            = 0x001002e2; //支付 EmptyMessage ProtoDailyUseGoldInfoRsp
		public static const CMD_ACTIVITY_USE_GOLD_AWARD:uint         = 0x001002e3; //领奖 EmptyMessage ProtoDailyUseGoldInfoRsp
		
		//游戏大厅在线礼包
		public static const QQ_HALL_ONLINE_REWARD_QUERY		:uint = 0x00100320; // 查询
		public static const QQ_HALL_ONLINE_REWARD_LOTTERY	:uint = 0x00100321; // 抽奖
		public static const QQ_HALL_ONLINE_REWARD_RECIEVE	:uint = 0x00100322; // 领奖
		public static const QQ_HALL_ONLINE_REWARD_NOTIFY	:uint = 0x00100323; // 刷新奖池通知
		
		//页游节
		public static const QQ_YEYOUJIE_QUERY		:uint = 0x00100400; // 查询
		public static const QQ_YEYOUJIE_LOTTERY	:uint = 0x00100401; // 抽奖
		public static const QQ_YEYOUJIE_RECIEVE	:uint = 0x00100402; // 领奖
		
		//忍者拼图活动协议
		public static const ACTIVITY_NINJA_JIGSAW_QUERY		:uint = 0x00100300; // 查询
		public static const ACTIVITY_NINJA_JIGSAW_RECIEVE	:uint = 0x00100301; // 领奖
		/**
		 *排位战独立的装备 
		 */		
		public static const CMD_EQUIP_OPERATE_INDEPENDENCE	:uint   	= 0X0003080B; //操作独立装备
		
		// 充值返利
		public static const ACTIVITY_CHARGE_REWARD_QUERY	:uint = 0x00100330; // 充值返利查询
		public static const ACTIVITY_CHARGE_REWARD_RECEIVE	:uint = 0x00100331; // 充值返利领奖
		public static const ACTIVITY_CONSUME_REWARD_QUERY	:uint = 0x00100340; // 消费返利查询
		public static const ACTIVITY_CONSUME_REWARD_RECEIVE	:uint = 0x00100341; // 消费返利领奖

		
		
		public static const GET_INTRODUCTION_QUERY	:uint   	= 0x00034205; //雷之国密宝
		
		public static const FUKUBUKURO_QUERY	:uint   	= 0x001003b0; ///查询EmptyMessage ProtoFukubukuroRsp
		public static const FUKUBUKURO_AWARD   :uint      = 0x001003b1;  //领礼包 查询EmptyMessage ProtoFukubukuroRsp
		public static const FUKUBUKURO_REPORT :uint       = 0x001003b2;  //上报 ProtoInnerCommonReportReq
		
		
		public static const  CMD_ACTIVITY_JIZIPAI_QUERY  :uint       = 0x001003c0;  //查询 EmptyMessage ProtoJizipaiRsp
		public static const  CMD_ACTIVITY_JIZIPAI_OPEN   :uint       = 0x001003c1;  //捕鱼 ProtoJizipaiOpenReq ProtoJizipaiRsp
		public static const  CMD_ACTIVITY_JIZIPAI_COMMIT  :uint      = 0x001003c3;   //兑换 ProtoJizipaiCommitReq ProtoJizipaiRsp
		public static const  CMD_ACTIVITY_JIZIPAI_EXCHANGE :uint     = 0x001003c4;   //兑换 ProtoJizipaiExchangeReq ProtoJizipaiRsp
		
		
		public static const  CMD_DAILY_GIFT_QUERY :uint= 0x001003f0;  // 查询 EmptyMessage ProtoDailyGiftRsp
		public static const  CMD_DAILY_GIFT_AWARD :uint= 0x001003f1;  // 领奖 ProtoDailyGiftAwardReq ProtoDailyGiftRsp
		public static const CMD_ACTIVITY_QQGAME_LOGIN_QUERY_REQ:uint = 0x00100490;		// 活动查询 ProtoQQGameLoginQueryReq ProtoQQGameLoginRsp
		public static const CMD_ACTIVITY_QQGAME_LOGIN_GET_AWARD_REQ:uint = 0x00100491;	// 领取奖励 ProtoQQGameLoginGetAwardReq ProtoQQGameLoginRsp

		
		public static const ACTIVITY_PERDAYCONSUME_QUERY:uint   = 0x00100380;  //查询 每日消费返利
		public static const ACTIVITY_PERDAYCONSUME_GET_AWARD:uint = 0x00100381;  //领礼包  每日消费返利
		
		
		
		//上忍勋章活动
		public static const CMD_VIP_RENEW_GIFT_QUERY:uint  = 0x00100410;  // 查询 EmptyMessage ProtoVipRenewGiftRsp
		public static const CMD_VIP_RENEW_GIFT_AWARD:uint  = 0x00100411;  // 领奖 EmptyMessage ProtoVipRenewGiftRsp
		public static const CMD_VIP_RENEW_GIFT_RENEW:uint  = 0x00100412;  // 开通上忍勋章 EmptyMessage ProtoVipRenewGiftRs
		
		
		public static const CMD_ZONGZI_QUERY:uint  = 0x00100430;          // 查询 EmptyMessage ProtoZongziRsp
		public static const CMD_ZONGZI_EAT:uint  = 0x00100431;            // 喂粽子 ProtoZongziEatReq ProtoZongziRsp
		public static const CMD_ZONGZI_EXCHANGE:uint  = 0x00100432;       // 兑换 ProtoZongziExchangeReq ProtoZongziRsp
		
		//招财
		public static const CMD_MONEY_DRAWING_QUERY_REQ:uint = 0x00100470;
		public static const CMD_MONEY_DRAWING_OPEN_REQ:uint = 0x00100471;
		public static const CMD_MONEY_DRAWING_GET_AWARD_REQ:uint = 0x00100472;
		
		
		//强者来袭
		public static const CMD_NINJA_COME_ACTIVITY_QUERY_REQ:uint = 0x00100450;
		public static const CMD_NINJA_COME_ACTIVITY_OPEN_BOX_REQ:uint = 0x00100451;
		public static const CMD_COME_ACTIVITY_EXCHANGE_REQ:uint = 0x00100453;
		
		
		
		//神秘宝箱
		public static const CMD_ACTIVITY_MYSTIC_CHEST_QUERY	:uint   = 0x00100350;  //查询 EmptyMessage ProtoMysticChestRsp
		public static const CMD_ACTIVITY_MYSTIC_CHEST_OPEN	:uint   = 0x00100351;  //领礼包 EmptyMessage ProtoMysticChestRsp
		public static const CMD_ACTIVITY_MYSTIC_CHEST_BUY	:uint   = 0x00100352;  //购买 ProtoMysticChestBuyReq ProtoMysticChestRsp
		
		//活动 樱花祭
		public static const CMD_ACTIVITY_CHERRY_QUERY  :uint       = 0x00100370;  //查询EmptyMessage ProtoCherryCelebrationRsp
		public static const CMD_ACTIVITY_CHERRY_AWARD  :uint       = 0x00100371;  //领礼包 查询EmptyMessage ProtoCherryCelebrationRsp

		// 组织副本
		public static const GUILD_DUNGEON_QUERY:uint = 0x00030A41; // 查询副本信息
		public static const GUILD_DUNGEON_CHALLENGE:uint = 0x00030A42; // 发起挑战
		public static const GUILD_DUNGEON_REWARD_NOTIFY:uint = 0x00030A47; // 奖励通知
		
		//GM操作
		public static const CMD_ZONE_GM_OPERATE:uint = 0x00030F01;
		
		public static const CMD_FIGHT_KICK_OUT_PLAYER_REASON_NOTIFY:uint = 0x00030070;
		
		//0x001003ax 公测活动(800050)
		public static const CMD_ACTIVITY_BETA_GIFT_QUERY:uint       = 0x001003a0;  //查询 EmptyMessage ProtoBetaGiftRsp
		public static const CMD_ACTIVITY_BETA_GIFT_AWARD:uint       = 0x001003a1;  //领礼包 ProtoBetaGiftAwardReq ProtoBetaGiftRsp
		/**
		 * 战袍
		 */		
		public static const CMD_TABARD_GET_TABARD_INFO:uint           = 0x00035100; //获取战袍信息
		public static const CMD_TABARD_LEVEL_UP:uint                  = 0x00035101; //升级
		public static const CMD_TABARD_STEP_UP:uint                   = 0x00035102; //升阶
		public static const CMD_TABARD_SET_STEP:uint                  = 0x00035103; //设置战袍简称幻化
		public static const CMD_TABARD_SET_SHOW_FLAG:uint             = 0x00035104; //设置战袍是否显示
		
		//时装
		public static const CMD_FASHION_GET_FASHION_INFO:uint        = 0x00035110; //获取时装信息
		public static const CMD_FASHION_STRENGTH_FASHION:uint         = 0x00035111;
		public static const CMD_FASHION_MERGE_FASHION:uint            = 0x00035112;
		public static const CMD_FASHION_SET_FASHION:uint              = 0x00035113;
		public static const CMD_FASHION_SET_FASHION_SHOW_FLAG:uint    = 0x00035114;
		
		// 战法系统
		public static const TACTIC_QUERY_INFO:uint = 0x00035200; // 战法查询请求
		public static const TACTIC_LEARN:uint = 0x00035201; // 战法学习升级
		public static const TACTIC_USE:uint = 0x00035202; // 设置当前战法
		
		//限时通灵
		public static const CMD_ACTIVITY_LIMIT_SUMMON_QUERY:uint         = 0x001003d0;  //查询 EmptyMessage ProtoLimitSummonRsp
		public static const CMD_ACTIVITY_LIMIT_SUMMON_AWARD:uint         = 0x001003d1;  //捕鱼 ProtoSummonAwardReq ProtoLimitSummonRsp
		
		//点券返利
		//0x001003ex 充值返利活动(800054)
		public static const CMD_ACTIVITY_RECHARGE_REBATE_QUERY:uint = 0x001003e0;  // 查询 EmptyMessage ProtoRechargeRebateRsp
		public static const CMD_ACTIVITY_RECHARGE_REBATE_AWARD:uint = 0x001003e1;  // 领奖 EmptyMessage ProtoRechargeRebateRsp
		
		public static const BEFALL_DUNGEON_QUERY_INFO		:uint = 0x00030118;	// 拉取降临副本信息
		public static const DUNGEON_COMMON_REWARD_NOTIFY	:uint = 0x00030610; // 通用副本战斗奖励通知
		
		public static const CMD_ZONE_TREASURE_MAP_REWARD    :uint      = 0x00035011; //藏宝图奖励
		public static const CMD_ZONE_TREASURE_EVENT_NOTIFY:uint        = 0x00035013; //藏宝图事件通知
		
		//忍者测验
		public static const CMD_QUIZ_OPEN  :uint         	 			  			= 0x0003D801; //打开问答面板
		public static const CMD_QUIZ_ANSWER :uint          	 			  		= 0x0003D802; //回答问题
		public static const CMD_QUIZ_OPEN_REWARD_BOX   :uint        	 			= 0x0003D803; //打开奖励包
		
		public static const CMD_GET_CARD_RECYCLE : uint								= 0x00030411;
		public static const CMD_CARD_RECYCLE_REFINERY : uint 						= 0x00030412;
		public static const CMD_CARD_EXCHANGE: uint									= 0x00030413;
		
		//充值红包
		public static const CMD_GET_RED_PACKAGE_INFO:uint         	 			  	= 0x0003F611;//打开面板，获取红包信息
		public static const CMD_GET_RED_PACKAGE_RETURN_MONEY:uint          	 		= 0x0003F612;//领取返利
		public static const CMD_SEND_DIRECT_RED_PACKAGE:uint        	 			= 0x0003F613;//发送定向红包
		public static const CMD_SEND_WHOLE_RED_PACKAGE:uint							= 0x0003F614;//发送全民红包
		public static const CMD_WHOLE_RED_PACKAGE_NOTIFY:uint 						= 0x0003F615;//全名红包通知
		public static const CMD_RECV_WHOLE_RED_PACKAGE:uint							= 0x0003F616;//领取全民红包
		
		//喵问答
		public static const CMD_KNOWLEDGE_TEST_GET_INFO:uint						= 0x00030c01;//进去面版拉取报名信息
		public static const CMD_KNOWLEDGE_TEST_SIGN_UP:uint							= 0x00030c02;//发送报名请求
		public static const CMD_KNOWLEDGE_TEST_VOTE:uint							= 0x00030c03;//押注npc
		public static const CMD_KNOWLEDGE_TEST_ENTER:uint							= 0x00030c04;//拉取进场信息
		
		public static const CMD_KNOWLEDGE_TEST_QUESTION_AND_ANSWER:uint				= 0x00030c05;//下道题和上题答案
		public static const CMD_KNOWLEDGE_TEST_GAME_OVER:uint				        = 0x00030c06;//游戏结束
		public static const CMD_KNOWLEDGE_TEST_START_NOTIFY:uint				    = 0x00030c07;//游戏开始
		
		//QQ浏览器活动
		public static const ACTIVITY_QQBROWSER_QUERY	:uint = 0x00100420;	// 查询活动信息
		public static const ACTIVITY_QQBROWSER_RECEIVE	:uint = 0x00100421; // 领取活动奖励
		
		public static const WORSHIP_PK_MATCH			:uint = 0x0003D901;
		public static const WORSHIP_GET_SIGN_INFO		:uint = 0x0003D902;
		public static const WORSHIP_SIGN_UP				:uint = 0x0003D903;
		public static const WORSHIP_GET_REWARD			:uint = 0x0003D904;
		public static const WORSHIP_REVIVE			    :uint = 0x0003D905;  //复活主角

		//0x0010044x 充值限购活动(800063)
		public static const CMD_ACTIVITY_RECHARGE_AND_BUY_QUERY :uint = 0x00100440;            // 查询 EmptyMessage ProtoRechargeAndBuyRsp
		public static const CMD_ACTIVITY_RECHARGE_AND_BUY_BUY :uint = 0x00100441;              // 兑换 ProtoRechargeAndBuyBuy ProtoRechargeAndBuyRsp
		//勿打扰
		public static const CMD_FRIEND_CHANGE_DISTURB_FLAG:uint = 0x00070019
		//facebook社群活动
		//邀请好友
		public static const CMD_PLAT_ACTIVITY_INVITE_QUERY	:uint		= 0x00200101;  //查询 ProtoPlatActivityInviteQueryReq ProtoPlatActivityInviteQueryRsp
		public static const CMD_PLAT_ACTIVITY_INVITE_AWARD	:uint		= 0x00200102;  //领礼包 ProtoPlatActivityInviteAwardReq ProtoPlatActivityInviteAwardRsp
		public static const CMD_PLAT_ACTIVITY_INVITE_REPORT	:uint		= 0x00200103;  //上报 ProtoPlatActivityInviteReportReq ProtoPlatActivityInviteReportRsp
		//好友分享
		public static const CMD_PLAT_ACTIVITY_SHARE_QUERY	:uint		= 0x00200104;  //查询 ProtoPlatActivityShareQueryReq ProtoPlatActivityShareQueryRsp
		public static const CMD_PLAT_ACTIVITY_SHARE_AWARD	:uint		= 0x00200105;  //领礼包 ProtoPlatActivityShareAwardReq ProtoPlatActivityShareAwardRsp
		public static const CMD_PLAT_ACTIVITY_SHARE_REPORT	:uint		= 0x00200106;  //上报 ProtoPlatActivityShareReportReq ProtoPlatActivityShareReportRsp
		//点赞
		public static const CMD_PLAT_ACTIVITY_LIKE_QUERY	:uint		= 0x00200107;  //查询 ProtoPlatActivityLikeQueryReq ProtoPlatActivityLikeQueryRsp
		public static const CMD_PLAT_ACTIVITY_LIKE_AWARD	:uint		= 0x00200108;  //领礼包 ProtoPlatActivityLikeAwardReq ProtoPlatActivityLikeAwardRsp
		public static const CMD_PLAT_ACTIVITY_LIKE_REPORT	:uint		= 0x00200109;  //上报 ProtoPlatActivityLikeReportReq ProtoPlatActivityLikeReportRsp
		//查询提醒
		public static const CMD_PLAT_ACTIVITY_COMMUNITY_QUERY:uint        = 0x00200006;   //社群活动查询 ProtoPlatActivityCommunityQueryReq ProtoPlatActivityCommunityQueryRsp
		//台服新增  —— 每日限购活动
		public static const CMD_ACTIVITY_DAILY_PURCHASE_QUERY	:uint		= 0x00101000;  //查询 ProtoDailyPurchaseQueryReq ProtoDailyPurchaseRsp
		public static const CMD_ACTIVITY_DAILY_PURCHASE_REQ	:uint		= 0x00101001;  //领礼包 ProtoDailyPurchaseReq ProtoDailyPurchaseRsp
		//0x0010101x 开服7日充值返利活动(810001)
		public static const CMD_ACTIVITY_OPEN_SERVICE_RECHARGE_REBATE_QUERY:uint = 0x00101010;  // 查询 EmptyMessage ProtoOpenServiceRechargeRebateRsp
		public static const CMD_ACTIVITY_OPEN_SERVICE_RECHARGE_REBATE_AWARD:uint = 0x00101011;  // 领奖 EmptyMessage ProtoOpenServiceRechargeRebateRsp
		//810005, 开服7日忍者招募
		public static const CMD_ACTIVITY_OPEN_SERVICE_RECRUIT_QUERY:uint         = 0x00100ab0;  //查询 EmptyMessage ProtoOpenServiceRecruitQueryRsp
		public static const CMD_ACTIVITY_OPEN_SERVICE_RECRUIT_AWARD:uint         = 0x00100ab1;  //领礼包 ProtoOpenServiceRecruitAwardReq ProtoOpenServiceRecruitAwardRsp
		
		//0x001003cx 开服抽奖活动(810006)
		public static const CMD_ACTIVITY_OPEN_SERVICE_LUCKY_WHEEL_QUERY:uint         = 0x00100ac0;  //查询 EmptyMessage ProtoOpenServiceLuckyWheelRsp
		public static const CMD_ACTIVITY_OPEN_SERVICE_LUCKY_WHEEL_DRAW:uint          = 0x00100ac1;  //抽奖 EmptyMessage ProtoOpenServiceLuckyWheelRsp
		
		//0x001003dx 日常消费抽奖活动(810007)
		public static const CMD_ACTIVITY_NORMAL_LUCKY_WHEEL_QUERY:uint         = 0x00100ad0;  //查询 EmptyMessage ProtoNormalLuckyWheelRsp
		public static const CMD_ACTIVITY_NORMAL_LUCKY_WHEEL_DRAW:uint          = 0x00100ad1;  //抽奖 EmptyMessage ProtoNormalLuckyWheelRsp
		
		//20150818限时通灵
		public static const CMD_ACTIVITY_LIMIT_SUMMON_V2_QUERY:uint				=	0x001004b1;		//活动查询 
		public static const CMD_ACTIVITY_LIMIT_SUMMON_V2_AWARD:uint				=	0x001004b2;		//领取奖励
		
		
		//    幸运礼盒(810009)
		public static const CMD_ACTIVITY_LUCKY_PKG_QUERY:uint				= 0x00101008;	//查询 EmptyMessage  ProtoLuckyPkgQueryRsp
		public static const CMD_ACTIVITY_LUCKY_PKG_REFRESH:uint			= 0x00101009;	//领奖 EmptyMessage  ProtoLuckyPkgQueryRsp
		public static const CMD_ACTIVITY_LUCKY_PKG_AWARD:uint				= 0x0010100a;	//领奖 ProtoLuckyPkgAwardReq  ProtoLuckyPkgQueryRsp
		public static const CMD_ACTIVITY_LUCKY_PKG_INNER_REPORT:uint	  = 0x0010100b;	//内部上报 ProtoInnerCommonReportReq
		//    通灵活动(810010)
		public static const CMD_ACTIVITY_SUMMON_QUERY:uint			= 0x00101005;	//查询 EmptyMessage  ProtoSummonActQueryRsp
		public static const CMD_ACTIVITY_SUMMON_AWARD:uint			= 0x00101006;	//领奖 ProtoSummonActAwardReq  ProtoSummonActQueryRsp

		//等级特惠礼包
		public static const CMD_ACTIVITY_TH_GIFT_BAG_QUERY:uint		= 0x00101040;  //查询 EmptyMessage ProtoTHGiftBagRsp
		public static const CMD_ACTIVITY_TH_GIFT_BAG_AWARD:uint		= 0x00101041;  //领奖 ProtoTHGiftBagAwardReq ProtoTHGiftBagRsp
		public static const CMD_ACTIVITY_TH_GIFT_BAG_BUY:uint			= 0x00101042;  //领奖 ProtoTHGiftBagBuyReq ProtoTHGiftBagRsp
    }
}