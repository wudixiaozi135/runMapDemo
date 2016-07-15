package com.tencent.morefun.naruto.plugin.motion.manager.scene
{

	import com.tencent.morefun.framework.loader.FileManager;
	import com.tencent.morefun.naruto.plugin.motion.MotionUrlFix;
	import com.tencent.morefun.naruto.plugin.motion.data.EnchantmentInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.ScenePointInfo;
	import flash.geom.Point;
	import flash.utils.Dictionary;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SceneConfig
	{
		[StaticAutoDestroy]
		
		public static var MAX_ROW:int = 9;
		public static var MAX_COL:int = 3;
		
		public static var configXml:XML;
		public static var scenePictureXml:XML;
		public static var scenePositionXml:XML;
		public static var sceneEffectXml:XML;
		public static var sceneEnchatmentXml:XML;
		public static var inited:Boolean;
		public static var selfInLeft:Boolean;
		
		private static var sceneInfoMap:Dictionary;
		private static var enchantmentInfoMap:Dictionary;
		private static var ninjaBingdingSceneMap:Dictionary;
		
		private static var _sceneId:int;
		
		private static var _positionPosMap:Dictionary;
		private static var _gridPosMap:Dictionary;
		
		public function SceneConfig()
		{
			
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		private static function init():void
		{
			var sceneInfo:SceneInfo;
			
			var point:Point;
			var positionInfo:ScenePointInfo;
			var positionInfoMap:Dictionary = new Dictionary();
			
			var sceneWithstandList:XMLList;
			var sceneBeatBackList:XMLList;
			var sceneLeftList:XMLList;
			var sceneRightList:XMLList;
			
			var enchantmentInfo:EnchantmentInfo;
			
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			sceneInfoMap = new Dictionary();
			enchantmentInfoMap = new Dictionary();
			ninjaBingdingSceneMap = new Dictionary();
			
			_positionPosMap = new Dictionary();
			_gridPosMap = new Dictionary();
			
			for each(var positionInfoObj:Object in scenePositionXml.PtLink)
			{
				positionInfo = new ScenePointInfo();
				positionInfo.id = positionInfoObj.@id;
				positionInfo.horLen = positionInfoObj.@horLen;
				positionInfo.ptLen = positionInfoObj.@ptLen;
				positionInfo.mirror = String(positionInfoObj.@mirror) == "true";
				
				sceneWithstandList = positionInfoObj.Withstand;
				for each(var withstandPtInfo:Object in sceneWithstandList..Pt)
				{
					point = new Point(withstandPtInfo.@x, withstandPtInfo.@y);
					positionInfo.withstandPt[String(withstandPtInfo.@id)] = point;
				}
				
				sceneBeatBackList = positionInfoObj.BeatBack;
				for each(var beatbackPtInfo:Object in sceneBeatBackList..Pt)
				{
					point = new Point(beatbackPtInfo.@x, beatbackPtInfo.@y);
					positionInfo.beatBackPt[String(beatbackPtInfo.@id)] = point;
				}
				
				sceneLeftList = positionInfoObj.Left;
				for each(var leftPtInfo:Object in sceneLeftList..Pt)
				{
					point = new Point(leftPtInfo.@x, leftPtInfo.@y);
					positionInfo.leftPt[String(leftPtInfo.@id)] = point;
				}
				
				sceneRightList = positionInfoObj.Right;
				for each(var rightPtInfo:Object in sceneRightList..Pt)
				{
					point = new Point(rightPtInfo.@x, rightPtInfo.@y);
					positionInfo.right[String(rightPtInfo.@id)] = point;
				}
				
				positionInfoMap[positionInfo.id] = positionInfo;
			}
			
			var sceneEffectInfo:XMLList;
			var bingdingNinjaList:Array;
			for each(var sceneInfoObj:Object in scenePictureXml.ScenePicture)
			{
				sceneEffectInfo = sceneEffectXml.ScenePicture.(@id == sceneInfoObj.@id);
				if(String(sceneInfoObj.@bindingNinja) != "")
				{
					bingdingNinjaList = String(sceneInfoObj.@bindingNinja).split(",");
					for each(var ninjaId:int in bingdingNinjaList)
					{
						ninjaBingdingSceneMap[ninjaId] = int(sceneInfoObj.@id);
					}
				}
				
				for(var i:int = 0;i < 2;i ++)
				{
					sceneInfo = new SceneInfo();
					sceneInfo.id = (i == 0)?String(sceneInfoObj.@id) + "left":String(sceneInfoObj.@id) + "right";
					sceneInfo.key = (String(sceneInfoObj.@key) != "")?String(sceneInfoObj.@key):null;
					sceneInfo.btye = sceneInfoObj.@btye;
					sceneInfo.res = MotionUrlFix.fix(sceneInfoObj.@resname);
					sceneInfo.speedLineEffectIds = String(sceneInfoObj.@speedLineEffects).split(",");
					if(sceneEffectInfo.length() == 0)
					{
						sceneInfo.environmentEffect =  String(sceneEffectXml.@defaultEnvironmentEffect);
					}
					else
					{
						sceneInfo.environmentEffect = String(sceneEffectInfo[0].@environmentEffect);
					}
					
					sceneInfo.environmentEffect = FileManager.getQualifiedUrl(sceneInfo.environmentEffect);
					sceneInfo.positionInfo = (i == 0)?positionInfoMap[String(sceneInfoObj.@leftPt)]:positionInfoMap[String(sceneInfoObj.@rightPt)];
					sceneInfoMap[sceneInfo.id] = sceneInfo;
				}
			}
			
			for each(var enchantmentObj:Object in sceneEnchatmentXml.EnchantmentInfo)
			{
				enchantmentInfo = new EnchantmentInfo();
				enchantmentInfo.id = enchantmentObj.@id;
				enchantmentInfo.res = MotionUrlFix.fix(enchantmentObj.@res);
				enchantmentInfo.color = enchantmentObj.@color;
				enchantmentInfoMap[enchantmentInfo.id] = enchantmentInfo;
			}
			
			for each(var posInfo:Object in scenePositionXml.PosToGrid.PosInfo)
			{
				var colMap:Dictionary;
				
				colMap = _positionPosMap[int(posInfo.@row)];
				if(colMap == null)
				{
					colMap = new Dictionary();
					_positionPosMap[int(posInfo.@row)] = colMap;
				}
				
				colMap[int(posInfo.@col)] = int(posInfo.@pos);
				
				_gridPosMap[int(posInfo.@pos)] = new Point(int(posInfo.@col), int(posInfo.@row));
			}
		}
		
		public static function getNinjaBingdingScene(ninjaId:int):int
		{
			return ninjaBingdingSceneMap[ninjaId];
		}
		
		public static function getSide(servPos:int):Boolean
		{
			return servPos < 100;
		}
		
		public static function getPosIsServerLeft(servPos:int):Boolean
		{
			var sceneInfo:SceneInfo;
			var positionInfo:ScenePointInfo;
			
			sceneInfo = getSceneInfo(sceneId);
			if(sceneInfo == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4257_0") + sceneId + I18n.lang("as_motion_1451031573_4257_1"));
			}
			positionInfo = sceneInfo.positionInfo;
			
			if(positionInfo.mirror)
			{
				return servPos >= 100;
			}
			else
			{
				return servPos < 100;
			}
		}
		
		public static function getPosByServPos(servPos:int):int
		{
			return (servPos >= 100)?servPos - 100:servPos;
		}
		
		public static function set sceneId(value:int):void
		{
			_sceneId = value;
		}
		
		public static function get sceneId():int
		{
			return _sceneId;
		}
		
		public static function getCurSceneInfo():SceneInfo
		{
			init();
			
			if(selfInLeft)
			{
				return sceneInfoMap[_sceneId  + "left"];
			}
			else
			{
				return sceneInfoMap[_sceneId  + "right"];
			}
		}
		
		public static function getPositionInfo(pos:int):Point
		{
			var sceneInfo:SceneInfo;
			var positionInfo:ScenePointInfo;
			var isLeft:Boolean;
			
			sceneInfo = getSceneInfo(_sceneId);
			positionInfo = sceneInfo.positionInfo;
			//			if(positionInfo.mirror)
			//			{
			//				isLeft = pos >= 100;
			//				pos = (isLeft)?pos - 100:pos + 100;
			//			}
			//			else
			//			{
			//				isLeft = pos < 100;
			//			}
			
			isLeft = pos < 100
			
			if(isLeft)
			{
				return positionInfo.leftPt[pos];
			}
			else
			{
				return positionInfo.right[pos - 100];
			}
		}
		
		public static function getSceneInfo(scene:int):SceneInfo
		{
			init();
			
			if(selfInLeft)
			{
				return sceneInfoMap[scene  + "left"];
			}
			else
			{
				return sceneInfoMap[scene  + "right"];
			}
		}
		
		public static function getEnchantmentInfo(id:int):EnchantmentInfo
		{
			init();
			
			return enchantmentInfoMap[id];
		}
		
		public static function getPosByGrid(row:int, col:int):int
		{
			init();
			
			return _positionPosMap[row][col];
		}
		
		public static function getGridByPos(pos:int):Point
		{
			return _gridPosMap[pos];
		}
		
		public static function isBeatbackEffectPos(beatbackPos:int, currentPos:int):Boolean
		{
			var beatbackPt:Point;
			var currentPt:Point;
			
			beatbackPt = _gridPosMap[beatbackPos];
			currentPt = _gridPosMap[currentPos];
			
			if(beatbackPos == currentPos)
			{
				return false;
			}
			
			if(beatbackPt.y != currentPt.y)
			{
				return false;
			}
			
			return beatbackPt.x > currentPt.x;
		}
		
		public static function getTeamVerticalPos(pos:int):int
		{
			var team:int;
			var relativelyPos:int;
			var relativelyVerticalPos:int;
			var offset:int;
			var isLeft:Boolean;
			var sceneInfo:SceneInfo;
			var positionInfo:ScenePointInfo;
			
			sceneInfo = getSceneInfo(_sceneId);
			positionInfo = sceneInfo.positionInfo;
			if(positionInfo.mirror)
			{
				isLeft = pos >= 100;
				pos = (isLeft)?pos - 100:pos + 100;
			}
			else
			{
				isLeft = pos < 100;
			}
			
			relativelyPos = (pos >= 100)?pos - 100:pos;
			team = Math.floor(relativelyPos / 9);
			
			offset = relativelyPos % 9 % 3;
			
			switch(offset)
			{
				case 0:
					relativelyVerticalPos = team * 9 + 3;
					break;
				case 1:
					relativelyVerticalPos = team * 9 + 4;
					break;
				case 2:
					relativelyVerticalPos = team * 9 + 5;
					break;
			}
			
			relativelyVerticalPos += (pos >= 100)?100:0;
			return relativelyVerticalPos;
		}
		
		public static function getTeamPos(pos:int):int
		{
			var relativelyPos:int;
			var relativelyTeamPos:int;
			var offset:int;
			var isLeft:Boolean;
			var sceneInfo:SceneInfo;
			var positionInfo:ScenePointInfo;
			
			sceneInfo = getSceneInfo(_sceneId);
			positionInfo = sceneInfo.positionInfo;
			if(positionInfo.mirror)
			{
				isLeft = pos >= 100;
				pos = (isLeft)?pos - 100:pos + 100;
			}
			else
			{
				isLeft = pos < 100;
			}
			
			relativelyPos = (pos >= 100)?pos - 100:pos;
			offset = Math.floor(relativelyPos / 9);
			
			switch(offset)
			{
				case 0:
					relativelyTeamPos = 4;
					break;
				case 1:
					relativelyTeamPos = 13;
					break;
				case 2:
					relativelyTeamPos = 22;
					break;
			}
			
			relativelyTeamPos += (pos >= 100)?100:0;
			
			return relativelyTeamPos;
		}
		
		public static function getVerticalPos(pos:int):int
		{
			var relativelyPos:int;
			var relativelyVerticalPos:int;
			var offset:int;
			var isLeft:Boolean;
			var sceneInfo:SceneInfo;
			var positionInfo:ScenePointInfo;
			
			sceneInfo = getSceneInfo(_sceneId);
			positionInfo = sceneInfo.positionInfo;
			if(positionInfo.mirror)
			{
				isLeft = pos >= 100;
				pos = (isLeft)?pos - 100:pos + 100;
			}
			else
			{
				isLeft = pos < 100;
			}
			
			relativelyPos = (pos >= 100)?pos - 100:pos;
			offset = relativelyPos % 3;
			
			switch(offset)
			{
				case 0:
					relativelyVerticalPos = 3;
					break;
				case 1:
					relativelyVerticalPos = 4;
					break;
				case 2:
					relativelyVerticalPos = 5;
					break;
			}
			
			relativelyVerticalPos += (pos >= 100)?100:0;
			
			return relativelyVerticalPos;
		}
		
		public static function getHorizontalPos(pos:int):int
		{
			var relativelyPos:int;
			var relativelyHorizontalPos:int;
			var horizontalIndex:int;
			var isLeft:Boolean;
			var sceneInfo:SceneInfo;
			var positionInfo:ScenePointInfo;
			
			sceneInfo = getSceneInfo(_sceneId);
			positionInfo = sceneInfo.positionInfo;
			if(positionInfo.mirror)
			{
				isLeft = pos >= 100;
				pos = (isLeft)?pos - 100:pos + 100;
			}
			else
			{
				isLeft = pos < 100;
			}
			
			relativelyPos = (pos >= 100)?pos - 100:pos;
			horizontalIndex = Math.floor(relativelyPos / 3);
			//			relativelyHorizontalPos = horizontalIndex
			relativelyHorizontalPos = horizontalIndex * 3 + 1;
			relativelyHorizontalPos += (pos >= 100)?100:0;
			
			return relativelyHorizontalPos;
		}
	
															
		public static function autoSetNull():void
		{

			configXml = null;
			scenePictureXml = null;
			scenePositionXml = null;
			sceneEffectXml = null;
			sceneEnchatmentXml = null;
			sceneInfoMap = null;
			enchantmentInfoMap = null;
			ninjaBingdingSceneMap = null;
			_positionPosMap = null;
			_gridPosMap = null;
		}
	}
}