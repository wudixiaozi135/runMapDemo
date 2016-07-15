package rankingStore.cmd
{
    public class CloseStoreCommand extends BaseRankingStoreCommand
    {
        public var type:int;

        public function CloseStoreCommand(type:int)
        {
            super();

            this.type = type;
        }
    }
}