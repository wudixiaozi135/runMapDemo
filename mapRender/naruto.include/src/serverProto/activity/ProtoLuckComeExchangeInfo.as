package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoLuckComeExchangeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const STAR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeExchangeInfo.star", "star", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var star$field:uint;

		private var hasField$0:uint = 0;

		public function clearStar():void {
			hasField$0 &= 0xfffffffe;
			star$field = new uint();
		}

		public function get hasStar():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set star(value:uint):void {
			hasField$0 |= 0x1;
			star$field = value;
		}

		public function get star():uint {
			return star$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeExchangeInfo.award", "award", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		private var award$field:serverProto.inc.ProtoItemInfo;

		public function clearAward():void {
			award$field = null;
		}

		public function get hasAward():Boolean {
			return award$field != null;
		}

		public function set award(value:serverProto.inc.ProtoItemInfo):void {
			award$field = value;
		}

		public function get award():serverProto.inc.ProtoItemInfo {
			return award$field;
		}

		/**
		 *  @private
		 */
		public static const LIMIT_EXCHANGE_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeExchangeInfo.limit_exchange_num", "limitExchangeNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit_exchange_num$field:uint;

		public function clearLimitExchangeNum():void {
			hasField$0 &= 0xfffffffd;
			limit_exchange_num$field = new uint();
		}

		public function get hasLimitExchangeNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set limitExchangeNum(value:uint):void {
			hasField$0 |= 0x2;
			limit_exchange_num$field = value;
		}

		public function get limitExchangeNum():uint {
			return limit_exchange_num$field;
		}

		/**
		 *  @private
		 */
		public static const EXCHANGED_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeExchangeInfo.exchanged_num", "exchangedNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exchanged_num$field:uint;

		public function clearExchangedNum():void {
			hasField$0 &= 0xfffffffb;
			exchanged_num$field = new uint();
		}

		public function get hasExchangedNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set exchangedNum(value:uint):void {
			hasField$0 |= 0x4;
			exchanged_num$field = value;
		}

		public function get exchangedNum():uint {
			return exchanged_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasStar) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, star$field);
			}
			if (hasAward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award$field);
			}
			if (hasLimitExchangeNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, limit_exchange_num$field);
			}
			if (hasExchangedNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, exchanged_num$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var star$count:uint = 0;
			var award$count:uint = 0;
			var limit_exchange_num$count:uint = 0;
			var exchanged_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (star$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeExchangeInfo.star cannot be set twice.');
					}
					++star$count;
					this.star = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (award$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeExchangeInfo.award cannot be set twice.');
					}
					++award$count;
					this.award = new serverProto.inc.ProtoItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.award);
					break;
				case 3:
					if (limit_exchange_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeExchangeInfo.limitExchangeNum cannot be set twice.');
					}
					++limit_exchange_num$count;
					this.limitExchangeNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (exchanged_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeExchangeInfo.exchangedNum cannot be set twice.');
					}
					++exchanged_num$count;
					this.exchangedNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
