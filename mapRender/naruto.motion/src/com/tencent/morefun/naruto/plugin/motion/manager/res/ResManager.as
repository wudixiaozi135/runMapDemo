package com.tencent.morefun.naruto.plugin.motion.manager.res
{
	import com.tencent.morefun.framework.net.pub;

	public class ResManager
	{
		//private static var requestMap:Dictionary = new Dictionary();
		//private static var completeMap:Dictionary = new Dictionary();
		//private var resutFunc:Function;
		//private var missionFunc:Function;
		
		public function ResManager()
		{
			
		}
		
		/**
		 * 获取战斗插件资源
		 */
		pub static var getPluginAsset:Function;
		public function getPluginAsset(name:String):*
		{
			if (pub::getPluginAsset != null)
			{
				return pub::getPluginAsset(name);
			}
			
			return null;
		}
		
		/**
		 *function(url:String) 
		 * @param value
		 * 
		 */		
		//public function setRequestFunc(value:Function):void
		//{
			//resutFunc = value;
		//}
		
		/**
		 * function(name:String) 
		 * @param name
		 * @return 
		 * 
		 */	
		//public function setGetMissionFunc(value:Function):void
		//{
			//missionFunc = value;
		//}
		
		//public function getMission(name:String):Mission
		//{
			//return missionFunc(name);
		//}
		
		//public function hasUrlMission(url:String):Boolean
		//{
			//return requestMap[url] || completeMap[url];
		//}
		
		//public function requestRes(urlList:Array, completeCallBack:Function = null, progressCallBack:Function = null, errorCallBack:Function = null):void
		//{
			//var url:String;
			//var requestList:Array;
			//var callbackList:Array;
			//var i:int;
			//
			//requestList = [];
			//
			//for(i = 0;i < urlList.length;i ++)
			//{
				//url = urlList[i];
				//if(completeMap[url] != null)
				//{
					//if(completeCallBack != null){completeCallBack(completeMap[url])};
					//continue ;
				//}
				//
				//requestList.push(url);
			//}
			//
			//for(i = 0;i < requestList.length; i ++)
			//{
				//url = requestList[i];
				//callbackList = requestMap[url];
				//if(callbackList == null)
				//{
					//callbackList = [];
					//requestMap[url] = callbackList;
					//if(completeCallBack != null)
					//{
						//callbackList.push({complete:completeCallBack, progress:progressCallBack, error:errorCallBack});
					//}
				//}
				//else
				//{
					//requestList.splice(i, 1);
					//
					//if(hasCallBackListener(completeCallBack, progressCallBack, errorCallBack, callbackList) == false)
					//{
						//callbackList.push({complete:completeCallBack, progress:progressCallBack, error:errorCallBack});
					//}
					//
					//i --;
				//}
			//}
			//
			//if(requestList.length != 0)
			//{
				//resutFunc(requestList);
			//}
		//}
		//
		//private function hasCallBackListener(complete:Function, progress:Function, error:Function, callBackList:Array):Boolean
		//{
			//for each(var callbackInfo:Object in  callBackList)
			//{
				//if(callbackInfo.complete == complete && callbackInfo.progress == progress && callbackInfo.error == error)
				//{
					//return true;
				//}
			//}
			//
			//return false;
		//}
		//
		//public function onLoadComplete(value:Mission):void
		//{
			//var callBackList:Array;
			//
			//callBackList = requestMap[value.name];
			//callBackList = callBackList.concat();
			//requestMap[value.path] = [];
			//completeMap[value.name] = value;
			//for each(var funcObj:Object in callBackList)
			//{
				//if(funcObj.complete != null)
				//{
					//funcObj.complete(value);
				//}
			//}
		//}
		//
		//public function onLoadProgress(value:Mission):void
		//{
			//var callBackList:Array;
			//
			//callBackList = requestMap[value.name];
			//callBackList = callBackList.concat();
			//for each(var funcObj:Object in callBackList)
			//{
				//if(funcObj.progress != null)
				//{
					//funcObj.progress(value);
				//}
			//}
		//}
		//
		//public function onLoadError(value:Mission):void
		//{
			//var callBackList:Array;
			//
			//callBackList = requestMap[value.name];
			//callBackList = callBackList.concat();
			//for each(var funcObj:Object in callBackList)
			//{
				//if(funcObj.error != null)
				//{
					//funcObj.error(value);
				//}
			//}
		//}
		//
		//public function release():void
		//{
			//completeMap = new Dictionary();
			//requestMap = new Dictionary();
		//}
	
																					
		public function autoSetNull():void
		{

			pub::getPluginAsset = null;
		}
	}
}