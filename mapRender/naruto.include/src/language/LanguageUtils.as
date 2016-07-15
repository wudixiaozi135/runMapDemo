package language {
	import cfgData.CFGDataLibs;

	/**
	 *语言包 
	 * @author Naruto
	 * 
	 */    
    public class LanguageUtils {
		public static var  m_lang:String = "zh";
        public function LanguageUtils() {
        }
		public static function set Language(v:String):void{
			m_lang = v;
		}
		public static function lang(key:String):String{
			return key;
			//return CFGDataLibs.getRowData(m_lang,key);
		}
		
    }
}
