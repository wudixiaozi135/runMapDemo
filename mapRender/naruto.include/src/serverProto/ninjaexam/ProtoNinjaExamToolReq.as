package serverProto.ninjaexam {
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
	public  final class ProtoNinjaExamToolReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoNinjaExamToolReq.count", "count", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var count:int;

		/**
		 *  @private
		 */
		public static const NOTIFY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoNinjaExamToolReq.notify", "notify", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var notify$field:int;

		private var hasField$0:uint = 0;

		public function clearNotify():void {
			hasField$0 &= 0xfffffffe;
			notify$field = new int();
		}

		public function get hasNotify():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set notify(value:int):void {
			hasField$0 |= 0x1;
			notify$field = value;
		}

		public function get notify():int {
			return notify$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.count);
			if (hasNotify) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, notify$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var count$count:uint = 0;
			var notify$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamToolReq.count cannot be set twice.');
					}
					++count$count;
					this.count = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (notify$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamToolReq.notify cannot be set twice.');
					}
					++notify$count;
					this.notify = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
