package cfgData.dataStruct
{
    /**
     * 忍者技能配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class NinjaSkillCFG{
        public function  NinjaSkillCFG(){}  
        /**忍者ID*/
        public var id:uint;
        /**普通攻击*/
        public var normals:Array=new Array();
        /**奥义技能*/
        public var specials:Array=new Array();
        /**技能*/
        public var skills:Array=new Array();
        /**关联技能*/
        public var binding:Array=new Array();

    }
}