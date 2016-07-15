package serverProto.ninjaSystem {
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
	public  final class ProtoNinjaToolAddAllNinjaRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolAddAllNinjaRequest.ninja_level", "ninjaLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaLevel:int;

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolAddAllNinjaRequest.ninja_id", "ninjaId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const IS_PUTAWAY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolAddAllNinjaRequest.is_putaway", "isPutaway", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_putaway$field:int;

		public function clearIsPutaway():void {
			hasField$0 &= 0xfffffffd;
			is_putaway$field = new int();
		}

		public function get hasIsPutaway():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set isPutaway(value:int):void {
			hasField$0 |= 0x2;
			is_putaway$field = value;
		}

		public function get isPutaway():int {
			return is_putaway$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaLevel);
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_id$field);
			}
			if (hasIsPutaway) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, is_putaway$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_level$count:uint = 0;
			var ninja_id$count:uint = 0;
			var is_putaway$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaToolAddAllNinjaRequest.ninjaLevel cannot be set twice.');
					}
					++ninja_level$count;
					this.ninjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaToolAddAllNinjaRequest.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (is_putaway$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaToolAddAllNinjaRequest.isPutaway cannot be set twice.');
					}
					++is_putaway$count;
					this.isPutaway = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
