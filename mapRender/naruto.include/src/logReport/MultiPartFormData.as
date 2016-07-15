package logReport
{
	import flash.utils.ByteArray;

	public class MultiPartFormData
	{
		public static var Boundary:String= "------WebKitFormBoundary9reDs4M9jVgBtvcB"; 
		
		private var fieldName:String="Content-Disposition: form-data; name=\"XXXX\""; 
		
		private var fieldValue:String= "XXXX"; 
		
		private var fileField:String="Content-Disposition: form-data; name=\"XXXX\"; filename=\"XXXXXXXX\""; 
		
		private var fileContentType:String= "Content-Type: XXXX"; 
		
		private var formData:ByteArray; 
		
		public function MultiPartFormData()
		{
			formData=new ByteArray(); 
		}
		
		public function AddFormField( FieldName:String,  FieldValue:String):void 
		{ 
			var newFieldName:String=fieldName; 
			var newFieldValue:String=fieldValue; 
			
			newFieldName=newFieldName.replace("XXXX",FieldName); 
			newFieldValue=newFieldValue.replace("XXXX",FieldValue); 
			
			formData.writeMultiByte( "--"+Boundary+"\r\n","UTF-8"); 
			formData.writeMultiByte( newFieldName+"\r\n\r\n","UTF-8"); 
			formData.writeMultiByte( newFieldValue+"\r\n","UTF-8"); 
		}
		
		public function AddFile( FieldName:String, FileName:String,FileContent:ByteArray, ContentType:String):void 
		{ 
			var newFileField:String=fileField; 
			var newFileContentType:String=fileContentType; 
			
			newFileField=newFileField.replace("XXXX",FieldName); 
			newFileField=newFileField.replace("XXXXXXXX",FileName); 
			
			newFileContentType=newFileContentType.replace("XXXX",ContentType); 
			
			formData.writeMultiByte( "--"+Boundary+"\r\n","UTF-8"); 
			formData.writeMultiByte( newFileField+"\r\n","UTF-8"); 
			formData.writeMultiByte( newFileContentType+"\r\n\r\n","UTF-8"); 
			
			formData.writeBytes(FileContent,0,FileContent.length); 
			
			formData.writeMultiByte("\r\n","UTF-8"); 
		}
		
		public function AddStreamFile( FieldName:String, FileName:String,FileContent:ByteArray):void 
		{ 
			AddFile( FieldName, FileName, FileContent,"application/octet-stream"); 
		}
		
		public function PrepareFormData():void 
		{ 
			formData.writeMultiByte( "--"+Boundary+"--","UTF-8"); 
		}
		
		public function GetFormData():ByteArray 
		{ 
			return formData; 
		} 

	}
}