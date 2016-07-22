package tx.mnme
{
	import tx.mnme.views.windows.PreviewNativeWidnow;

	public class Global
	{
		public static var mainApp:MMEEditor;
		public static var previewWindow:PreviewNativeWidnow;
		
		[Bindable]
		public static var eventXML:XML;
	}
}