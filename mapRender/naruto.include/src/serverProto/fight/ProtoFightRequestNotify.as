package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFightRequestNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightRequestNotify.player", "player", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var player:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoFightRequestNotify.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.max_hp", "maxHp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:int;

		private var hasField$0:uint = 0;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffffe;
			max_hp$field = new int();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set maxHp(value:int):void {
			hasField$0 |= 0x1;
			max_hp$field = value;
		}

		public function get maxHp():int {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.current_hp", "currentHp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_hp$field:int;

		public function clearCurrentHp():void {
			hasField$0 &= 0xfffffffd;
			current_hp$field = new int();
		}

		public function get hasCurrentHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set currentHp(value:int):void {
			hasField$0 |= 0x2;
			current_hp$field = value;
		}

		public function get currentHp():int {
			return current_hp$field;
		}

		/**
		 *  @private
		 */
		public static const CHAKRA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.chakra", "chakra", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chakra$field:int;

		public function clearChakra():void {
			hasField$0 &= 0xfffffffb;
			chakra$field = new int();
		}

		public function get hasChakra():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set chakra(value:int):void {
			hasField$0 |= 0x4;
			chakra$field = value;
		}

		public function get chakra():int {
			return chakra$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.level", "level", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffff7;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x8;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.player);
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_hp$field);
			}
			if (hasCurrentHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_hp$field);
			}
			if (hasChakra) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, chakra$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player$count:uint = 0;
			var name$count:uint = 0;
			var max_hp$count:uint = 0;
			var current_hp$count:uint = 0;
			var chakra$count:uint = 0;
			var level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightRequestNotify.player cannot be set twice.');
					}
					++player$count;
					this.player = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.player);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightRequestNotify.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightRequestNotify.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (current_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightRequestNotify.currentHp cannot be set twice.');
					}
					++current_hp$count;
					this.currentHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (chakra$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightRequestNotify.chakra cannot be set twice.');
					}
					++chakra$count;
					this.chakra = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightRequestNotify.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
