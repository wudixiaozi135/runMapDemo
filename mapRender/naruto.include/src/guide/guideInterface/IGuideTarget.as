package guide.guideInterface
{
	/**
	 * @author woodychen
	 * 在新手指引中需要指向的对象，需要继承这个接口，并返回名字作为标识
	 */
	
	public interface IGuideTarget
	{
		function get guideTargetName():String;
	}

}