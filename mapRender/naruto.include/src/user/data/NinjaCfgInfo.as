package user.data
{
	public class NinjaCfgInfo
	{
		public var ninjaId:uint; //忍者ID
		public var type:int;//类型
		public var name:String;  //忍者名字
		public var title:String //忍者的称号
		public var artisticId:uint;//美术编号
		public var awakenSkillNum:uint;   //忍者施放奥义技所需的奥义球个数，如果没有奥义技，该值为0
		public var levelType:int;  //忍者采用的等级体系类型
		public var occupyWidth:uint;  //战斗时占位宽度
		public var occupyHeight:uint; //战斗时占位高度
		
		public var baseLife:uint; //生命基础值
		public var growthLife:uint;  //生命成长值
		public var baseBodyAttack:uint; //攻击基础值
		public var growthBodyAttack:uint;  //攻击成长值
		public var baseBodyDefense:uint; //防御基础值
		public var growthBodyDefense:uint;  //防御成长值
		public var baseNinjaAttack:uint; //忍术基础值
		public var growthNinjaAttack:uint;  //忍术成长值
		public var baseNinjaDefense:uint; //抗性基础值
		public var growthNinjaDefense:uint;  //抗性成长值
	
		public var baseSpeed:uint; //速度基础值
		public var baseCrit:uint; //暴击基础值
		public var baseBodyStrike:uint; //物攻穿透基础值
		public var baseNinjaStrike:uint; //忍术穿透基础值
//		public var baseChakraRecover:uint; //查克拉恢复基础值
		public var continuousStrikeRate:uint; //连击率
		
		public var fireResist:int; //火抗
		public var windResist:int; //风抗
		public var thunderResist:int; //雷抗
		public var soilResist:int; //土抗
		public var waterResist:int; //水抗
		
		public var mapSkill:int; //地图技能
		public var starLevel:int; //忍者星级	
		public var statePhase:int; //状态阶段
		public var assembleCondition:String; //集结需要忍者ID与等级
		public var comeFrom:String; //所属
		public var showProperties:Array;//属性显示
		
		public var property:int; //属性
		public var career:int; //职业
		public var equipNum:int; //装备个数
		public var description:String; //特征描述
		public var attributeDescription:String;//属性特征
		public var rareness:int; //稀有度,C1,B2,A3,S4,SS5
		/**
		 * 获取途 
		 * AddBy:Georgehu
		 */
		public var achievedWay:String;
		
		public function NinjaCfgInfo():void
		{
			
		}
	}
}