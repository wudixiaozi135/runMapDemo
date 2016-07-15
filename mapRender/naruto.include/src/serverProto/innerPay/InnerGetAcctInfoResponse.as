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
	public  final class InnerGetAcctInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerGetAcctInfoResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const STAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerGetAcctInfoResponse.stat", "stat", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var stat$field:int;

		private var hasField$0:uint = 0;

		public function clearStat():void {
			hasField$0 &= 0xfffffffe;
			stat$field = new int();
		}

		public function get hasStat():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set stat(value:int):void {
			hasField$0 |= 0x1;
			stat$field = value;
		}

		public function get stat():int {
			return stat$field;
		}

		/**
		 *  @private
		 */
		public static const BALANCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerGetAcctInfoResponse.balance", "balance", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var balance$field:int;

		public function clearBalance():void {
			hasField$0 &= 0xfffffffd;
			balance$field = new int();
		}

		public function get hasBalance():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set balance(value:int):void {
			hasField$0 |= 0x2;
			balance$field = value;
		}

		public function get balance():int {
			return balance$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasStat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, stat$field);
			}
			if (hasBalance) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, balance$field);
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
			var stat$count:uint = 0;
			var balance$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerGetAcctInfoResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (stat$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerGetAcctInfoResponse.stat cannot be set twice.');
					}
					++stat$count;
					this.stat = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (balance$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerGetAcctInfoResponse.balance cannot be set twice.');
					}
					++balance$count;
					this.balance = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
