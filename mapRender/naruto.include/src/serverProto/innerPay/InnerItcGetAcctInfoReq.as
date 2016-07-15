package serverProto.innerPay {
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
	public  final class InnerItcGetAcctInfoReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const IP_FORWARD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcGetAcctInfoReq.ip_forward", "ipForward", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var ip_forward$field:String;

		public function clearIpForward():void {
			ip_forward$field = null;
		}

		public function get hasIpForward():Boolean {
			return ip_forward$field != null;
		}

		public function set ipForward(value:String):void {
			ip_forward$field = value;
		}

		public function get ipForward():String {
			return ip_forward$field;
		}

		/**
		 *  @private
		 */
		public static const AREA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoReq.area", "area", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var area:int;

		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcGetAcctInfoReq.uin", "uin", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasIpForward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, ip_forward$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.area);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.uin);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ip_forward$count:uint = 0;
			var area$count:uint = 0;
			var uin$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ip_forward$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoReq.ipForward cannot be set twice.');
					}
					++ip_forward$count;
					this.ipForward = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (area$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoReq.area cannot be set twice.');
					}
					++area$count;
					this.area = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoReq.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
