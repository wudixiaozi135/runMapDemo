package serverProto.activity {
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
	public  final class ProtoQQ3366Level extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BEGIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQQ3366Level.begin_level", "beginLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearBeginLevel():void {
			hasField$0 &= 0xfffffffe;
			begin_level$field = new uint();
		}

		public function get hasBeginLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beginLevel(value:uint):void {
			hasField$0 |= 0x1;
			begin_level$field = value;
		}

		public function get beginLevel():uint {
			return begin_level$field;
		}

		/**
		 *  @private
		 */
		public static const END_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQQ3366Level.end_level", "endLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_level$field:uint;

		public function clearEndLevel():void {
			hasField$0 &= 0xfffffffd;
			end_level$field = new uint();
		}

		public function get hasEndLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endLevel(value:uint):void {
			hasField$0 |= 0x2;
			end_level$field = value;
		}

		public function get endLevel():uint {
			return end_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBeginLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_level$field);
			}
			if (hasEndLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var begin_level$count:uint = 0;
			var end_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (begin_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQQ3366Level.beginLevel cannot be set twice.');
					}
					++begin_level$count;
					this.beginLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (end_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQQ3366Level.endLevel cannot be set twice.');
					}
					++end_level$count;
					this.endLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
