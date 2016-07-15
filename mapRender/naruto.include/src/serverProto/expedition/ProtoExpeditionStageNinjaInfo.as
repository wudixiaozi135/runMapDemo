package serverProto.expedition {
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
	public  final class ProtoExpeditionStageNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:int;

		/**
		 *  @private
		 */
		public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.ninja_level", "ninjaLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaLevel:int;

		/**
		 *  @private
		 */
		public static const NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.ninja_hp", "ninjaHp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_hp$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaHp():void {
			hasField$0 &= 0xfffffffe;
			ninja_hp$field = new int();
		}

		public function get hasNinjaHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaHp(value:int):void {
			hasField$0 |= 0x1;
			ninja_hp$field = value;
		}

		public function get ninjaHp():int {
			return ninja_hp$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.max_ninja_hp", "maxNinjaHp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_ninja_hp$field:int;

		public function clearMaxNinjaHp():void {
			hasField$0 &= 0xfffffffd;
			max_ninja_hp$field = new int();
		}

		public function get hasMaxNinjaHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set maxNinjaHp(value:int):void {
			hasField$0 |= 0x2;
			max_ninja_hp$field = value;
		}

		public function get maxNinjaHp():int {
			return max_ninja_hp$field;
		}

		/**
		 *  @private
		 */
		public static const STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.star_level", "starLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var star_level$field:int;

		public function clearStarLevel():void {
			hasField$0 &= 0xfffffffb;
			star_level$field = new int();
		}

		public function get hasStarLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set starLevel(value:int):void {
			hasField$0 |= 0x4;
			star_level$field = value;
		}

		public function get starLevel():int {
			return star_level$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.awaken_level", "awakenLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awaken_level$field:int;

		public function clearAwakenLevel():void {
			hasField$0 &= 0xfffffff7;
			awaken_level$field = new int();
		}

		public function get hasAwakenLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set awakenLevel(value:int):void {
			hasField$0 |= 0x8;
			awaken_level$field = value;
		}

		public function get awakenLevel():int {
			return awaken_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaLevel);
			if (hasNinjaHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_hp$field);
			}
			if (hasMaxNinjaHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, max_ninja_hp$field);
			}
			if (hasStarLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, star_level$field);
			}
			if (hasAwakenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, awaken_level$field);
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
			var ninja_hp$count:uint = 0;
			var max_ninja_hp$count:uint = 0;
			var star_level$count:uint = 0;
			var awaken_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageNinjaInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageNinjaInfo.ninjaLevel cannot be set twice.');
					}
					++ninja_level$count;
					this.ninjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (ninja_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageNinjaInfo.ninjaHp cannot be set twice.');
					}
					++ninja_hp$count;
					this.ninjaHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (max_ninja_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageNinjaInfo.maxNinjaHp cannot be set twice.');
					}
					++max_ninja_hp$count;
					this.maxNinjaHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (star_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageNinjaInfo.starLevel cannot be set twice.');
					}
					++star_level$count;
					this.starLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (awaken_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageNinjaInfo.awakenLevel cannot be set twice.');
					}
					++awaken_level$count;
					this.awakenLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
