package user.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import def.ModelDef;
	
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaInfo;
	
	import skill.data.SkillInfo;
	
	import user.data.UserInfo;
	import user.def.UserModelKeyDef;
	
	public class UserModel extends BaseModel
	{
		private var userInfoMap:Vector.<UserInfo> = new Vector.<UserInfo>();
		
		public function UserModel()
		{
			super(ModelDef.USER);
		}
		
		public function updateUserInfo(userInfo:UserInfo):void
		{
			var old:UserInfo;
			
			old = getUserInfo(userInfo.uin, userInfo.role, userInfo.svrId);
			userInfo.dispathBaseUpdate();
			
			this.dispModelEvent(ModelEvent.UPDATE, UserModelKeyDef.USER_INFO, old, userInfo);
		}
		
		public function updateUserDetail(uin:uint, role:int, svrId:int, ninjaInfoList:Vector.<NinjaInfo>, formationInfo:FormationInfo):void
		{
			var userInfo:UserInfo;
			
			userInfo = getUserInfo(userInfo.uin, userInfo.role, userInfo.svrId);
			if(userInfo == null)
			{
				return ;
			}
			
			userInfo.formationInfo = formationInfo;
			userInfo.ninjaInfoList = ninjaInfoList;
			userInfo.dispathNinjaUpdate();
			this.dispModelEvent(ModelEvent.UPDATE, UserModelKeyDef.USER_DETAIL, userInfo, userInfo);
		}
		
		public function removeUserInfo(uin:uint, role:int, svrId:int):void
		{
			var userInfo:UserInfo;
			
			userInfo = getUserInfo(userInfo.uin, userInfo.role, userInfo.svrId);
			if(userInfo)
			{
				userInfoMap.splice(userInfoMap.indexOf(userInfo), 1);
				dispModelEvent(ModelEvent.REMOVE, UserModelKeyDef.USER_INFO, userInfo, null);
			}
		}
		
		public function updateUserSkill(uin:uint, role:int, svrId:int, skillInfo:SkillInfo):void
		{
			var userInfo:UserInfo;
			
			userInfo = getUserInfo(userInfo.uin, userInfo.role, userInfo.svrId);
			if(userInfo == null)
			{
				return ;
			}
			
			userInfo.skillInfo = skillInfo;
			this.dispModelEvent(ModelEvent.UPDATE, UserModelKeyDef.USER_SKILL, userInfo, userInfo);
		}
		
		public function updateUserSkillLearnIds(uin:uint, role:int, svrId:int, learnIds:Array):void
		{
			var userInfo:UserInfo;
			
			userInfo = getUserInfo(userInfo.uin, userInfo.role, userInfo.svrId);
			if(userInfo == null)
			{
				return ;
			}
			
			userInfo.skillInfo.learnedSkillId = learnIds;
			this.dispModelEvent(ModelEvent.UPDATE, UserModelKeyDef.USER_SKILL_LEARN_IDS, userInfo, userInfo);
		}
		
		public function updateUserNinjaSkillPositionList(uin:uint, role:int, svrId:int, ninjaSeq:uint, skillPositionInfos:Array):void
		{
			var userInfo:UserInfo = getUserInfo(userInfo.uin, userInfo.role, userInfo.svrId);
			if(userInfo == null)
			{
				return;
			}
			
			for each(var ninja:NinjaInfo in userInfo.ninjaInfoList)
			{
				if(ninja.sequence == ninjaSeq)
				{
//					ninja.skillInfo.skillPositionInfos = skillPositionInfos;
					this.dispModelEvent(ModelEvent.UPDATE, UserModelKeyDef.USER_SKILL_NINJA_SKILL_POSITION_INFOS, skillPositionInfos, skillPositionInfos);
					break;
				}
			}
		}
		
		public function setUserInfo(userInfo:UserInfo):void
		{
			if(userInfoMap.indexOf(userInfo) != -1){return ;}
			
			userInfoMap.push(userInfo);
		}
		
		public function getUserInfo(uin:uint, role:int, svrId:int):UserInfo
		{
			var checkUserInfo:UserInfo;
			var userInfo:UserInfo;
			
			for(var i:int = 0;i < userInfoMap.length;i ++)
			{
				checkUserInfo = userInfoMap[i];
				if(checkUserInfo.uin == uin && checkUserInfo.role == role && checkUserInfo.svrId == svrId)
				{
					userInfo = checkUserInfo;
					break;
				}
			}
			
			if(userInfo == null)
			{
				userInfo = new UserInfo();
				userInfo.uin = uin;
				userInfo.role = role;
				userInfo.svrId = svrId;
				userInfoMap.push(userInfo);
				
//				new RequestUserDetailCommand(uin).call();
//				new RequestUserInfoCommand(uin).call();
			}
			
			return userInfo;
		}
		
		
	}
}