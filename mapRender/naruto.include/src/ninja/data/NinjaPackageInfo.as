package ninja.data
{
	import ninja.model.data.NinjaInfo;

	public class NinjaPackageInfo
	{
		public var ninjaInfoList:Vector.<NinjaInfo>;
		public var ninjaPackageUlimit:uint;//可以携带的最大忍者数
		public var nextOpenPackageLevel:uint;//下一个忍者背包开放等级
		public var formationNinjaUlimit:uint;//上阵忍者的最大数量
	}
}