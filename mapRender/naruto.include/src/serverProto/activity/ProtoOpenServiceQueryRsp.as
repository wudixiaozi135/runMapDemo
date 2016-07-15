package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.activity.ProtoOpenServiceConsumeData;
	import serverProto.activity.ProtoOpenServiceCombatRankData;
	import serverProto.activity.ProtoOpenServiceUpgradeData;
	import serverProto.activity.ProtoOpenServiceRechargeRankData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpenServiceQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const TAB_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceQueryRsp.tab_idx", "tabIdx", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tab_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearTabIdx():void {
			hasField$0 &= 0xfffffffe;
			tab_idx$field = new uint();
		}

		public function get hasTabIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set tabIdx(value:uint):void {
			hasField$0 |= 0x1;
			tab_idx$field = value;
		}

		public function get tabIdx():uint {
			return tab_idx$field;
		}

		/**
		 *  @private
		 */
		public static const TAB_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceQueryRsp.tab_status", "tabStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var tabStatus:Array = [];

		/**
		 *  @private
		 */
		public static const CONSUME_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.consume_data", "consumeData", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoOpenServiceConsumeData);

		private var consume_data$field:serverProto.activity.ProtoOpenServiceConsumeData;

		public function clearConsumeData():void {
			consume_data$field = null;
		}

		public function get hasConsumeData():Boolean {
			return consume_data$field != null;
		}

		public function set consumeData(value:serverProto.activity.ProtoOpenServiceConsumeData):void {
			consume_data$field = value;
		}

		public function get consumeData():serverProto.activity.ProtoOpenServiceConsumeData {
			return consume_data$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.upgrade_data", "upgradeData", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoOpenServiceUpgradeData);

		private var upgrade_data$field:serverProto.activity.ProtoOpenServiceUpgradeData;

		public function clearUpgradeData():void {
			upgrade_data$field = null;
		}

		public function get hasUpgradeData():Boolean {
			return upgrade_data$field != null;
		}

		public function set upgradeData(value:serverProto.activity.ProtoOpenServiceUpgradeData):void {
			upgrade_data$field = value;
		}

		public function get upgradeData():serverProto.activity.ProtoOpenServiceUpgradeData {
			return upgrade_data$field;
		}

		/**
		 *  @private
		 */
		public static const RECHARGE_RANK_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.recharge_rank_data", "rechargeRankData", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoOpenServiceRechargeRankData);

		private var recharge_rank_data$field:serverProto.activity.ProtoOpenServiceRechargeRankData;

		public function clearRechargeRankData():void {
			recharge_rank_data$field = null;
		}

		public function get hasRechargeRankData():Boolean {
			return recharge_rank_data$field != null;
		}

		public function set rechargeRankData(value:serverProto.activity.ProtoOpenServiceRechargeRankData):void {
			recharge_rank_data$field = value;
		}

		public function get rechargeRankData():serverProto.activity.ProtoOpenServiceRechargeRankData {
			return recharge_rank_data$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_RANK_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.combat_rank_data", "combatRankData", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoOpenServiceCombatRankData);

		private var combat_rank_data$field:serverProto.activity.ProtoOpenServiceCombatRankData;

		public function clearCombatRankData():void {
			combat_rank_data$field = null;
		}

		public function get hasCombatRankData():Boolean {
			return combat_rank_data$field != null;
		}

		public function set combatRankData(value:serverProto.activity.ProtoOpenServiceCombatRankData):void {
			combat_rank_data$field = value;
		}

		public function get combatRankData():serverProto.activity.ProtoOpenServiceCombatRankData {
			return combat_rank_data$field;
		}

		/**
		 *  @private
		 */
		public static const DEADLINE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceQueryRsp.deadline_time", "deadlineTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var deadline_time$field:uint;

		public function clearDeadlineTime():void {
			hasField$0 &= 0xfffffffd;
			deadline_time$field = new uint();
		}

		public function get hasDeadlineTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set deadlineTime(value:uint):void {
			hasField$0 |= 0x2;
			deadline_time$field = value;
		}

		public function get deadlineTime():uint {
			return deadline_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasTabIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, tab_idx$field);
			}
			for (var tabStatus$index:uint = 0; tabStatus$index < this.tabStatus.length; ++tabStatus$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.tabStatus[tabStatus$index]);
			}
			if (hasConsumeData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, consume_data$field);
			}
			if (hasUpgradeData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, upgrade_data$field);
			}
			if (hasRechargeRankData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, recharge_rank_data$field);
			}
			if (hasCombatRankData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, combat_rank_data$field);
			}
			if (hasDeadlineTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, deadline_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var tab_idx$count:uint = 0;
			var consume_data$count:uint = 0;
			var upgrade_data$count:uint = 0;
			var recharge_rank_data$count:uint = 0;
			var combat_rank_data$count:uint = 0;
			var deadline_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (tab_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.tabIdx cannot be set twice.');
					}
					++tab_idx$count;
					this.tabIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.tabStatus);
						break;
					}
					this.tabStatus.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					if (consume_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.consumeData cannot be set twice.');
					}
					++consume_data$count;
					this.consumeData = new serverProto.activity.ProtoOpenServiceConsumeData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.consumeData);
					break;
				case 5:
					if (upgrade_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.upgradeData cannot be set twice.');
					}
					++upgrade_data$count;
					this.upgradeData = new serverProto.activity.ProtoOpenServiceUpgradeData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.upgradeData);
					break;
				case 6:
					if (recharge_rank_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.rechargeRankData cannot be set twice.');
					}
					++recharge_rank_data$count;
					this.rechargeRankData = new serverProto.activity.ProtoOpenServiceRechargeRankData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rechargeRankData);
					break;
				case 7:
					if (combat_rank_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.combatRankData cannot be set twice.');
					}
					++combat_rank_data$count;
					this.combatRankData = new serverProto.activity.ProtoOpenServiceCombatRankData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.combatRankData);
					break;
				case 8:
					if (deadline_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceQueryRsp.deadlineTime cannot be set twice.');
					}
					++deadline_time$count;
					this.deadlineTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
