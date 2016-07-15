package serverProto.bag {
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
	public  final class ProtoBagRuneInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.index", "index", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.num", "num", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var num:uint;

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.exp", "exp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var exp:uint;

		/**
		 *  @private
		 */
		public static const COMPOSE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagRuneInfo.compose_exp", "composeExp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var compose_exp$field:int;

		private var hasField$0:uint = 0;

		public function clearComposeExp():void {
			hasField$0 &= 0xfffffffe;
			compose_exp$field = new int();
		}

		public function get hasComposeExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set composeExp(value:int):void {
			hasField$0 |= 0x1;
			compose_exp$field = value;
		}

		public function get composeExp():int {
			return compose_exp$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL_UP_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagRuneInfo.level_up_exp", "levelUpExp", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level_up_exp$field:int;

		public function clearLevelUpExp():void {
			hasField$0 &= 0xfffffffd;
			level_up_exp$field = new int();
		}

		public function get hasLevelUpExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set levelUpExp(value:int):void {
			hasField$0 |= 0x2;
			level_up_exp$field = value;
		}

		public function get levelUpExp():int {
			return level_up_exp$field;
		}

		/**
		 *  @private
		 */
		public static const IS_ULTIMATE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.bag.ProtoBagRuneInfo.is_ultimate", "isUltimate", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_ultimate$field:Boolean;

		public function clearIsUltimate():void {
			hasField$0 &= 0xfffffffb;
			is_ultimate$field = new Boolean();
		}

		public function get hasIsUltimate():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set isUltimate(value:Boolean):void {
			hasField$0 |= 0x4;
			is_ultimate$field = value;
		}

		public function get isUltimate():Boolean {
			return is_ultimate$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.num);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.exp);
			if (hasComposeExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, compose_exp$field);
			}
			if (hasLevelUpExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level_up_exp$field);
			}
			if (hasIsUltimate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_ultimate$field);
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
			var index$count:uint = 0;
			var num$count:uint = 0;
			var exp$count:uint = 0;
			var compose_exp$count:uint = 0;
			var level_up_exp$count:uint = 0;
			var is_ultimate$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (compose_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.composeExp cannot be set twice.');
					}
					++compose_exp$count;
					this.composeExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (level_up_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.levelUpExp cannot be set twice.');
					}
					++level_up_exp$count;
					this.levelUpExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (is_ultimate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagRuneInfo.isUltimate cannot be set twice.');
					}
					++is_ultimate$count;
					this.isUltimate = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
