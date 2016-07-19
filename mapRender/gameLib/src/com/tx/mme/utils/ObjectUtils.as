/**
 * Created by xiaoding on 2016/7/19 0019.
 */
package com.tx.mme.utils
{
	import flash.utils.ByteArray;

	public class ObjectUtils
	{
		public static function clone(obj:Object):*
		{
			var bytes:ByteArray = new ByteArray();
			bytes.writeObject(obj);
			bytes.position = 0;
			return (bytes.readObject());
		}
	}
}
