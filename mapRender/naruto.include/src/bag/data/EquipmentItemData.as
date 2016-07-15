package bag.data
{
    public class EquipmentItemData extends ItemData
    {
        // 配置表
        public var useLevel:int;                            // 可装备等级
        public var quality:int;                             // 品质
        public var val1:int;                                // +生命
        public var val2:int;                                // +攻击
        public var val3:int;                                // +防御
        public var val4:int;                                // +忍术
        public var val5:int;                                // +抗性
        public var mat0Id:uint;                             // 升阶卷轴的ID
        public var mat0Num:uint;                            // 升阶卷轴所需数量
        public var mat1Id:uint;                             // 升阶材料1的ID
        public var mat1Num:uint;                            // 升阶材料1所需数量
        public var mat2Id:uint;                             // 升阶材料2的ID
        public var mat2Num:uint;                            // 升阶材料2所需数量
        public var mat3Id:uint;                             // 升阶材料3的ID
        public var mat3Num:uint;                            // 升阶材料3所需数量
        public var mat4Id:uint;                             // 升阶材料4的ID
        public var mat4Num:uint;                            // 升阶材料4所需数量
        public var mat5Id:uint;                             // 升阶材料5的ID
        public var mat5Num:uint;                            // 升阶材料5所需数量
        public var evolveMoney:int;                         // 升阶消耗铜币

        // 后台下发
        public var level:int;                               // 等级
        public var sequenceId:String;                       // 唯一ID（后台用）
        public var gems:Vector.<GemItemData>;               // 镶嵌的勾玉
        public var upgradeVal1:int;                         // 强化+生命
        public var upgradeVal2:int;                         // 强化+攻击
        public var upgradeVal3:int;                         // 强化+防御
        public var upgradeVal4:int;                         // 强化+忍术
        public var upgradeVal5:int;                         // 强化+抗性
        public var forgeLevel:int;                          // 精炼等级
        public var forgeLevelMax:int;                       // 精炼最高等级
        public var forgePropBlessingBefore:int;             // 精炼/自动精炼之前的祝福值
        public var forgePropBlessing:int;                   // 精炼祝福值
        public var forgePropBlessingMax:int;                // 最大精炼祝福值
        public var forgePropBlessingLimited:int;            // 限时精炼获赠祝福值
        public var forgePropVal1:int;                       // 精炼+先攻值
        public var forgePropVal2:int;                       // 精炼+暴击率值
        public var forgePropVal3:int;                       // 精炼+暴击伤害值
        public var forgePropVal4:int;                       // 精炼+连击率值
        public var forgePropVal5:int;                       // 精炼+控制率值
        public var forgeQualityVal1:int;                    // 洗炼+先攻值
        public var forgeQualityVal2:int;                    // 洗炼+暴击率值
        public var forgeQualityVal3:int;                    // 洗炼+暴击伤害值
        public var forgeQualityVal4:int;                    // 洗炼+连击率值
        public var forgeQualityVal5:int;                    // 洗炼+控制率值
        public var forgeQualityPercent1:int;                // 洗炼+先攻值（百分比）
        public var forgeQualityPercent2:int;                // 洗炼+暴击率值（百分比）
        public var forgeQualityPercent3:int;                // 洗炼+暴击伤害值（百分比）
        public var forgeQualityPercent4:int;                // 洗炼+连击率值（百分比）
        public var forgeQualityPercent5:int;                // 洗炼+控制率值（百分比）

		public function EquipmentItemData():void
		{
			
		}
    }
}