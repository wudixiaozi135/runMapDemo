package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.baseInfo.ProtoNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPracticePosInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.state", "state", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var state$field:int;

		public function clearState():void {
			hasField$0 &= 0xfffffffd;
			state$field = new int();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set state(value:int):void {
			hasField$0 |= 0x2;
			state$field = value;
		}

		public function get state():int {
			return state$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.open_level", "openLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:int;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffb;
			open_level$field = new int();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set openLevel(value:int):void {
			hasField$0 |= 0x4;
			open_level$field = value;
		}

		public function get openLevel():int {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_COST_GOLD_INGOT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.open_cost_gold_ingot", "openCostGoldIngot", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_cost_gold_ingot$field:int;

		public function clearOpenCostGoldIngot():void {
			hasField$0 &= 0xfffffff7;
			open_cost_gold_ingot$field = new int();
		}

		public function get hasOpenCostGoldIngot():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set openCostGoldIngot(value:int):void {
			hasField$0 |= 0x8;
			open_cost_gold_ingot$field = value;
		}

		public function get openCostGoldIngot():int {
			return open_cost_gold_ingot$field;
		}

		/**
		 *  @private
		 */
		public static const PRACTICE_REMAIN_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.practice_remain_time", "practiceRemainTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var practice_remain_time$field:int;

		public function clearPracticeRemainTime():void {
			hasField$0 &= 0xffffffef;
			practice_remain_time$field = new int();
		}

		public function get hasPracticeRemainTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set practiceRemainTime(value:int):void {
			hasField$0 |= 0x10;
			practice_remain_time$field = value;
		}

		public function get practiceRemainTime():int {
			return practice_remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.max_exp", "maxExp", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_exp$field:int;

		public function clearMaxExp():void {
			hasField$0 &= 0xffffffdf;
			max_exp$field = new int();
		}

		public function get hasMaxExp():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set maxExp(value:int):void {
			hasField$0 |= 0x20;
			max_exp$field = value;
		}

		public function get maxExp():int {
			return max_exp$field;
		}

		/**
		 *  @private
		 */
		public static const ACQUIRED_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.acquired_exp", "acquiredExp", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var acquired_exp$field:int;

		public function clearAcquiredExp():void {
			hasField$0 &= 0xffffffbf;
			acquired_exp$field = new int();
		}

		public function get hasAcquiredExp():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set acquiredExp(value:int):void {
			hasField$0 |= 0x40;
			acquired_exp$field = value;
		}

		public function get acquiredExp():int {
			return acquired_exp$field;
		}

		/**
		 *  @private
		 */
		public static const PRACTICE_NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticePosInfo.practice_ninja_info", "practiceNinjaInfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		private var practice_ninja_info$field:serverProto.baseInfo.ProtoNinjaInfo;

		public function clearPracticeNinjaInfo():void {
			practice_ninja_info$field = null;
		}

		public function get hasPracticeNinjaInfo():Boolean {
			return practice_ninja_info$field != null;
		}

		public function set practiceNinjaInfo(value:serverProto.baseInfo.ProtoNinjaInfo):void {
			practice_ninja_info$field = value;
		}

		public function get practiceNinjaInfo():serverProto.baseInfo.ProtoNinjaInfo {
			return practice_ninja_info$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticePosInfo.friend", "friend", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var friend$field:serverProto.inc.ProtoPlayerKey;

		public function clearFriend():void {
			friend$field = null;
		}

		public function get hasFriend():Boolean {
			return friend$field != null;
		}

		public function set friend(value:serverProto.inc.ProtoPlayerKey):void {
			friend$field = value;
		}

		public function get friend():serverProto.inc.ProtoPlayerKey {
			return friend$field;
		}

		/**
		 *  @private
		 */
		public static const PRACTICE_TOTAL_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.practice_total_time", "practiceTotalTime", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var practice_total_time$field:int;

		public function clearPracticeTotalTime():void {
			hasField$0 &= 0xffffff7f;
			practice_total_time$field = new int();
		}

		public function get hasPracticeTotalTime():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set practiceTotalTime(value:int):void {
			hasField$0 |= 0x80;
			practice_total_time$field = value;
		}

		public function get practiceTotalTime():int {
			return practice_total_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, id$field);
			}
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, state$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, open_level$field);
			}
			if (hasOpenCostGoldIngot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, open_cost_gold_ingot$field);
			}
			if (hasPracticeRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, practice_remain_time$field);
			}
			if (hasMaxExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, max_exp$field);
			}
			if (hasAcquiredExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, acquired_exp$field);
			}
			if (hasPracticeNinjaInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, practice_ninja_info$field);
			}
			if (hasFriend) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend$field);
			}
			if (hasPracticeTotalTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, practice_total_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var state$count:uint = 0;
			var open_level$count:uint = 0;
			var open_cost_gold_ingot$count:uint = 0;
			var practice_remain_time$count:uint = 0;
			var max_exp$count:uint = 0;
			var acquired_exp$count:uint = 0;
			var practice_ninja_info$count:uint = 0;
			var friend$count:uint = 0;
			var practice_total_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (open_cost_gold_ingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.openCostGoldIngot cannot be set twice.');
					}
					++open_cost_gold_ingot$count;
					this.openCostGoldIngot = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (practice_remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.practiceRemainTime cannot be set twice.');
					}
					++practice_remain_time$count;
					this.practiceRemainTime = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (max_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.maxExp cannot be set twice.');
					}
					++max_exp$count;
					this.maxExp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (acquired_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.acquiredExp cannot be set twice.');
					}
					++acquired_exp$count;
					this.acquiredExp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (practice_ninja_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.practiceNinjaInfo cannot be set twice.');
					}
					++practice_ninja_info$count;
					this.practiceNinjaInfo = new serverProto.baseInfo.ProtoNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.practiceNinjaInfo);
					break;
				case 10:
					if (friend$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.friend cannot be set twice.');
					}
					++friend$count;
					this.friend = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friend);
					break;
				case 11:
					if (practice_total_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePosInfo.practiceTotalTime cannot be set twice.');
					}
					++practice_total_time$count;
					this.practiceTotalTime = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
