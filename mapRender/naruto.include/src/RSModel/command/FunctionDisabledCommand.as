package RSModel.command
{
    import com.tencent.morefun.framework.base.Command;

    public class FunctionDisabledCommand extends RSModelCommand
    {
        public var message:String;
        public var closeWindowCommmand:Command;

        public function FunctionDisabledCommand(message:String, closeWindowCommmand:Command=null)
        {
            super();

            this.message = message;
            this.closeWindowCommmand = closeWindowCommmand;
        }
    }
}