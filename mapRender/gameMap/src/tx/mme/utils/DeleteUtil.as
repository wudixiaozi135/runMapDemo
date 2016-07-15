package tx.mme.utils
{

	public class DeleteUtil
	{
		public static function deleteOjbect(obj:Object):void
		{
			var ks:Array = [];
			for(var k:* in obj)
			{
				ks.push(k);
			}
			
			for each(k in ks)
			{
				delete obj[k];
			}
			ks.length = 0;
			ks = null;
		}
	}
}