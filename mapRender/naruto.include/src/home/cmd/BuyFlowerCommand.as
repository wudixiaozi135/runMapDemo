package home.cmd
{
	import serverProto.inc.ProtoPlayerKey;
	
	/**
	 *代开买鲜花面板买花
	 * 
	 */ 
    public class BuyFlowerCommand extends BaseHomeCommand
    {       
		public var playerid:ProtoPlayerKey ;
        public function BuyFlowerCommand(_playerid:ProtoPlayerKey)
        {
			playerid = _playerid
            super();

        }
    }
}