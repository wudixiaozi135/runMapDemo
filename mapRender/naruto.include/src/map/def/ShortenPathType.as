package map.def
{
	public class ShortenPathType
	{
		static public const FIX:int = 0;  //实际截断的长度与给定的长度最接近，或大或小
		static public const CEIL:int = 1;  //实际截断的长度大于给定的长度且最接近
		static public const FLOOR:int = 2;  //实际截断的长度小于给定的长度且最接近
		
		public function ShortenPathType()
		{
		}
	}
}