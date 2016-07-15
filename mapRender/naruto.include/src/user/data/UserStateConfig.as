package user.data
{
	import com.tencent.morefun.naruto.util.StateInfo;
	
	import flash.utils.Dictionary;

	public class UserStateConfig
	{
		public static var xml:XML;
		private static var stateCfgInfoMap:Dictionary = new Dictionary();
		private static var inited:Boolean;
		
		public function UserStateConfig()
		{
			
		}
		
		private static function init():void
		{
			var i:int;
			
			var stateCfgInfo:UserStateCfgInfo;
			
			var baseStateInfoList:XMLList;
			var baseStateRefInfo:XMLList;
			var baseStateInfoObj:Object;
			var baseStateRefInfoObj:Object;
			
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			baseStateInfoList = xml.StateInfo.BaseStateInfo;
			baseStateRefInfo = xml.RefInfo.BaseStateRefInfo;
			
			var stateId:int;
			var stateName:String;
			var stateConflictList:Array;
			for(i = 0;i < baseStateInfoList.length();i ++)
			{
				stateCfgInfo = new UserStateCfgInfo();
				
				baseStateInfoObj = baseStateInfoList[i];
				stateId = baseStateInfoObj.@id;
				stateName = baseStateInfoObj.@name;
				if(String(baseStateInfoObj.@conflictList) != "")
				{
					stateConflictList = String(baseStateInfoObj.@conflictList).split(",");
				}
				else
				{
					stateConflictList = [];
				}
				
				if(String(baseStateInfoObj.@bindingList) != "")
				{
					stateCfgInfo.bindingList = String(baseStateInfoObj.@bindingList).split(",");
				}
				else
				{
					stateCfgInfo.bindingList = [];
				}
				
				stateCfgInfo.id = stateId;
				stateCfgInfo.name = stateName;
				stateCfgInfo.conflictList = stateConflictList;
				stateCfgInfoMap[stateCfgInfo.id] = stateCfgInfo; 
			}
			
			for(i = 0;i < baseStateRefInfo.length();i ++)
			{
				baseStateRefInfoObj = baseStateRefInfo[i];
				
				stateId = baseStateRefInfoObj.@id;
				stateCfgInfo = stateCfgInfoMap[stateId];
				if(String(baseStateRefInfoObj.@trueStateRefList) != "")
				{
					stateCfgInfo.trueRefList = String(baseStateRefInfoObj.@trueStateRefList).split(",");
				}
				else
				{
					stateCfgInfo.trueRefList = [];
				}
				if(String(baseStateRefInfoObj.@falseStateRefList) != "")
				{
					stateCfgInfo.falseRefList = String(baseStateRefInfoObj.@falseStateRefList).split(",");
				}
				else
				{
					stateCfgInfo.falseRefList = [];
				}
			}
		}
		
		public static function getUserStateInfo():StateInfo
		{
			var stateInfo:StateInfo;
			var stateConflictList:Array;
			var trueRefList:Array;
			var falseRefList:Array;
			
			init();
			
			stateInfo = new StateInfo();
			for each(var stateCfgInfo:UserStateCfgInfo in stateCfgInfoMap)
			{
				stateInfo.setFlagName(stateCfgInfo.name, stateCfgInfo.id);
				stateInfo.addFlagConflictInfo(stateCfgInfo.id, stateCfgInfo.conflictList);
				
				if(stateCfgInfo.trueRefList != null)
				{
					stateInfo.addFlagRef(stateCfgInfo.id, [], stateCfgInfo.trueRefList);
				}
				
				if(stateCfgInfo.bindingList != null)
				{
					stateInfo.addBindingInfo(stateCfgInfo.id, stateCfgInfo.bindingList);
				}
			}
			
			stateInfo.checkRef();
			
			return stateInfo;
		}
			
	}
}