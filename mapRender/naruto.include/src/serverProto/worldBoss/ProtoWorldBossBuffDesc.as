package serverProto.worldBoss {
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
	public  final class ProtoWorldBossBuffDesc extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.rate", "rate", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rate$field:int;

		private var hasField$0:uint = 0;

		public function clearRate():void {
			hasField$0 &= 0xfffffffe;
			rate$field = new int();
		}

		public function get hasRate():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rate(value:int):void {
			hasField$0 |= 0x1;
			rate$field = value;
		}

		public function get rate():int {
			return rate$field;
		}

		/**
		 *  @private
		 */
		public static const ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.ulimit", "ulimit", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ulimit$field:int;

		public function clearUlimit():void {
			hasField$0 &= 0xfffffffd;
			ulimit$field = new int();
		}

		public function get hasUlimit():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ulimit(value:int):void {
			hasField$0 |= 0x2;
			ulimit$field = value;
		}

		public function get ulimit():int {
			return ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const COPPER_PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.copper_price", "copperPrice", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper_price$field:int;

		public function clearCopperPrice():void {
			hasField$0 &= 0xfffffffb;
			copper_price$field = new int();
		}

		public function get hasCopperPrice():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set copperPrice(value:int):void {
			hasField$0 |= 0x4;
			copper_price$field = value;
		}

		public function get copperPrice():int {
			return copper_price$field;
		}

		/**
		 *  @private
		 */
		public static const COUPON_PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.coupon_price", "couponPrice", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var coupon_price$field:int;

		public function clearCouponPrice():void {
			hasField$0 &= 0xfffffff7;
			coupon_price$field = new int();
		}

		public function get hasCouponPrice():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set couponPrice(value:int):void {
			hasField$0 |= 0x8;
			coupon_price$field = value;
		}

		public function get couponPrice():int {
			return coupon_price$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rate$field);
			}
			if (hasUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ulimit$field);
			}
			if (hasCopperPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, copper_price$field);
			}
			if (hasCouponPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, coupon_price$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rate$count:uint = 0;
			var ulimit$count:uint = 0;
			var copper_price$count:uint = 0;
			var coupon_price$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossBuffDesc.rate cannot be set twice.');
					}
					++rate$count;
					this.rate = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossBuffDesc.ulimit cannot be set twice.');
					}
					++ulimit$count;
					this.ulimit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (copper_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossBuffDesc.copperPrice cannot be set twice.');
					}
					++copper_price$count;
					this.copperPrice = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (coupon_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossBuffDesc.couponPrice cannot be set twice.');
					}
					++coupon_price$count;
					this.couponPrice = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
