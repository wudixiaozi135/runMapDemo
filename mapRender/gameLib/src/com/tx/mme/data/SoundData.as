package com.tx.mme.data
{
	/**
	 * 声音数据
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class SoundData
	{
		/** 声音名称 */
		public var name:String = "Sound";

		/** 音量 */
		public var volume:uint = 100;

		/** 是否为空（即不启用） */
		public var empty:Boolean = true;

		public function SoundData()
		{
		}

		/**
		 * 生成XML
		 */
		public function encode(xml:XML):void
		{
			if (this.empty) return;

			xml.@sound = this.name;
			if (this.volume != 100)
				xml.@volume = this.volume;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML):void
		{
			var ss:String = String(xml.@sound);
			if (ss)
			{
				this.name = ss;
				this.volume = String(xml.@volume) ? Number(xml.@volume) || 100 : 100;
				this.empty = false;
			}
			else
			{
				this.empty = true;
			}
		}
	}
}