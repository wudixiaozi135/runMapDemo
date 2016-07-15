package map.commands
{
	
	
	import map.element.BaseMapElement;

	public class BindCameraMapElementCommand extends BaseMapCommand
	{
		public var element:BaseMapElement;
		
		public function BindCameraMapElementCommand(element:BaseMapElement)
		{
			super();
			
			this.element = element;
		}
	}
}