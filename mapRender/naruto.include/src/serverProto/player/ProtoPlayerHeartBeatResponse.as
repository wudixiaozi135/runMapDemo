package serverProto.player {
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
	public  final class ProtoPlayerHeartBeatResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CUR_SERVER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.player.ProtoPlayerHeartBeatResponse.cur_server_time", "curServerTime", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_server_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurServerTime():void {
			hasField$0 &= 0xfffffffe;
			cur_server_time$field = new uint();
		}

		public function get hasCurServerTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set curServerTime(value:uint):void {
			hasField$0 |= 0x1;
			cur_server_time$field = value;
		}

		public function get curServerTime():uint {
			return cur_server_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCurServerTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_server_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cur_server_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cur_server_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerHeartBeatResponse.curServerTime cannot be set twice.');
					}
					++cur_server_time$count;
					this.curServerTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
