package tx.mme.utils
{
	import flash.net.registerClassAlias;
	import flash.utils.getQualifiedClassName;	

	public function registerAlias(target:Class):void
	{
		var class_name:String = getQualifiedClassName(target);
		registerClassAlias("alias." + class_name, target);
		registerClassAlias("alias." + class_name.replace(/tx.mme.datas/, "com.tencent.morefun.naruto.mmefile.render.datas"), target);
	}

}