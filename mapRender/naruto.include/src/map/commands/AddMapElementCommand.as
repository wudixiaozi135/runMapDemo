package map.commands
{
	import map.element.BaseMapElement;

	public class AddMapElementCommand extends BaseMapCommand
	{
		public var element:BaseMapElement;
		public var layer:int;
		
		public function AddMapElementCommand(element:BaseMapElement, layer:int)
		{
			super();
			
			this.element = element;
			this.layer = layer;
		}
	}
}