package guild.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	
	import def.ModelDef;
	
	public class GuildBaseModel extends BaseModel
	{
		/**
		 * 组织地图里需要隐藏的NpcId，是listId
		 */
		public var guildSceneIgnoreNpcId:int;
		
		public function GuildBaseModel()
		{
			super(ModelDef.GUILD_BASE);
		}
	}
}