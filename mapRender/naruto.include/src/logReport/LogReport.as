package logReport
{
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import base.ApplicationData;

	public class LogReport
	{	
		private static var callbackMap:Dictionary = new Dictionary();
		public static function report(fileName:String, value:ByteArray, callback:Function):void
		{
			var form:MultiPartFormData;
			var request:URLRequest;
			var header:URLRequestHeader;
			
			form = new MultiPartFormData();
			form.AddFormField("path","");
			form.AddFormField("dir","client_report");
			form.AddFormField("press","Upload");
			form.AddStreamFile("file", fileName + "_" + ApplicationData.singleton.selfuin  + getDate() + ".blog", value);
			form.PrepareFormData();
			
			request = new URLRequest("http://clientcrash.huoying.qq.com/cgi-bin/upload.pl"); 
			header = new URLRequestHeader ("Content-Type", "multipart/form-data; boundary=" + MultiPartFormData.Boundary); 
			request.requestHeaders.push(header); 
			request.method=URLRequestMethod.POST;
			request.data = form.GetFormData();            
			
			var load:URLLoader = new URLLoader();
			load.addEventListener(Event.COMPLETE, onReportComplete);
			load.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onReportError);
			load.addEventListener(IOErrorEvent.IO_ERROR, onReportError);
			load.load(request);
			
			TimerProvider.addTimeTask(1000 * 60, onTimeOut, load, 0, 0, 1);
			callbackMap[load] = callback;
		}
		
		private static function getDate():String
		{
			var date:Date = new Date();
			
			return "_" + getPeddingNum(date.getFullYear()) + getPeddingNum((date.getMonth() + 1))  + getPeddingNum(date.getDate()) + "_" + getPeddingNum(date.getHours()) + ":" + getPeddingNum(date.getMinutes()) + ":" + getPeddingNum(date.getSeconds());
		}
		
		private static function getPeddingNum(value:int):String
		{
			if(value < 10)
			{
				return "0" + value;
			}
			else
			{
				return value.toString();
			}
		}
		
		private static function onTimeOut(load:URLLoader):void
		{
			var callback:Function;
			
			callback = callbackMap[load];
			callback();
			logger.output("[LogReport][onTimeOut]");			
		}
		
		private static function onReportComplete(evt:Event):void
		{
			var callback:Function;
			
			TimerProvider.removeEnterFrameTask(onTimeOut, evt.currentTarget, 0);
			callback = callbackMap[evt.currentTarget];
			callback();
			logger.output("[LogReport][onReportComplete]");
		}
		
		private static function onReportError(evt:Event):void
		{
			logger.output("[LogReport][onReportError]");
		}
	}
}