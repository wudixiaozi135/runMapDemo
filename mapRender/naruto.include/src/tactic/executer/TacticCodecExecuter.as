package tactic.executer 
{
	import bag.conf.BagItemConf;
	import bag.data.ItemData;
	import base.CommandExecuter;
	import serverProto.tactic.ProtoTacticInfo;
	import serverProto.tactic.ProtoTacticStanceInfo;
	import tactic.model.data.TacticInfo;
	import tactic.model.data.TacticPositionInfo;
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/21 20:20
	 */
	public class TacticCodecExecuter extends CommandExecuter
	{
		
		/**
		 * 构造函数
		 * create a [TacticCodecExecuter] object
		 */
		public function TacticCodecExecuter(pluginName:String) 
		{
			super(pluginName);
		}
		
		protected function decodeTacticInfo(protoTactic:ProtoTacticInfo):TacticInfo
		{
			var tactic:TacticInfo = new TacticInfo();
			tactic.index = protoTactic.index;
			tactic.name = protoTactic.name;
			tactic.level = protoTactic.level;
			tactic.levelUpReelCount = protoTactic.levelUpNeedReelCount;
			tactic.levelUpAvailable = protoTactic.canLevelUp;
			
			tactic.reals = new Vector.<ItemData>();
			for each(var id:uint in protoTactic.itemIdList)
			{
				tactic.reals.push(BagItemConf.findDataById(id, false));
			}
			
			tactic.positions = new Vector.<TacticPositionInfo>();
			for each(var protoPosition:ProtoTacticStanceInfo in protoTactic.stanceList)
			{
				var pos:TacticPositionInfo = new TacticPositionInfo();
				pos.index = protoPosition.pos;
				pos.type = protoPosition.additionType;
				pos.addition = protoPosition.additionVal;
				pos.nextLevelAddtion = protoPosition.nextLevelAdditionVal;
				tactic.positions.push(pos);
			}
			
			return tactic;
		}
	}

}