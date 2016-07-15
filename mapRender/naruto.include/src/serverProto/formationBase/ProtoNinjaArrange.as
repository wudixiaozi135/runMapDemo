package serverProto.formationBase {
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
	public  final class ProtoNinjaArrange extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoNinjaArrange.ninja_seq", "ninjaSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:uint;

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.location", "location", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var location:int;

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.ninja_id", "ninjaId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_id$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaId():void {
			hasField$0 &= 0xfffffffe;
			ninja_id$field = new int();
		}

		public function get hasNinjaId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaId(value:int):void {
			hasField$0 |= 0x1;
			ninja_id$field = value;
		}

		public function get ninjaId():int {
			return ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.hp", "hp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:int;

		public function clearHp():void {
			hasField$0 &= 0xfffffffd;
			hp$field = new int();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hp(value:int):void {
			hasField$0 |= 0x2;
			hp$field = value;
		}

		public function get hp():int {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const ULIMIT_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.ulimit_hp", "ulimitHp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ulimit_hp$field:int;

		public function clearUlimitHp():void {
			hasField$0 &= 0xfffffffb;
			ulimit_hp$field = new int();
		}

		public function get hasUlimitHp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ulimitHp(value:int):void {
			hasField$0 |= 0x4;
			ulimit_hp$field = value;
		}

		public function get ulimitHp():int {
			return ulimit_hp$field;
		}

		/**
		 *  @private
		 */
		public static const POS_QUEUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.pos_queue", "posQueue", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pos_queue$field:int;

		public function clearPosQueue():void {
			hasField$0 &= 0xfffffff7;
			pos_queue$field = new int();
		}

		public function get hasPosQueue():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set posQueue(value:int):void {
			hasField$0 |= 0x8;
			pos_queue$field = value;
		}

		public function get posQueue():int {
			return pos_queue$field;
		}

		/**
		 *  @private
		 */
		public static const STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.star_level", "starLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var star_level$field:int;

		public function clearStarLevel():void {
			hasField$0 &= 0xffffffef;
			star_level$field = new int();
		}

		public function get hasStarLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set starLevel(value:int):void {
			hasField$0 |= 0x10;
			star_level$field = value;
		}

		public function get starLevel():int {
			return star_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.ninja_level", "ninjaLevel", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_level$field:int;

		public function clearNinjaLevel():void {
			hasField$0 &= 0xffffffdf;
			ninja_level$field = new int();
		}

		public function get hasNinjaLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set ninjaLevel(value:int):void {
			hasField$0 |= 0x20;
			ninja_level$field = value;
		}

		public function get ninjaLevel():int {
			return ninja_level$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.awaken_level", "awakenLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awaken_level$field:int;

		public function clearAwakenLevel():void {
			hasField$0 &= 0xffffffbf;
			awaken_level$field = new int();
		}

		public function get hasAwakenLevel():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set awakenLevel(value:int):void {
			hasField$0 |= 0x40;
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
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSeq);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.location);
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_id$field);
			}
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hp$field);
			}
			if (hasUlimitHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ulimit_hp$field);
			}
			if (hasPosQueue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, pos_queue$field);
			}
			if (hasStarLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, star_level$field);
			}
			if (hasNinjaLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_level$field);
			}
			if (hasAwakenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
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
			var ninja_seq$count:uint = 0;
			var location$count:uint = 0;
			var ninja_id$count:uint = 0;
			var hp$count:uint = 0;
			var ulimit_hp$count:uint = 0;
			var pos_queue$count:uint = 0;
			var star_level$count:uint = 0;
			var ninja_level$count:uint = 0;
			var awaken_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.location cannot be set twice.');
					}
					++location$count;
					this.location = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (ulimit_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.ulimitHp cannot be set twice.');
					}
					++ulimit_hp$count;
					this.ulimitHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (pos_queue$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.posQueue cannot be set twice.');
					}
					++pos_queue$count;
					this.posQueue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (star_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.starLevel cannot be set twice.');
					}
					++star_level$count;
					this.starLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.ninjaLevel cannot be set twice.');
					}
					++ninja_level$count;
					this.ninjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (awaken_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaArrange.awakenLevel cannot be set twice.');
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
