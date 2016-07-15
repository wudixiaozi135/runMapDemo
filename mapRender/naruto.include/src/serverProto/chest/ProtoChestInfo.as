package serverProto.chest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.chest.ProtoHotNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChestInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.status", "status", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var status$field:uint;

		private var hasField$0:uint = 0;

		public function clearStatus():void {
			hasField$0 &= 0xfffffffe;
			status$field = new uint();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set status(value:uint):void {
			hasField$0 |= 0x1;
			status$field = value;
		}

		public function get status():uint {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.free_count", "freeCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_count$field:uint;

		public function clearFreeCount():void {
			hasField$0 &= 0xfffffffd;
			free_count$field = new uint();
		}

		public function get hasFreeCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set freeCount(value:uint):void {
			hasField$0 |= 0x2;
			free_count$field = value;
		}

		public function get freeCount():uint {
			return free_count$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.free_time", "freeTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_time$field:uint;

		public function clearFreeTime():void {
			hasField$0 &= 0xfffffffb;
			free_time$field = new uint();
		}

		public function get hasFreeTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set freeTime(value:uint):void {
			hasField$0 |= 0x4;
			free_time$field = value;
		}

		public function get freeTime():uint {
			return free_time$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chest.ProtoChestInfo.ninja_info", "ninjaInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.chest.ProtoHotNinjaInfo);

		private var ninja_info$field:serverProto.chest.ProtoHotNinjaInfo;

		public function clearNinjaInfo():void {
			ninja_info$field = null;
		}

		public function get hasNinjaInfo():Boolean {
			return ninja_info$field != null;
		}

		public function set ninjaInfo(value:serverProto.chest.ProtoHotNinjaInfo):void {
			ninja_info$field = value;
		}

		public function get ninjaInfo():serverProto.chest.ProtoHotNinjaInfo {
			return ninja_info$field;
		}

		/**
		 *  @private
		 */
		public static const PAY_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.pay_id", "payId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_id$field:uint;

		public function clearPayId():void {
			hasField$0 &= 0xfffffff7;
			pay_id$field = new uint();
		}

		public function get hasPayId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set payId(value:uint):void {
			hasField$0 |= 0x8;
			pay_id$field = value;
		}

		public function get payId():uint {
			return pay_id$field;
		}

		/**
		 *  @private
		 */
		public static const ONE_PAY_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.one_pay_price", "onePayPrice", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var one_pay_price$field:uint;

		public function clearOnePayPrice():void {
			hasField$0 &= 0xffffffef;
			one_pay_price$field = new uint();
		}

		public function get hasOnePayPrice():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set onePayPrice(value:uint):void {
			hasField$0 |= 0x10;
			one_pay_price$field = value;
		}

		public function get onePayPrice():uint {
			return one_pay_price$field;
		}

		/**
		 *  @private
		 */
		public static const TEN_PAY_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestInfo.ten_pay_price", "tenPayPrice", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ten_pay_price$field:uint;

		public function clearTenPayPrice():void {
			hasField$0 &= 0xffffffdf;
			ten_pay_price$field = new uint();
		}

		public function get hasTenPayPrice():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set tenPayPrice(value:uint):void {
			hasField$0 |= 0x20;
			ten_pay_price$field = value;
		}

		public function get tenPayPrice():uint {
			return ten_pay_price$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, status$field);
			}
			if (hasFreeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_count$field);
			}
			if (hasFreeTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_time$field);
			}
			if (hasNinjaInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_info$field);
			}
			if (hasPayId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pay_id$field);
			}
			if (hasOnePayPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, one_pay_price$field);
			}
			if (hasTenPayPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ten_pay_price$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var status$count:uint = 0;
			var free_count$count:uint = 0;
			var free_time$count:uint = 0;
			var ninja_info$count:uint = 0;
			var pay_id$count:uint = 0;
			var one_pay_price$count:uint = 0;
			var ten_pay_price$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (free_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.freeCount cannot be set twice.');
					}
					++free_count$count;
					this.freeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (free_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.freeTime cannot be set twice.');
					}
					++free_time$count;
					this.freeTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (ninja_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.ninjaInfo cannot be set twice.');
					}
					++ninja_info$count;
					this.ninjaInfo = new serverProto.chest.ProtoHotNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaInfo);
					break;
				case 6:
					if (pay_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.payId cannot be set twice.');
					}
					++pay_id$count;
					this.payId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (one_pay_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.onePayPrice cannot be set twice.');
					}
					++one_pay_price$count;
					this.onePayPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (ten_pay_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestInfo.tenPayPrice cannot be set twice.');
					}
					++ten_pay_price$count;
					this.tenPayPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
