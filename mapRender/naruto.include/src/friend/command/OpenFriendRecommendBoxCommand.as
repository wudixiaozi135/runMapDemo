package friend.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenFriendRecommendBoxCommand extends Command
	{
		public var recommendFriendInfoArr:Array;
		public var useListBox:Boolean;
		public var isGuildMember:Boolean;
		
		public function OpenFriendRecommendBoxCommand(recommendFriendInfoArr:Array=null, useListBox:Boolean = false, isGuildMember:Boolean = false)
		{
			super();
			this.recommendFriendInfoArr = recommendFriendInfoArr;
			this.useListBox = useListBox;
			this.isGuildMember = isGuildMember;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.FRIEND;
		}
	}
}