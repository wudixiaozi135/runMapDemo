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
	public  final class InnerItcGetAcctInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerItcGetAcctInfoRsp.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.uin", "uin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const STAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.stat", "stat", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var stat$field:int;

		public function clearStat():void {
			hasField$0 &= 0xfffffffd;
			stat$field = new int();
		}

		public function get hasStat():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set stat(value:int):void {
			hasField$0 |= 0x2;
			stat$field = value;
		}

		public function get stat():int {
			return stat$field;
		}

		/**
		 *  @private
		 */
		public static const BALANCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.balance", "balance", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var balance$field:int;

		public function clearBalance():void {
			hasField$0 &= 0xfffffffb;
			balance$field = new int();
		}

		public function get hasBalance():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set balance(value:int):void {
			hasField$0 |= 0x4;
			balance$field = value;
		}

		public function get balance():int {
			return balance$field;
		}

		/**
		 *  @private
		 */
		public static const ALLIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.allin", "allin", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var allin$field:int;

		public function clearAllin():void {
			hasField$0 &= 0xfffffff7;
			allin$field = new int();
		}

		public function get hasAllin():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set allin(value:int):void {
			hasField$0 |= 0x8;
			allin$field = value;
		}

		public function get allin():int {
			return allin$field;
		}

		/**
		 *  @private
		 */
		public static const DAYOUT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.dayout", "dayout", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dayout$field:int;

		public function clearDayout():void {
			hasField$0 &= 0xffffffef;
			dayout$field = new int();
		}

		public function get hasDayout():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set dayout(value:int):void {
			hasField$0 |= 0x10;
			dayout$field = value;
		}

		public function get dayout():int {
			return dayout$field;
		}

		/**
		 *  @private
		 */
		public static const ALLOUT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.allout", "allout", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var allout$field:int;

		public function clearAllout():void {
			hasField$0 &= 0xffffffdf;
			allout$field = new int();
		}

		public function get hasAllout():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set allout(value:int):void {
			hasField$0 |= 0x20;
			allout$field = value;
		}

		public function get allout():int {
			return allout$field;
		}

		/**
		 *  @private
		 */
		public static const EXPIRE_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.expire_time", "expireTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var expire_time$field:int;

		public function clearExpireTime():void {
			hasField$0 &= 0xffffffbf;
			expire_time$field = new int();
		}

		public function get hasExpireTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set expireTime(value:int):void {
			hasField$0 |= 0x40;
			expire_time$field = value;
		}

		public function get expireTime():int {
			return expire_time$field;
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
			if (hasStat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, stat$field);
			}
			if (hasBalance) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, balance$field);
			}
			if (hasAllin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, allin$field);
			}
			if (hasDayout) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dayout$field);
			}
			if (hasAllout) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, allout$field);
			}
			if (hasExpireTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, expire_time$field);
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
			var stat$count:uint = 0;
			var balance$count:uint = 0;
			var allin$count:uint = 0;
			var dayout$count:uint = 0;
			var allout$count:uint = 0;
			var expire_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (stat$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.stat cannot be set twice.');
					}
					++stat$count;
					this.stat = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (balance$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.balance cannot be set twice.');
					}
					++balance$count;
					this.balance = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (allin$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.allin cannot be set twice.');
					}
					++allin$count;
					this.allin = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (dayout$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.dayout cannot be set twice.');
					}
					++dayout$count;
					this.dayout = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (allout$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.allout cannot be set twice.');
					}
					++allout$count;
					this.allout = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (expire_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerItcGetAcctInfoRsp.expireTime cannot be set twice.');
					}
					++expire_time$count;
					this.expireTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
