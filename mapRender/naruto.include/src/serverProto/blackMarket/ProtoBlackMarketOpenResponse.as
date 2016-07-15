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
	public  final class ProtoBlackMarketOpenResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketOpenResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const BLACK_MARKET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketOpenResponse.black_market_info", "blackMarketInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.blackMarket.ProtoBlackMarketInfo);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasBlackMarketInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, black_market_info$field);
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
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketOpenResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (black_market_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketOpenResponse.blackMarketInfo cannot be set twice.');
					}
					++black_market_info$count;
					this.blackMarketInfo = new serverProto.blackMarket.ProtoBlackMarketInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.blackMarketInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
