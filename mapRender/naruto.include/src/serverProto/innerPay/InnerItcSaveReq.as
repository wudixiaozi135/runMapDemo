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
	public  final class InnerItcSaveReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const IP_FORWARD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcSaveReq.ip_forward", "ipForward", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const AREA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcSaveReq.area", "area", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var area:int;

		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveReq.uin", "uin", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const DST_UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveReq.dst_uin", "dstUin", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dstUin:uint;

		/**
		 *  @private
		 */
		public static const AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveReq.amount", "amount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var amount:uint;

		/**
		 *  @private
		 */
		public static const PORTAL_REQ:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcSaveReq.portal_req", "portalReq", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var portalReq:String;

		/**
		 *  @private
		 */
		public static const SOURCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcSaveReq.source", "source", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var source$field:int;

		private var hasField$0:uint = 0;

		public function clearSource():void {
			hasField$0 &= 0xfffffffe;
			source$field = new int();
		}

		public function get hasSource():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set source(value:int):void {
			hasField$0 |= 0x1;
			source$field = value;
		}

		public function get source():int {
			return source$field;
		}

		/**
		 *  @private
		 */
		public static const REMARK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcSaveReq.remark", "remark", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var remark$field:String;

		public function clearRemark():void {
			remark$field = null;
		}

		public function get hasRemark():Boolean {
			return remark$field != null;
		}

		public function set remark(value:String):void {
			remark$field = value;
		}

		public function get remark():String {
			return remark$field;
		}

		/**
		 *  @private
		 */
		public static const TRANINFO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcSaveReq.traninfo", "traninfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var traninfo$field:String;

		public function clearTraninfo():void {
			traninfo$field = null;
		}

		public function get hasTraninfo():Boolean {
			return traninfo$field != null;
		}

		public function set traninfo(value:String):void {
			traninfo$field = value;
		}

		public function get traninfo():String {
			return traninfo$field;
		}

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
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.dstUin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.amount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.portalReq);
			if (hasSource) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, source$field);
			}
			if (hasRemark) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, remark$field);
			}
			if (hasTraninfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, traninfo$field);
			}
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
			var dst_uin$count:uint = 0;
			var amount$count:uint = 0;
			var portal_req$count:uint = 0;
			var source$count:uint = 0;
			var remark$count:uint = 0;
			var traninfo$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ip_forward$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.ipForward cannot be set twice.');
					}
					++ip_forward$count;
					this.ipForward = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (area$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.area cannot be set twice.');
					}
					++area$count;
					this.area = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (dst_uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.dstUin cannot be set twice.');
					}
					++dst_uin$count;
					this.dstUin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (amount$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.amount cannot be set twice.');
					}
					++amount$count;
					this.amount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (portal_req$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.portalReq cannot be set twice.');
					}
					++portal_req$count;
					this.portalReq = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (source$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.source cannot be set twice.');
					}
					++source$count;
					this.source = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (remark$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.remark cannot be set twice.');
					}
					++remark$count;
					this.remark = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 9:
					if (traninfo$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcSaveReq.traninfo cannot be set twice.');
					}
					++traninfo$count;
					this.traninfo = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
