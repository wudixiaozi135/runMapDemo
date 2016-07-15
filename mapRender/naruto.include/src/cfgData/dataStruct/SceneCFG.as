package cfgData.dataStruct
{
    /**
     * 世界地图
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class SceneCFG{
        public function  SceneCFG(){}  
        /**子场景ID*/
        public var id:uint;
        /**美术地图id*/
        public var mapId:uint;
        /**场景分类*/
        public var time:int;
        /**场景类型*/
        public var type:int;
        /**地图名字*/
        public var name:String="";
        /**可进入场景的最低级别*/
        public var minLevel:int;
        /**世界地图显示用ID*/
        public var worldMapId:int;

    }
}