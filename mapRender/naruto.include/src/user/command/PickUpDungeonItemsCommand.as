package user.command
{
    import flash.display.Sprite;
    
    import bag.data.ItemData;

    public class PickUpDungeonItemsCommand extends BaseUserCommand
    {
        public var npc:Sprite;
        public var data:Vector.<ItemData>;

        public function PickUpDungeonItemsCommand(npc:Sprite, data:Vector.<ItemData>)
        {
            super();

            this.npc = npc;
            this.data = data;
        }
    }
}