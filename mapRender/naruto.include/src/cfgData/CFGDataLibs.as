package cfgData {
    import com.tencent.morefun.framework.log.logger;
    
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    
    
    
    /**
     * 解析数据 和获取配置数据的 唯一入口
	 * @author:Georgehu
	 * @since:2014-04-01
     * @example:
     * 		//注册一个数据
     *      m_configArr = CFGDataLibs.parseData(data,CFGDataEnum.ENUM_ItemAchievedWayCFG);
     *      //获取所有数据
	 *		var a:* =CFGDataLibs.getAllData(CFGDataEnum.ENUM_ItemAchievedWayCFG);
     *		//获取某个数据
	 *		var b:* = CFGDataLibs.getRowData(CFGDataEnum.ENUM_ItemAchievedWayCFG,101);
     */
    public class CFGDataLibs {
        
        
        
        private static var m_maps:Dictionary = new Dictionary();
        
        
        
        public function CFGDataLibs() {
        
        }
        
        /**
         * 取配置的所有数据
         * @param cfgName 配置名称
         * @return  Dictionary
         *
         */
        public static function getAllData(cfgName:String):Dictionary {
            if(m_maps.hasOwnProperty(cfgName)) {
                return m_maps[cfgName];
            } else {
                return null;
            }
        }
        
        /**
         * 取配置的所有数据中的一条
         * @param cfgName 配置名称
         * @param key 键值
         * @return Object
         *
         */
        public static function getRowData(cfgName:String, key:int):Object {
            if(m_maps.hasOwnProperty(cfgName) && m_maps[cfgName][key] != undefined) {
                return m_maps[cfgName][key];
            } else {
                return null;
            }
        }
        
        /**
         * 加载BIN SET 数据
         * @param bin 二进制数据
         * @param key 此二进制数据的 之后获取的KEY
         * @return  Dictionary
         *
         */
        public static function parseData(bin:ByteArray, key:String):Dictionary {
            new ConfigClassAlias();
			///registerClassAlias("flex.messaging.io.ArrayCollection", mx.collections.ArrayCollection);
            if(m_maps[key] != undefined) {
                for(var mapKey:String in m_maps[key]) {
                    delete m_maps[key][mapKey];
                }
            } else {
                m_maps[key] = new Dictionary();
            }
			if(bin.position == (bin.length-1)){
				logger.output("Rread bin error"+key);
				trace("Rread bin error"+key);
				bin.position=0;
				
			}
            var stractObjectMap:Object = bin.readObject();
            var m_configArr:Dictionary = new Dictionary();
            
            for each(var obj:Object in stractObjectMap) {
                m_maps[key][obj.id] = obj;
            }
            return m_maps[key];
        }
        
        /**
         * 删除配置数据
         */
        public static function removeData(cfgName:String):void {
        
        }
    }
}
