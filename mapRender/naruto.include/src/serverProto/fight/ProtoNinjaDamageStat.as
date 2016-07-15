package serverProto.fight {
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
	public  final class ProtoNinjaDamageStat extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:int;

		/**
		 *  @private
		 */
		public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_level", "ninjaLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_level$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaLevel():void {
			hasField$0 &= 0xfffffffe;
			ninja_level$field = new int();
		}

		public function get hasNinjaLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaLevel(value:int):void {
			hasField$0 |= 0x1;
			ninja_level$field = value;
		}

		public function get ninjaLevel():int {
			return ninja_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_star_level", "ninjaStarLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_star_level$field:int;

		public function clearNinjaStarLevel():void {
			hasField$0 &= 0xfffffffd;
			ninja_star_level$field = new int();
		}

		public function get hasNinjaStarLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ninjaStarLevel(value:int):void {
			hasField$0 |= 0x2;
			ninja_star_level$field = value;
		}

		public function get ninjaStarLevel():int {
			return ninja_star_level$field;
		}

		/**
		 *  @private
		 */
		public static const MAKE_DAMAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.make_damage", "makeDamage", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var make_damage$field:int;

		public function clearMakeDamage():void {
			hasField$0 &= 0xfffffffb;
			make_damage$field = new int();
		}

		public function get hasMakeDamage():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set makeDamage(value:int):void {
			hasField$0 |= 0x4;
			make_damage$field = value;
		}

		public function get makeDamage():int {
			return make_damage$field;
		}

		/**
		 *  @private
		 */
		public static const AFFORD_DAMAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.afford_damage", "affordDamage", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var afford_damage$field:int;

		public function clearAffordDamage():void {
			hasField$0 &= 0xfffffff7;
			afford_damage$field = new int();
		}

		public function get hasAffordDamage():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set affordDamage(value:int):void {
			hasField$0 |= 0x8;
			afford_damage$field = value;
		}

		public function get affordDamage():int {
			return afford_damage$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_awaken_level", "ninjaAwakenLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_awaken_level$field:int;

		public function clearNinjaAwakenLevel():void {
			hasField$0 &= 0xffffffef;
			ninja_awaken_level$field = new int();
		}

		public function get hasNinjaAwakenLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set ninjaAwakenLevel(value:int):void {
			hasField$0 |= 0x10;
			ninja_awaken_level$field = value;
		}

		public function get ninjaAwakenLevel():int {
			return ninja_awaken_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaId);
			if (hasNinjaLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_level$field);
			}
			if (hasNinjaStarLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_star_level$field);
			}
			if (hasMakeDamage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, make_damage$field);
			}
			if (hasAffordDamage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, afford_damage$field);
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
			var make_damage$count:uint = 0;
			var afford_damage$count:uint = 0;
			var ninja_awaken_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDamageStat.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDamageStat.ninjaLevel cannot be set twice.');
					}
					++ninja_level$count;
					this.ninjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (ninja_star_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDamageStat.ninjaStarLevel cannot be set twice.');
					}
					++ninja_star_level$count;
					this.ninjaStarLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (make_damage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDamageStat.makeDamage cannot be set twice.');
					}
					++make_damage$count;
					this.makeDamage = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (afford_damage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDamageStat.affordDamage cannot be set twice.');
					}
					++afford_damage$count;
					this.affordDamage = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (ninja_awaken_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDamageStat.ninjaAwakenLevel cannot be set twice.');
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
