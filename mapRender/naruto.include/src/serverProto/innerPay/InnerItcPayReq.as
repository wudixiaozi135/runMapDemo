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
	public  final class InnerItcPayReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const IP_FORWARD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.ip_forward", "ipForward", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const AREA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcPayReq.area", "area", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var area:int;

		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcPayReq.uin", "uin", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcPayReq.amount", "amount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var amount:uint;

		/**
		 *  @private
		 */
		public static const BILLNO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.billno", "billno", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var billno:String;

		/**
		 *  @private
		 */
		public static const SOURCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcPayReq.source", "source", (6 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const REMARK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.remark", "remark", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const TRANINFO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.traninfo", "traninfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.amount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.billno);
			if (hasSource) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, source$field);
			}
			if (hasRemark) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, remark$field);
			}
			if (hasTraninfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
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
			var amount$count:uint = 0;
			var billno$count:uint = 0;
			var source$count:uint = 0;
			var remark$count:uint = 0;
			var traninfo$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ip_forward$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.ipForward cannot be set twice.');
					}
					++ip_forward$count;
					this.ipForward = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (area$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.area cannot be set twice.');
					}
					++area$count;
					this.area = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (amount$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.amount cannot be set twice.');
					}
					++amount$count;
					this.amount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (billno$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.billno cannot be set twice.');
					}
					++billno$count;
					this.billno = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (source$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.source cannot be set twice.');
					}
					++source$count;
					this.source = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (remark$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.remark cannot be set twice.');
					}
					++remark$count;
					this.remark = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 8:
					if (traninfo$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcPayReq.traninfo cannot be set twice.');
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
