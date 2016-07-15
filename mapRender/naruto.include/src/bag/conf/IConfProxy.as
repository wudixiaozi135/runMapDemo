package bag.conf
{
    import bag.data.ItemData;

    public interface IConfProxy
    {
        function destroy():void;
        function findDataById(id:uint, returnNew:Boolean=false):ItemData;
        function fillData(data:ItemData):void;
    }
}