package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.dungeon.ProtoBefallDifficultyType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBefallDifficultyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoBefallDifficultyInfo.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.dungeon.ProtoBefallDifficultyType);

		private var type$field:int;

		private var hasField$0:uint = 0;

		public function clearType():void {
			hasField$0 &= 0xfffffffe;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x1;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBefallDifficultyInfo.open_level", "openLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:int;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffd;
			open_level$field = new int();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set openLevel(value:int):void {
			hasField$0 |= 0x2;
			open_level$field = value;
		}

		public function get openLevel():int {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_STRENGTH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBefallDifficultyInfo.need_strength", "needStrength", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_strength$field:int;

		public function clearNeedStrength():void {
			hasField$0 &= 0xfffffffb;
			need_strength$field = new int();
		}

		public function get hasNeedStrength():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set needStrength(value:int):void {
			hasField$0 |= 0x4;
			need_strength$field = value;
		}

		public function get needStrength():int {
			return need_strength$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, type$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, open_level$field);
			}
			if (hasNeedStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_strength$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var open_level$count:uint = 0;
			var need_strength$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDifficultyInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDifficultyInfo.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (need_strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDifficultyInfo.needStrength cannot be set twice.');
					}
					++need_strength$count;
					this.needStrength = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
