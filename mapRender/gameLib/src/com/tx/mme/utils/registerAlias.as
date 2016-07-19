package com.tx.mme.utils
{
	import flash.net.registerClassAlias;
	import flash.utils.getQualifiedClassName;

	public function registerAlias(target:Class):void
	{
		var class_name:String = getQualifiedClassName(target).split("::").pop();
		registerClassAlias("MME." + class_name, target);
	}
}