package skill.config
{
	public class TalentCfg
	{
		public var id:uint;
		public var name:String;
		public var category:int;
		public var group:int;
		public var unlockType:int;
		public var unlockLevel:int;
		public var desc:String;
		public var skillId:int;
		
		public function TalentCfg()
		{
			
		}
		
		public function parse(xml:XML):void
		{
			id = xml.@id;
			name = xml.@name;
			desc = xml.@desc;
			category = xml.@category;
			group = xml.@cdgroup
			unlockType = xml.@unlockType;
			unlockLevel = xml.@unlockLevel;
			skillId = xml.@skillId;
		}
	}
}