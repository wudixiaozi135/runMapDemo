package tx.mnme.commands.actionlist
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.LayerData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	public class CreateActionFromLayerCommand extends BaseActionCommand
	{
		protected var name:String;
		protected var layerDatas:Vector.<LayerData>;
		
		public function CreateActionFromLayerCommand(action:ActionList,name:String,layerDatas:Vector.<LayerData>)
		{
			this.name = name;
			this.layerDatas = layerDatas;
			
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doCreateActionFromLayer(name,layerDatas);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoCreateActionFromLayer(name);
		}
	}
}