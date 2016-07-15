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
	public  final class ProtoMysticChestOpenReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const AUTO_BUY:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activity.ProtoMysticChestOpenReq.auto_buy", "autoBuy", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_buy$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearAutoBuy():void {
			hasField$0 &= 0xfffffffe;
			auto_buy$field = new Boolean();
		}

		public function get hasAutoBuy():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set autoBuy(value:Boolean):void {
			hasField$0 |= 0x1;
			auto_buy$field = value;
		}

		public function get autoBuy():Boolean {
			return auto_buy$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAutoBuy) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_buy$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var auto_buy$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (auto_buy$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestOpenReq.autoBuy cannot be set twice.');
					}
					++auto_buy$count;
					this.autoBuy = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
