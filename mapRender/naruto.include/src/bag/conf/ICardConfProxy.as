package bag.conf
{
    import bag.data.CardItemData;

    public interface ICardConfProxy extends IConfProxy
    {
        function findDataByNinjaId(ninjaId:uint, returnNew:Boolean=false):CardItemData;
    }
}