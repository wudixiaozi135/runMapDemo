package api
{
    public interface IDataParser
    {
        function dispose():void;
        function parse(value:Object):Object;
    }
}