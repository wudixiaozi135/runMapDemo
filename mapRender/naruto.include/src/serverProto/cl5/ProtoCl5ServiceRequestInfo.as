package serverProto.cl5 {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.cl5.ProtoCl5PtloginRequest;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCl5ServiceRequestInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PTLOGIN_REQ:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceRequestInfo.ptlogin_req", "ptloginReq", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cl5.ProtoCl5PtloginRequest);

		private var ptlogin_req$field:serverProto.cl5.ProtoCl5PtloginRequest;

		public function clearPtloginReq():void {
			ptlogin_req$field = null;
		}

		public function get hasPtloginReq():Boolean {
			return ptlogin_req$field != null;
		}

		public function set ptloginReq(value:serverProto.cl5.ProtoCl5PtloginRequest):void {
			ptlogin_req$field = value;
		}

		public function get ptloginReq():serverProto.cl5.ProtoCl5PtloginRequest {
			return ptlogin_req$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPtloginReq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ptlogin_req$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ptlogin_req$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ptlogin_req$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ServiceRequestInfo.ptloginReq cannot be set twice.');
					}
					++ptlogin_req$count;
					this.ptloginReq = new serverProto.cl5.ProtoCl5PtloginRequest();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ptloginReq);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
