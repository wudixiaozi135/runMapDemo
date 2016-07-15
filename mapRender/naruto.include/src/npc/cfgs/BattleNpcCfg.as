package npc.cfgs
{
	import flash.geom.Matrix;
	import flash.geom.Point;
	
	import cfgData.dataStruct.BattleNpcCFG;
	
	

    import com.tencent.morefun.naruto.i18n.I18n;
	public class BattleNpcCfg extends BaseNpcCfg implements ITaskStateCheck
	{
		public var battleNpcType:int; // 战斗NPC的类型。查看：BattleNpcTypeDef 类
		public var level:int; //等级
		public var sentence:Array; //闲话数组
		public var revive:Boolean; //死亡一次是否消失；（复活）
		public var assignFight:int;  //常规触发定制战斗
		public var eliteAssignFight:int; //精英副本触发定制战斗
		public var initiativeAttack:Boolean;   //是否主动攻击玩家
		public var attackRange:int;   //攻击范围
		public var confirmbox:int;//是否要弹出确认框
		public var speed:int;//移动速度
		public var attackSpeed:int;//追击速度
		public var prewarConfirmation:String;//战前确认提示
		
		private var _defaultShow:Boolean;
		private var _doingTaskShow:String;//带有任务时可见
		private var _doingTaskHide:String;//带有任务时不可见
		private var _doneTaskShow:String;//完成任务后可见
		private var _doneTaskHide:String;//完成任务后不可见
		private var _receiveAbleTaskShow:String;//带有任务可接状态时可见
		private var _receiveAbleTaskHide:String;//带有任务可接状态时可见
		
		public function BattleNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			title = xml.@title;
			name = xml.@name;
			level = xml.@level;
			battleNpcType = xml.@battleNpcType;
			sentence = String(xml.@sentence).split("|");
			revive = (int(xml.@deadOneTime) == 0);
			assignFight = xml.@assignFight;
			eliteAssignFight = xml.@eliteAssignFight;
			moveRate = xml.@moveRate;
			moveRange = xml.@moveRange;
			initiativeAttack = (int(xml.@initiativeAttack) == 1);
			sightRange = xml.@sightRange;
			attackRange = xml.@attackRange;
			speed = xml.@speed;
			attackSpeed = xml.@attackSpeed;
			confirmbox = int(xml.@confirmbox);
			prewarConfirmation = xml.@prewarConfirmation;
			
			_defaultShow = String(xml.@defaultShow)=="1";
			_doingTaskShow = xml.@doingTaskShow;
			_doingTaskHide = xml.@doingTaskHide;
			_doneTaskShow = xml.@doneTaskShow;
			_doneTaskHide = xml.@doneTaskHide;
			_receiveAbleTaskShow = xml.@receiveAbleTaskShow;
			_receiveAbleTaskHide = xml.@receiveAbleTaskHide;
		}
		
		public function parse2(CFG:BattleNpcCFG):void
		{
			/*
			<NPC 
			--npcType="2" 
			--id="159" 
			--listId="30100012" 
			--roleId="19000701" 
			--res="assets/role/npc/scene/npcres/19000701_outdoor.swf" 
			idleActionName="idle_0" 
			destPoint="87, 115" 
			destPixelPoint="581, 2496" 
			startImgX="1" 
			endImgX="2" 
			startImgY="7" 
			endImgY="8" 
			--canMove="false" 
			--movePath="87, 115" 
			--matrix="1, 0, 0, 1" 
			subLayerIndex="1" 
			--name=I18n.lang("as_include_1451031572_3394") 
			--battleNpcType="1" 
			--title="" 
			--level="5" 
			--sentence=I18n.lang("as_include_1451031572_3395") 
			--deadOneTime="0" 
			--assignFight=I18n.lang("as_include_1451031572_3396") 
			--eliteAssignFight=I18n.lang("as_include_1451031572_3397") 
			--moveRate="4" 
			--moveRange="100" 
			--initiativeAttack="0" 
			--sightRange="100" 
			--attackRange="100" 
			--attackSpeed="13" 
			--speed="5" 
			--appearSceneType=I18n.lang("as_include_1451031572_3398") 
			confirmbox="0" 
			dialogueType="" 
			dialogueRate="" 
			dialogPossibility="" 
			dialogText1="" 
			dialogText2="" 
			dialogText3="" 
			dialogText4="" 
			dialogText5="" 
			defaultShow="1" 
			receiveAbleTaskShow="" 
			receiveAbleTaskHide="" 
			doingTaskShow="" 
			doingTaskHide="" 
			doneTaskShow="" 
			doneTaskHide=""/>
				*/

			roleId = CFG.roleId;
			res = "assets/role/npc/scene/npcres/" + roleId + "_outdoor.swf";
			matrix = new Matrix();
			
			idleActionName = "idle_0";
			dialogueType = CFG.dialogueType;
			dialogueRate = CFG.dialogueRate;
			dialogPossibility = CFG.dialogPossibility;
			subLayerIndex = 1;
			dialogTextList = [CFG.dialogText1,CFG.dialogText2,CFG.dialogText3,CFG.dialogText4,CFG.dialogText5];
			
			
			title = CFG.title;
			name = CFG.name;
			level = CFG.level;
			battleNpcType = CFG.battleNpcType;
			revive = (int(CFG.deadOneTime) == 0);
			moveRate = CFG.moveRate;
			moveRange = CFG.moveRange;
			initiativeAttack = (int(CFG.initiativeAttack) == 1);
			sightRange = CFG.sightRange;
			attackRange = CFG.attackRange;
			speed = CFG.speed;
			attackSpeed = CFG.attackSpeed;
			confirmbox = int(CFG.confirmbox);
			prewarConfirmation = CFG.prewarConfirmation;
			
			_defaultShow = CFG.defaultShow == 1;
			_doingTaskShow = CFG.doingTaskShow;
			_doingTaskHide = CFG.doingTaskHide;
			_doneTaskShow = CFG.doneTaskShow;
			_doneTaskHide = CFG.doneTaskHide;
			_receiveAbleTaskShow = CFG.receiveAbleTaskShow;
			_receiveAbleTaskHide = CFG.receiveAbleTaskHide;
		}
		
		public function get defaultShow():Boolean{return _defaultShow};
		public 	function get doingTaskShow():String{return _doingTaskShow};
		public function get doingTaskHide():String{return _doingTaskHide};
		public function get doneTaskShow():String{return _doneTaskShow};
		public function get doneTaskHide():String{return _doneTaskHide};
		public function get receiveAbleTaskShow():String{return _receiveAbleTaskShow};
		public function get receiveAbleTaskHide():String{return _receiveAbleTaskHide};
		
	}
}