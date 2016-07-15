package serverProto.family {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.family.ProtoDispatchRecord;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDispatchNinjaFriendAwardRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const REMAIN_AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.remain_award_count", "remainAwardCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_award_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearRemainAwardCount():void {
			hasField$0 &= 0xfffffffe;
			remain_award_count$field = new uint();
		}

		public function get hasRemainAwardCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set remainAwardCount(value:uint):void {
			hasField$0 |= 0x1;
			remain_award_count$field = value;
		}

		public function get remainAwardCount():uint {
			return remain_award_count$field;
		}

		/**
		 *  @private
		 */
		public static const DISPATCH_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.dispatch_record", "dispatchRecord", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoDispatchRecord);

		[ArrayElementType("serverProto.family.ProtoDispatchRecord")]
		public var dispatchRecord:Array = [];

		/**
		 *  @private
		 */
		public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.award_coin", "awardCoin", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_coin$field:uint;

		public function clearAwardCoin():void {
			hasField$0 &= 0xfffffffd;
			award_coin$field = new uint();
		}

		public function get hasAwardCoin():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardCoin(value:uint):void {
			hasField$0 |= 0x2;
			award_coin$field = value;
		}

		public function get awardCoin():uint {
			return award_coin$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasRemainAwardCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_award_count$field);
			}
			for (var dispatchRecord$index:uint = 0; dispatchRecord$index < this.dispatchRecord.length; ++dispatchRecord$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.dispatchRecord[dispatchRecord$index]);
			}
			if (hasAwardCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_coin$field);
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
			var remain_award_count$count:uint = 0;
			var award_coin$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaFriendAwardRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (remain_award_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaFriendAwardRsp.remainAwardCount cannot be set twice.');
					}
					++remain_award_count$count;
					this.remainAwardCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.dispatchRecord.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoDispatchRecord()));
					break;
				case 4:
					if (award_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaFriendAwardRsp.awardCoin cannot be set twice.');
					}
					++award_coin$count;
					this.awardCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
