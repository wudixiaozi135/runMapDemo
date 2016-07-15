package serverProto.activity {
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
	public  final class ProtoGoldsaveFanliAwardRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGoldsaveFanliAwardRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliAwardRsp.award_coupon", "awardCoupon", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_coupon$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwardCoupon():void {
			hasField$0 &= 0xfffffffe;
			award_coupon$field = new uint();
		}

		public function get hasAwardCoupon():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardCoupon(value:uint):void {
			hasField$0 |= 0x1;
			award_coupon$field = value;
		}

		public function get awardCoupon():uint {
			return award_coupon$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliAwardRsp.remain_coupon", "remainCoupon", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_coupon$field:uint;

		public function clearRemainCoupon():void {
			hasField$0 &= 0xfffffffd;
			remain_coupon$field = new uint();
		}

		public function get hasRemainCoupon():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainCoupon(value:uint):void {
			hasField$0 |= 0x2;
			remain_coupon$field = value;
		}

		public function get remainCoupon():uint {
			return remain_coupon$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasAwardCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_coupon$field);
			}
			if (hasRemainCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_coupon$field);
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
			var award_coupon$count:uint = 0;
			var remain_coupon$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliAwardRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (award_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliAwardRsp.awardCoupon cannot be set twice.');
					}
					++award_coupon$count;
					this.awardCoupon = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (remain_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliAwardRsp.remainCoupon cannot be set twice.');
					}
					++remain_coupon$count;
					this.remainCoupon = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
