package serverProto.cl5 {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.cl5.ProtoCl5PtloginResponse;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCl5ServiceResponseInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PTLOGIN_RSP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceResponseInfo.ptlogin_rsp", "ptloginRsp", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cl5.ProtoCl5PtloginResponse);

		private var ptlogin_rsp$field:serverProto.cl5.ProtoCl5PtloginResponse;

		public function clearPtloginRsp():void {
			ptlogin_rsp$field = null;
		}

		public function get hasPtloginRsp():Boolean {
			return ptlogin_rsp$field != null;
		}

		public function set ptloginRsp(value:serverProto.cl5.ProtoCl5PtloginResponse):void {
			ptlogin_rsp$field = value;
		}

		public function get ptloginRsp():serverProto.cl5.ProtoCl5PtloginResponse {
			return ptlogin_rsp$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPtloginRsp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ptlogin_rsp$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ptlogin_rsp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ptlogin_rsp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ServiceResponseInfo.ptloginRsp cannot be set twice.');
					}
					++ptlogin_rsp$count;
					this.ptloginRsp = new serverProto.cl5.ProtoCl5PtloginResponse();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ptloginRsp);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
