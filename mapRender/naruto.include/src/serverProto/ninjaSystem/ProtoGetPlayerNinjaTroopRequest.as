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
	public  final class ProtoGetPlayerNinjaTroopRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OPTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopRequest.option", "option", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var option$field:int;

		private var hasField$0:uint = 0;

		public function clearOption():void {
			hasField$0 &= 0xfffffffe;
			option$field = new int();
		}

		public function get hasOption():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set option(value:int):void {
			hasField$0 |= 0x1;
			option$field = value;
		}

		public function get option():int {
			return option$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasOption) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, option$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var option$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (option$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopRequest.option cannot be set twice.');
					}
					++option$count;
					this.option = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
