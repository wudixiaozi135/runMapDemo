package serverProto.blackMarket {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.blackMarket.ProtoBlackMarketInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBlackMarketExchangeJadeResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketExchangeJadeResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const BLACK_MARKET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketExchangeJadeResponse.black_market_info", "blackMarketInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.blackMarket.ProtoBlackMarketInfo);

		private var black_market_info$field:serverProto.blackMarket.ProtoBlackMarketInfo;

		public function clearBlackMarketInfo():void {
			black_market_info$field = null;
		}

		public function get hasBlackMarketInfo():Boolean {
			return black_market_info$field != null;
		}

		public function set blackMarketInfo(value:serverProto.blackMarket.ProtoBlackMarketInfo):void {
			black_market_info$field = value;
		}

		public function get blackMarketInfo():serverProto.blackMarket.ProtoBlackMarketInfo {
			return black_market_info$field;
		}

		/**
		 *  @private
		 */
		public static const JADE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketExchangeJadeResponse.jade_id", "jadeId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jade_id$field:int;

		private var hasField$0:uint = 0;

		public function clearJadeId():void {
			hasField$0 &= 0xfffffffe;
			jade_id$field = new int();
		}

		public function get hasJadeId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set jadeId(value:int):void {
			hasField$0 |= 0x1;
			jade_id$field = value;
		}

		public function get jadeId():int {
			return jade_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasBlackMarketInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, black_market_info$field);
			}
			if (hasJadeId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, jade_id$field);
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
			var black_market_info$count:uint = 0;
			var jade_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketExchangeJadeResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (black_market_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketExchangeJadeResponse.blackMarketInfo cannot be set twice.');
					}
					++black_market_info$count;
					this.blackMarketInfo = new serverProto.blackMarket.ProtoBlackMarketInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.blackMarketInfo);
					break;
				case 3:
					if (jade_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketExchangeJadeResponse.jadeId cannot be set twice.');
					}
					++jade_id$count;
					this.jadeId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
