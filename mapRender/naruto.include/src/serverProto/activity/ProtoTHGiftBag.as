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
	public  final class ProtoTHGiftBag extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GIFT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTHGiftBag.gift_id", "giftId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gift_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearGiftId():void {
			hasField$0 &= 0xfffffffe;
			gift_id$field = new uint();
		}

		public function get hasGiftId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set giftId(value:uint):void {
			hasField$0 |= 0x1;
			gift_id$field = value;
		}

		public function get giftId():uint {
			return gift_id$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTHGiftBag.open_lvl", "openLvl", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_lvl$field:uint;

		public function clearOpenLvl():void {
			hasField$0 &= 0xfffffffd;
			open_lvl$field = new uint();
		}

		public function get hasOpenLvl():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set openLvl(value:uint):void {
			hasField$0 |= 0x2;
			open_lvl$field = value;
		}

		public function get openLvl():uint {
			return open_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTHGiftBag.status", "status", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var status$field:uint;

		public function clearStatus():void {
			hasField$0 &= 0xfffffffb;
			status$field = new uint();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set status(value:uint):void {
			hasField$0 |= 0x4;
			status$field = value;
		}

		public function get status():uint {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const ORIGINAL_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTHGiftBag.original_value", "originalValue", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var original_value$field:uint;

		public function clearOriginalValue():void {
			hasField$0 &= 0xfffffff7;
			original_value$field = new uint();
		}

		public function get hasOriginalValue():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set originalValue(value:uint):void {
			hasField$0 |= 0x8;
			original_value$field = value;
		}

		public function get originalValue():uint {
			return original_value$field;
		}

		/**
		 *  @private
		 */
		public static const NOW_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTHGiftBag.now_value", "nowValue", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var now_value$field:uint;

		public function clearNowValue():void {
			hasField$0 &= 0xffffffef;
			now_value$field = new uint();
		}

		public function get hasNowValue():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set nowValue(value:uint):void {
			hasField$0 |= 0x10;
			now_value$field = value;
		}

		public function get nowValue():uint {
			return now_value$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTHGiftBag.award", "award", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const BOX_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoTHGiftBag.box_desc", "boxDesc", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var box_desc$field:String;

		public function clearBoxDesc():void {
			box_desc$field = null;
		}

		public function get hasBoxDesc():Boolean {
			return box_desc$field != null;
		}

		public function set boxDesc(value:String):void {
			box_desc$field = value;
		}

		public function get boxDesc():String {
			return box_desc$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGiftId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, gift_id$field);
			}
			if (hasOpenLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, open_lvl$field);
			}
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, status$field);
			}
			if (hasOriginalValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, original_value$field);
			}
			if (hasNowValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, now_value$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasBoxDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, box_desc$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gift_id$count:uint = 0;
			var open_lvl$count:uint = 0;
			var status$count:uint = 0;
			var original_value$count:uint = 0;
			var now_value$count:uint = 0;
			var box_desc$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gift_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBag.giftId cannot be set twice.');
					}
					++gift_id$count;
					this.giftId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (open_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBag.openLvl cannot be set twice.');
					}
					++open_lvl$count;
					this.openLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBag.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (original_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBag.originalValue cannot be set twice.');
					}
					++original_value$count;
					this.originalValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (now_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBag.nowValue cannot be set twice.');
					}
					++now_value$count;
					this.nowValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 7:
					if (box_desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBag.boxDesc cannot be set twice.');
					}
					++box_desc$count;
					this.boxDesc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
