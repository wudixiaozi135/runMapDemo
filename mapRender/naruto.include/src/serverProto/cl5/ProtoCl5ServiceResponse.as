package serverProto.cl5 {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.cl5.ProtoCl5ServiceResponseInfo;
	import serverProto.cl5.ProtoCl5ServiceRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCl5ServiceResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CL5_SERVICE_RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceResponse.cl5_service_ret", "cl5ServiceRet", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cl5.ProtoCl5ServiceRetInfo);

		public var cl5ServiceRet:serverProto.cl5.ProtoCl5ServiceRetInfo;

		/**
		 *  @private
		 */
		public static const SERVICE_RSP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceResponse.service_rsp", "serviceRsp", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cl5.ProtoCl5ServiceResponseInfo);

		private var service_rsp$field:serverProto.cl5.ProtoCl5ServiceResponseInfo;

		public function clearServiceRsp():void {
			service_rsp$field = null;
		}

		public function get hasServiceRsp():Boolean {
			return service_rsp$field != null;
		}

		public function set serviceRsp(value:serverProto.cl5.ProtoCl5ServiceResponseInfo):void {
			service_rsp$field = value;
		}

		public function get serviceRsp():serverProto.cl5.ProtoCl5ServiceResponseInfo {
			return service_rsp$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.cl5ServiceRet);
			if (hasServiceRsp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, service_rsp$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cl5_service_ret$count:uint = 0;
			var service_rsp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cl5_service_ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ServiceResponse.cl5ServiceRet cannot be set twice.');
					}
					++cl5_service_ret$count;
					this.cl5ServiceRet = new serverProto.cl5.ProtoCl5ServiceRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.cl5ServiceRet);
					break;
				case 2:
					if (service_rsp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ServiceResponse.serviceRsp cannot be set twice.');
					}
					++service_rsp$count;
					this.serviceRsp = new serverProto.cl5.ProtoCl5ServiceResponseInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.serviceRsp);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
