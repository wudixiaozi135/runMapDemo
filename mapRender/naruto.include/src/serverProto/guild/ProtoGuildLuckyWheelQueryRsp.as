package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildLuckyWheelQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const FREE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.free_flag", "freeFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_flag$field:uint;

		private var hasField$0:uint = 0;

		public function clearFreeFlag():void {
			hasField$0 &= 0xfffffffe;
			free_flag$field = new uint();
		}

		public function get hasFreeFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set freeFlag(value:uint):void {
			hasField$0 |= 0x1;
			free_flag$field = value;
		}

		public function get freeFlag():uint {
			return free_flag$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_ROLL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.remain_roll_count", "remainRollCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_roll_count$field:uint;

		public function clearRemainRollCount():void {
			hasField$0 &= 0xfffffffd;
			remain_roll_count$field = new uint();
		}

		public function get hasRemainRollCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainRollCount(value:uint):void {
			hasField$0 |= 0x2;
			remain_roll_count$field = value;
		}

		public function get remainRollCount():uint {
			return remain_roll_count$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_ROLL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.total_roll_count", "totalRollCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_roll_count$field:uint;

		public function clearTotalRollCount():void {
			hasField$0 &= 0xfffffffb;
			total_roll_count$field = new uint();
		}

		public function get hasTotalRollCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalRollCount(value:uint):void {
			hasField$0 |= 0x4;
			total_roll_count$field = value;
		}

		public function get totalRollCount():uint {
			return total_roll_count$field;
		}

		/**
		 *  @private
		 */
		public static const ROLL_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.roll_cost", "rollCost", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var roll_cost$field:uint;

		public function clearRollCost():void {
			hasField$0 &= 0xfffffff7;
			roll_cost$field = new uint();
		}

		public function get hasRollCost():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set rollCost(value:uint):void {
			hasField$0 |= 0x8;
			roll_cost$field = value;
		}

		public function get rollCost():uint {
			return roll_cost$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.current_contri", "currentContri", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_contri$field:uint;

		public function clearCurrentContri():void {
			hasField$0 &= 0xffffffef;
			current_contri$field = new uint();
		}

		public function get hasCurrentContri():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set currentContri(value:uint):void {
			hasField$0 |= 0x10;
			current_contri$field = value;
		}

		public function get currentContri():uint {
			return current_contri$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.award_list", "awardList", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var awardList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasFreeFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_flag$field);
			}
			if (hasRemainRollCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_roll_count$field);
			}
			if (hasTotalRollCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_roll_count$field);
			}
			if (hasRollCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, roll_cost$field);
			}
			if (hasCurrentContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_contri$field);
			}
			for (var awardList$index:uint = 0; awardList$index < this.awardList.length; ++awardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardList[awardList$index]);
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
			var free_flag$count:uint = 0;
			var remain_roll_count$count:uint = 0;
			var total_roll_count$count:uint = 0;
			var roll_cost$count:uint = 0;
			var current_contri$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildLuckyWheelQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (free_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildLuckyWheelQueryRsp.freeFlag cannot be set twice.');
					}
					++free_flag$count;
					this.freeFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (remain_roll_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildLuckyWheelQueryRsp.remainRollCount cannot be set twice.');
					}
					++remain_roll_count$count;
					this.remainRollCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (total_roll_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildLuckyWheelQueryRsp.totalRollCount cannot be set twice.');
					}
					++total_roll_count$count;
					this.totalRollCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (roll_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildLuckyWheelQueryRsp.rollCost cannot be set twice.');
					}
					++roll_cost$count;
					this.rollCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (current_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildLuckyWheelQueryRsp.currentContri cannot be set twice.');
					}
					++current_contri$count;
					this.currentContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					this.awardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
