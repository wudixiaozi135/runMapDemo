package serverProto.inc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaSimpleInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearNinjaId():void {
			hasField$0 &= 0xfffffffe;
			ninja_id$field = new uint();
		}

		public function get hasNinjaId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaId(value:uint):void {
			hasField$0 |= 0x1;
			ninja_id$field = value;
		}

		public function get ninjaId():uint {
			return ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_level", "ninjaLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_level$field:uint;

		public function clearNinjaLevel():void {
			hasField$0 &= 0xfffffffd;
			ninja_level$field = new uint();
		}

		public function get hasNinjaLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ninjaLevel(value:uint):void {
			hasField$0 |= 0x2;
			ninja_level$field = value;
		}

		public function get ninjaLevel():uint {
			return ninja_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_STAR_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_star_level", "ninjaStarLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_star_level$field:uint;

		public function clearNinjaStarLevel():void {
			hasField$0 &= 0xfffffffb;
			ninja_star_level$field = new uint();
		}

		public function get hasNinjaStarLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ninjaStarLevel(value:uint):void {
			hasField$0 |= 0x4;
			ninja_star_level$field = value;
		}

		public function get ninjaStarLevel():uint {
			return ninja_star_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_hp", "ninjaHp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_hp$field:int;

		public function clearNinjaHp():void {
			hasField$0 &= 0xfffffff7;
			ninja_hp$field = new int();
		}

		public function get hasNinjaHp():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set ninjaHp(value:int):void {
			hasField$0 |= 0x8;
			ninja_hp$field = value;
		}

		public function get ninjaHp():int {
			return ninja_hp$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.max_ninja_hp", "maxNinjaHp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_ninja_hp$field:int;

		public function clearMaxNinjaHp():void {
			hasField$0 &= 0xffffffef;
			max_ninja_hp$field = new int();
		}

		public function get hasMaxNinjaHp():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set maxNinjaHp(value:int):void {
			hasField$0 |= 0x10;
			max_ninja_hp$field = value;
		}

		public function get maxNinjaHp():int {
			return max_ninja_hp$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_awaken_level", "ninjaAwakenLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_awaken_level$field:int;

		public function clearNinjaAwakenLevel():void {
			hasField$0 &= 0xffffffdf;
			ninja_awaken_level$field = new int();
		}

		public function get hasNinjaAwakenLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set ninjaAwakenLevel(value:int):void {
			hasField$0 |= 0x20;
			ninja_awaken_level$field = value;
		}

		public function get ninjaAwakenLevel():int {
			return ninja_awaken_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_id$field);
			}
			if (hasNinjaLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_level$field);
			}
			if (hasNinjaStarLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_star_level$field);
			}
			if (hasNinjaHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_hp$field);
			}
			if (hasMaxNinjaHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, max_ninja_hp$field);
			}
			if (hasNinjaAwakenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_awaken_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_id$count:uint = 0;
			var ninja_level$count:uint = 0;
			var ninja_star_level$count:uint = 0;
			var ninja_hp$count:uint = 0;
			var max_ninja_hp$count:uint = 0;
			var ninja_awaken_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSimpleInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSimpleInfo.ninjaLevel cannot be set twice.');
					}
					++ninja_level$count;
					this.ninjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (ninja_star_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSimpleInfo.ninjaStarLevel cannot be set twice.');
					}
					++ninja_star_level$count;
					this.ninjaStarLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (ninja_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSimpleInfo.ninjaHp cannot be set twice.');
					}
					++ninja_hp$count;
					this.ninjaHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (max_ninja_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSimpleInfo.maxNinjaHp cannot be set twice.');
					}
					++max_ninja_hp$count;
					this.maxNinjaHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (ninja_awaken_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSimpleInfo.ninjaAwakenLevel cannot be set twice.');
					}
					++ninja_awaken_level$count;
					this.ninjaAwakenLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
