package tx.mnme.utils
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ElementData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.PointElementData;

	public class EqualUtil
	{
		public static function equalElement(e1:BaseElementData,e2:BaseElementData):Boolean
		{
			if(e1 && e2)
			{
				if(e1 is ElementData && e2 is ElementData)
				{
					if((e1 as ElementData).filename == (e2 as ElementData).filename)
					{
						return true;
					}
				}
				
				if(e1 is PointElementData && e2 is PointElementData)
				{
					return true;
				}
			}
			
			return false;
		}
	}
}