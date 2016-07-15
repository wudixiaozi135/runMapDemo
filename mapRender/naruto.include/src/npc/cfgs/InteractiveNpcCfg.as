package npc.cfgs
{
	
	
	public class InteractiveNpcCfg extends BaseNpcCfg
	{
		public var triggerRange:int;//触发范围
		public var triggermsg:String;//触发前确认提示内容
		public var trigertype:int;//1不需要拾取框，2需要拾取框
		public var triggerTime:int;//触发吟唱时间
		public var singContent:String;  //吟唱提示信息
		//public var triggerGift:Array;    //触发后获得物品
		//public var giftDrop:Array;   //触发后获得物品掉落库
		public var changeModel:int;  //触发后状态ID
		public var openable:Boolean = true;//是否打开过
		public var speed:int;
		public var appearClientId:uint;	// 点击采集后变形产生的新路人
		
		public function InteractiveNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			name = xml.@name;
			title = xml.@title;
			moveRate = xml.@moveRate;
			moveRange = xml.@moveRange;
			speed = xml.@speed;
			triggerRange = xml.@triggerRange;
			triggermsg = xml.@triggermsg;
			trigertype = xml.@triggertype;
			triggerTime = xml.@triggerTime;
			singContent = xml.@singContent;
			changeModel = xml.@changeModel;
			appearClientId = parseInt(xml.@appearClientId);
		}
	}
}