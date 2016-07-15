package serverProto.innerPay {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class InnerItcSaveRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerItcSaveRsp.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveRsp.uin", "uin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var uin$field:uint;

		private var hasField$0:uint = 0;

		public function clearUin():void {
			hasField$0 &= 0xfffffffe;
			uin$field = new uint();
		}

		public function get hasUin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set uin(value:uint):void {
			hasField$0 |= 0x1;
			uin$field = value;
		}

		public function get uin():uint {
			return uin$field;
		}

		/**
		 *  @private
		 */
		public static const AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveRsp.amount", "amount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var amount$field:uint;

		public function clearAmount():void {
			hasField$0 &= 0xfffffffd;
			amount$field = new uint();
		}

		public function get hasAmount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set amount(value:uint):void {
			hasField$0 |= 0x2;
			amount$field = value;
		}

		public function get amount():uint {
			return amount$field;
		}

		/**
		 *  @private
		 */
		public static const PORTAL_REQ:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcSaveRsp.portal_req", "portalReq", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var portal_req$field:String;

		public function clearPortalReq():void {
			portal_req$field = null;
		}

		public function get hasPortalReq():Boolean {
			return portal_req$field != null;
		}

		public function set portalReq(value:String):void {
			portal_req$field = value;
		}

		public function get portalReq():String {
			return portal_req$field;
		}

		/**
		 *  @private
		 */
		public static const ALLIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveRsp.allin", "allin", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var allin$field:uint;

		public function clearAllin():void {
			hasField$0 &= 0xfffffffb;
			allin$field = new uint();
		}

		public function get hasAllin():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set allin(value:uint):void {
			hasField$0 |= 0x4;
			allin$field = value;
		}

		public function get allin():uint {
			return allin$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasUin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, uin$field);
			}
			if (hasAmount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, amount$field);
			}
			if (hasPortalReq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, portal_req$field);
			}
			if (hasAllin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, allin$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var uin$count:uint = 0;
			var amount$count:uint = 0;
			var portal_req$count:uint = 0;
			var allin$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveRsp.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveRsp.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (amount$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveRsp.amount cannot be set twice.');
					}
					++amount$count;
					this.amount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (portal_req$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveRsp.portalReq cannot be set twice.');
					}
					++portal_req$count;
					this.portalReq = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (allin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveRsp.allin cannot be set twice.');
					}
					++allin$count;
					this.allin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
