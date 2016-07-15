package serverProto.summonMonster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSummonMonsterInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.summon_monster_id", "summonMonsterId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var summonMonsterId:int;

		/**
		 *  @private
		 */
		public static const HAVE_SUMMON_MONSTER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.have_summon_monster", "haveSummonMonster", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var have_summon_monster$field:int;

		private var hasField$0:uint = 0;

		public function clearHaveSummonMonster():void {
			hasField$0 &= 0xfffffffe;
			have_summon_monster$field = new int();
		}

		public function get hasHaveSummonMonster():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set haveSummonMonster(value:int):void {
			hasField$0 |= 0x1;
			have_summon_monster$field = value;
		}

		public function get haveSummonMonster():int {
			return have_summon_monster$field;
		}

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.index", "index", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var index$field:int;

		public function clearIndex():void {
			hasField$0 &= 0xfffffffd;
			index$field = new int();
		}

		public function get hasIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set index(value:int):void {
			hasField$0 |= 0x2;
			index$field = value;
		}

		public function get index():int {
			return index$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_CAPTURE_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.remain_capture_times", "remainCaptureTimes", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_capture_times$field:int;

		public function clearRemainCaptureTimes():void {
			hasField$0 &= 0xfffffffb;
			remain_capture_times$field = new int();
		}

		public function get hasRemainCaptureTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainCaptureTimes(value:int):void {
			hasField$0 |= 0x4;
			remain_capture_times$field = value;
		}

		public function get remainCaptureTimes():int {
			return remain_capture_times$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterInfo.base_property_info", "basePropertyInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var base_property_info$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearBasePropertyInfo():void {
			base_property_info$field = null;
		}

		public function get hasBasePropertyInfo():Boolean {
			return base_property_info$field != null;
		}

		public function set basePropertyInfo(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			base_property_info$field = value;
		}

		public function get basePropertyInfo():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return base_property_info$field;
		}

		/**
		 *  @private
		 */
		public static const IS_CARRY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.is_carry", "isCarry", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_carry$field:int;

		public function clearIsCarry():void {
			hasField$0 &= 0xfffffff7;
			is_carry$field = new int();
		}

		public function get hasIsCarry():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set isCarry(value:int):void {
			hasField$0 |= 0x8;
			is_carry$field = value;
		}

		public function get isCarry():int {
			return is_carry$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.summonMonsterId);
			if (hasHaveSummonMonster) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, have_summon_monster$field);
			}
			if (hasIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, index$field);
			}
			if (hasRemainCaptureTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, remain_capture_times$field);
			}
			if (hasBasePropertyInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_property_info$field);
			}
			if (hasIsCarry) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, is_carry$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var summon_monster_id$count:uint = 0;
			var have_summon_monster$count:uint = 0;
			var index$count:uint = 0;
			var remain_capture_times$count:uint = 0;
			var base_property_info$count:uint = 0;
			var is_carry$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (summon_monster_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterInfo.summonMonsterId cannot be set twice.');
					}
					++summon_monster_id$count;
					this.summonMonsterId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (have_summon_monster$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterInfo.haveSummonMonster cannot be set twice.');
					}
					++have_summon_monster$count;
					this.haveSummonMonster = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (remain_capture_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterInfo.remainCaptureTimes cannot be set twice.');
					}
					++remain_capture_times$count;
					this.remainCaptureTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (base_property_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterInfo.basePropertyInfo cannot be set twice.');
					}
					++base_property_info$count;
					this.basePropertyInfo = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.basePropertyInfo);
					break;
				case 6:
					if (is_carry$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterInfo.isCarry cannot be set twice.');
					}
					++is_carry$count;
					this.isCarry = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
