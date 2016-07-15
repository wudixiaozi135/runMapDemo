package home.cmd {
    
    
    /**
     *显示999朵玫瑰的通知
     *
     */
    public class ShowFlowerCommand extends BaseHomeCommand {
        public var info:String;
        
        public function ShowFlowerCommand(notice:String) {
            info = notice;
            super();
        
        }
    }
}
