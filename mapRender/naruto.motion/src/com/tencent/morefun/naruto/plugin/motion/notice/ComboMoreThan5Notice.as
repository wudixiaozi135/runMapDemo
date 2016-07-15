package com.tencent.morefun.naruto.plugin.motion.notice
{

	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class ComboMoreThan5Notice extends BaseNotice
	{
		public var isStart:Boolean;
		public function ComboMoreThan5Notice(isStart:Boolean)
		{
			super();
			this.isStart = isStart;
		}
	
	}
}