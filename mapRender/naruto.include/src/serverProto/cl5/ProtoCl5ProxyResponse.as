package serverProto.cl5 {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.cl5.ProtoCl5ServiceResponseInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCl5ProxyResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ProxyResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SERVICE_RSP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ProxyResponse.service_rsp", "serviceRsp", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cl5.ProtoCl5ServiceResponseInfo);

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
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
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
			var ret$count:uint = 0;
			var service_rsp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ProxyResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (service_rsp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCl5ProxyResponse.serviceRsp cannot be set twice.');
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
