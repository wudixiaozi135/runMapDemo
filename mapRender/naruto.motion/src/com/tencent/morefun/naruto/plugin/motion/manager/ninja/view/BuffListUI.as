package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{
	import com.tencent.morefun.naruto.plugin.exui.base.Image;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffGroupInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfo;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.text.TextField;
	import ui.motion.BuffIconList;
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

	public class BuffListUI extends Sprite
	{
		private static const ICON_NUM:int = 5;
		private static const ICON_SIZE_WIDTH:int = 17;
		private static const ICON_SIZE_HEIGHT:int = 17;
		
		private var res:BuffIconList;
		
		private var buffIconList:Array = new Array();
		
		private var _ninjaX:int;
		private var _ninjaY:int;
		
		public function BuffListUI()
		{
			super();
			
			res = new BuffIconList();
			res.x -= res.width / 2;
			addChild(res);
			
			var image:Image;
			for(var i:int = 0;i < ICON_NUM;i ++)
			{
				image = new Image();
				image.name = "image";
				getIcon(i).addChildAt(image, 0);
				getText(i).text = ""; 
			}
		}
		
		public function updateBuffIcon(buffInfoList:Array):void
		{
			var buffGroupList:Array;
			var buffInfo:BuffInfo;
			var iconIndex:int;
			var buffGroupInfo:BuffGroupInfo;
			var groupIconUrl:String;
			
			for(var i:int = 0;i < ICON_NUM;i ++)
			{
				getImage(i).dispose();
				getText(i).text = ""; 
			}
			
			buffGroupList = getBuffGroupList(buffInfoList);
			
			for(var j:int = 0;j < buffGroupList.length;j ++)
			{
				buffGroupInfo = buffGroupList[j];
				groupIconUrl = BuffConfig.getBuffGroupUrl(buffGroupInfo.id);
				getImage(iconIndex).load(groupIconUrl);
//				if(buffGroupInfo.overlay != 1)
//				{
					getText(iconIndex).text = buffGroupInfo.overlay.toString();
//				}
				iconIndex += 1;
				
				if(iconIndex > 4)
				{
					break;
				}
			}
		}
		
		private function getBuffGroupList(buffInfoList:Array):Array
		{
			var buffInfo:BuffInfo;
			var buffGroupInfo:BuffGroupInfo;
			var buffGroupList:Array = [];
			var buffGroup:int;
			
			for(var j:int = 0;j < buffInfoList.length;j ++)
			{
				buffInfo = buffInfoList[j];
				
				if(buffInfo.group == 0)
				{
					buffGroup = buffInfo.buffId;
					buffGroupInfo = getBuffGroupInfo(buffGroupList, buffGroup);
				}
				else
				{
					buffGroup = buffInfo.group;
					buffGroupInfo = getBuffGroupInfo(buffGroupList, buffGroup);
				}
				
				if(buffGroupInfo == null)
				{
					buffGroupInfo = new BuffGroupInfo();
					buffGroupInfo.id = buffGroup;
					buffGroupInfo.overlay = buffInfo.overlay;
					buffGroupList.push(buffGroupInfo);
				}
				else
				{
					buffGroupInfo.overlay += buffInfo.overlay;
				}
			}
			
			return buffGroupList;
		}
		
		private function getBuffGroupInfo(buffGroupList:Array, groupId:int):BuffGroupInfo
		{
			for each(var buffGroupInfo:BuffGroupInfo in buffGroupList)
			{
				if(buffGroupInfo.id == groupId)
				{
					return buffGroupInfo;
				}
			}
			
			return null;
		}
		
		private function getIcon(index:int):MovieClip
		{
			return res["icon" + index];
		}
		
		private function getImage(index:int):Image
		{
			return getIcon(index).getChildByName("image") as Image;
		}
		
		private function getText(index:int):TextField
		{
			return getIcon(index).getChildByName("text") as TextField;
		}
		
		public function set ninjaX(value:int):void
		{
			_ninjaX = value;
		}
		
		public function get ninjaX():int
		{
			return _ninjaX;
		}
		
		public function set ninjaY(value:int):void
		{
			_ninjaY = value;
		}
		
		public function get ninjaY():int
		{
			return _ninjaY;
		}
	
															
		public function autoSetNull():void
		{

			res = null;
			buffIconList = null;
		}
	}
}