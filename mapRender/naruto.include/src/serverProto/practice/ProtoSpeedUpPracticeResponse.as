package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.practice.ProtoPracticeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSpeedUpPracticeResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoSpeedUpPracticeResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PRACTICE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoSpeedUpPracticeResponse.practice_info", "practiceInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.practice.ProtoPracticeInfo);

		private var practice_info$field:serverProto.practice.ProtoPracticeInfo;

		public function clearPracticeInfo():void {
			practice_info$field = null;
		}

		public function get hasPracticeInfo():Boolean {
			return practice_info$field != null;
		}

		public function set practiceInfo(value:serverProto.practice.ProtoPracticeInfo):void {
			practice_info$field = value;
		}

		public function get practiceInfo():serverProto.practice.ProtoPracticeInfo {
			return practice_info$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_COUPON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSpeedUpPracticeResponse.money_coupon", "moneyCoupon", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_coupon$field:int;

		private var hasField$0:uint = 0;

		public function clearMoneyCoupon():void {
			hasField$0 &= 0xfffffffe;
			money_coupon$field = new int();
		}

		public function get hasMoneyCoupon():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set moneyCoupon(value:int):void {
			hasField$0 |= 0x1;
			money_coupon$field = value;
		}

		public function get moneyCoupon():int {
			return money_coupon$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_GOLD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSpeedUpPracticeResponse.money_gold", "moneyGold", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_gold$field:int;

		public function clearMoneyGold():void {
			hasField$0 &= 0xfffffffd;
			money_gold$field = new int();
		}

		public function get hasMoneyGold():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set moneyGold(value:int):void {
			hasField$0 |= 0x2;
			money_gold$field = value;
		}

		public function get moneyGold():int {
			return money_gold$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSpeedUpPracticeResponse.reward_exp", "rewardExp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_exp$field:int;

		public function clearRewardExp():void {
			hasField$0 &= 0xfffffffb;
			reward_exp$field = new int();
		}

		public function get hasRewardExp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set rewardExp(value:int):void {
			hasField$0 |= 0x4;
			reward_exp$field = value;
		}

		public function get rewardExp():int {
			return reward_exp$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasPracticeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, practice_info$field);
			}
			if (hasMoneyCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, money_coupon$field);
			}
			if (hasMoneyGold) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, money_gold$field);
			}
			if (hasRewardExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, reward_exp$field);
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
			var practice_info$count:uint = 0;
			var money_coupon$count:uint = 0;
			var money_gold$count:uint = 0;
			var reward_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpPracticeResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (practice_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpPracticeResponse.practiceInfo cannot be set twice.');
					}
					++practice_info$count;
					this.practiceInfo = new serverProto.practice.ProtoPracticeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.practiceInfo);
					break;
				case 3:
					if (money_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpPracticeResponse.moneyCoupon cannot be set twice.');
					}
					++money_coupon$count;
					this.moneyCoupon = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (money_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpPracticeResponse.moneyGold cannot be set twice.');
					}
					++money_gold$count;
					this.moneyGold = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (reward_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpPracticeResponse.rewardExp cannot be set twice.');
					}
					++reward_exp$count;
					this.rewardExp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
