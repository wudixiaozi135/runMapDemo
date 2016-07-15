package serverProto.cl5 {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.cl5.ProtoCl5ServiceRequestInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCl5ProxyRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SERVICE_REQ:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ProxyRequest.service_req", "serviceReq", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cl5.ProtoCl5ServiceRequestInfo);

		private var service_req$field:serverProto.cl5.ProtoCl5ServiceRequestInfo;

		public function clearServiceReq():void {
			service_req$field = null;
		}

		public function get hasServiceReq():Boolean {
			return service_req$field != null;
		}

		public function set serviceReq(value:serverProto.cl5.ProtoCl5ServiceRequestInfo):void {
			service_req$field = value;
		}

		public function get serviceReq():serverProto.cl5.ProtoCl5ServiceRequestInfo {
			return service_req$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasServiceReq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, service_req$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var service_req$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (service_req$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ProxyRequest.serviceReq cannot be set twice.');
					}
					++service_req$count;
					this.serviceReq = new serverProto.cl5.ProtoCl5ServiceRequestInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.serviceReq);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
