package serverProto.ninjaexam {
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
	public  final class ProtoGetNinjaExamReliveCostResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const RELIVE_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.relive_item_num", "reliveItemNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var relive_item_num$field:int;

		private var hasField$0:uint = 0;

		public function clearReliveItemNum():void {
			hasField$0 &= 0xfffffffe;
			relive_item_num$field = new int();
		}

		public function get hasReliveItemNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set reliveItemNum(value:int):void {
			hasField$0 |= 0x1;
			relive_item_num$field = value;
		}

		public function get reliveItemNum():int {
			return relive_item_num$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_COUPON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.money_coupon_num", "moneyCouponNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_coupon_num$field:int;

		public function clearMoneyCouponNum():void {
			hasField$0 &= 0xfffffffd;
			money_coupon_num$field = new int();
		}

		public function get hasMoneyCouponNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set moneyCouponNum(value:int):void {
			hasField$0 |= 0x2;
			money_coupon_num$field = value;
		}

		public function get moneyCouponNum():int {
			return money_coupon_num$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_GOLD_INGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.money_gold_ingot_num", "moneyGoldIngotNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_gold_ingot_num$field:int;

		public function clearMoneyGoldIngotNum():void {
			hasField$0 &= 0xfffffffb;
			money_gold_ingot_num$field = new int();
		}

		public function get hasMoneyGoldIngotNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set moneyGoldIngotNum(value:int):void {
			hasField$0 |= 0x4;
			money_gold_ingot_num$field = value;
		}

		public function get moneyGoldIngotNum():int {
			return money_gold_ingot_num$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_RELIVE_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.need_relive_item_num", "needReliveItemNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_relive_item_num$field:int;

		public function clearNeedReliveItemNum():void {
			hasField$0 &= 0xfffffff7;
			need_relive_item_num$field = new int();
		}

		public function get hasNeedReliveItemNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set needReliveItemNum(value:int):void {
			hasField$0 |= 0x8;
			need_relive_item_num$field = value;
		}

		public function get needReliveItemNum():int {
			return need_relive_item_num$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_MONEY_COUPON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.need_money_coupon_num", "needMoneyCouponNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_money_coupon_num$field:int;

		public function clearNeedMoneyCouponNum():void {
			hasField$0 &= 0xffffffef;
			need_money_coupon_num$field = new int();
		}

		public function get hasNeedMoneyCouponNum():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set needMoneyCouponNum(value:int):void {
			hasField$0 |= 0x10;
			need_money_coupon_num$field = value;
		}

		public function get needMoneyCouponNum():int {
			return need_money_coupon_num$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_MONEY_GOLD_INGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.need_money_gold_ingot_num", "needMoneyGoldIngotNum", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_money_gold_ingot_num$field:int;

		public function clearNeedMoneyGoldIngotNum():void {
			hasField$0 &= 0xffffffdf;
			need_money_gold_ingot_num$field = new int();
		}

		public function get hasNeedMoneyGoldIngotNum():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set needMoneyGoldIngotNum(value:int):void {
			hasField$0 |= 0x20;
			need_money_gold_ingot_num$field = value;
		}

		public function get needMoneyGoldIngotNum():int {
			return need_money_gold_ingot_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasReliveItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, relive_item_num$field);
			}
			if (hasMoneyCouponNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, money_coupon_num$field);
			}
			if (hasMoneyGoldIngotNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, money_gold_ingot_num$field);
			}
			if (hasNeedReliveItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_relive_item_num$field);
			}
			if (hasNeedMoneyCouponNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_money_coupon_num$field);
			}
			if (hasNeedMoneyGoldIngotNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_money_gold_ingot_num$field);
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
			var relive_item_num$count:uint = 0;
			var money_coupon_num$count:uint = 0;
			var money_gold_ingot_num$count:uint = 0;
			var need_relive_item_num$count:uint = 0;
			var need_money_coupon_num$count:uint = 0;
			var need_money_gold_ingot_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (relive_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.reliveItemNum cannot be set twice.');
					}
					++relive_item_num$count;
					this.reliveItemNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (money_coupon_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.moneyCouponNum cannot be set twice.');
					}
					++money_coupon_num$count;
					this.moneyCouponNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (money_gold_ingot_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.moneyGoldIngotNum cannot be set twice.');
					}
					++money_gold_ingot_num$count;
					this.moneyGoldIngotNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (need_relive_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.needReliveItemNum cannot be set twice.');
					}
					++need_relive_item_num$count;
					this.needReliveItemNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (need_money_coupon_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.needMoneyCouponNum cannot be set twice.');
					}
					++need_money_coupon_num$count;
					this.needMoneyCouponNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (need_money_gold_ingot_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaExamReliveCostResponse.needMoneyGoldIngotNum cannot be set twice.');
					}
					++need_money_gold_ingot_num$count;
					this.needMoneyGoldIngotNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
