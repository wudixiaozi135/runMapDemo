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
	public  final class ProtoMoneyDrawingAwardInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingAwardInfo.num", "num", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var num$field:uint;

		private var hasField$0:uint = 0;

		public function clearNum():void {
			hasField$0 &= 0xfffffffe;
			num$field = new uint();
		}

		public function get hasNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set num(value:uint):void {
			hasField$0 |= 0x1;
			num$field = value;
		}

		public function get num():uint {
			return num$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMoneyDrawingAwardInfo.award", "award", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const GOT_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoMoneyDrawingAwardInfo.got_status", "gotStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var got_status$field:int;

		public function clearGotStatus():void {
			hasField$0 &= 0xfffffffd;
			got_status$field = new int();
		}

		public function get hasGotStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set gotStatus(value:int):void {
			hasField$0 |= 0x2;
			got_status$field = value;
		}

		public function get gotStatus():int {
			return got_status$field;
		}

		/**
		 *  @private
		 */
		public static const GIFT_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoMoneyDrawingAwardInfo.gift_name", "giftName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var gift_name$field:String;

		public function clearGiftName():void {
			gift_name$field = null;
		}

		public function get hasGiftName():Boolean {
			return gift_name$field != null;
		}

		public function set giftName(value:String):void {
			gift_name$field = value;
		}

		public function get giftName():String {
			return gift_name$field;
		}

		/**
		 *  @private
		 */
		public static const GIFT_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoMoneyDrawingAwardInfo.gift_desc", "giftDesc", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var gift_desc$field:String;

		public function clearGiftDesc():void {
			gift_desc$field = null;
		}

		public function get hasGiftDesc():Boolean {
			return gift_desc$field != null;
		}

		public function set giftDesc(value:String):void {
			gift_desc$field = value;
		}

		public function get giftDesc():String {
			return gift_desc$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, num$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasGotStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, got_status$field);
			}
			if (hasGiftName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, gift_name$field);
			}
			if (hasGiftDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, gift_desc$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var num$count:uint = 0;
			var got_status$count:uint = 0;
			var gift_name$count:uint = 0;
			var gift_desc$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingAwardInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					if (got_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingAwardInfo.gotStatus cannot be set twice.');
					}
					++got_status$count;
					this.gotStatus = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (gift_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingAwardInfo.giftName cannot be set twice.');
					}
					++gift_name$count;
					this.giftName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (gift_desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingAwardInfo.giftDesc cannot be set twice.');
					}
					++gift_desc$count;
					this.giftDesc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
