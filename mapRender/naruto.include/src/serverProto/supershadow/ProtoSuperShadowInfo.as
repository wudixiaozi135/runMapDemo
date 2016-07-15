package serverProto.supershadow {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.supershadow.ProtoSuperShadowItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSuperShadowInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ITEM_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoSuperShadowInfo.item_list", "itemList", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowItemInfo);

		[ArrayElementType("serverProto.supershadow.ProtoSuperShadowItemInfo")]
		public var itemList:Array = [];

		/**
		 *  @private
		 */
		public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoSuperShadowInfo.item_info", "itemInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowItemInfo);

		private var item_info$field:serverProto.supershadow.ProtoSuperShadowItemInfo;

		public function clearItemInfo():void {
			item_info$field = null;
		}

		public function get hasItemInfo():Boolean {
			return item_info$field != null;
		}

		public function set itemInfo(value:serverProto.supershadow.ProtoSuperShadowItemInfo):void {
			item_info$field = value;
		}

		public function get itemInfo():serverProto.supershadow.ProtoSuperShadowItemInfo {
			return item_info$field;
		}

		/**
		 *  @private
		 */
		public static const PAY_RESET_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowInfo.pay_reset_num", "payResetNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_reset_num$field:int;

		private var hasField$0:uint = 0;

		public function clearPayResetNum():void {
			hasField$0 &= 0xfffffffe;
			pay_reset_num$field = new int();
		}

		public function get hasPayResetNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set payResetNum(value:int):void {
			hasField$0 |= 0x1;
			pay_reset_num$field = value;
		}

		public function get payResetNum():int {
			return pay_reset_num$field;
		}

		/**
		 *  @private
		 */
		public static const PAY_QUILT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowInfo.pay_quilt_num", "payQuiltNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_quilt_num$field:int;

		public function clearPayQuiltNum():void {
			hasField$0 &= 0xfffffffd;
			pay_quilt_num$field = new int();
		}

		public function get hasPayQuiltNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set payQuiltNum(value:int):void {
			hasField$0 |= 0x2;
			pay_quilt_num$field = value;
		}

		public function get payQuiltNum():int {
			return pay_quilt_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var itemList$index:uint = 0; itemList$index < this.itemList.length; ++itemList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemList[itemList$index]);
			}
			if (hasItemInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, item_info$field);
			}
			if (hasPayResetNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, pay_reset_num$field);
			}
			if (hasPayQuiltNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, pay_quilt_num$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var item_info$count:uint = 0;
			var pay_reset_num$count:uint = 0;
			var pay_quilt_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.itemList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.supershadow.ProtoSuperShadowItemInfo()));
					break;
				case 2:
					if (item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowInfo.itemInfo cannot be set twice.');
					}
					++item_info$count;
					this.itemInfo = new serverProto.supershadow.ProtoSuperShadowItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.itemInfo);
					break;
				case 3:
					if (pay_reset_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowInfo.payResetNum cannot be set twice.');
					}
					++pay_reset_num$count;
					this.payResetNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (pay_quilt_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowInfo.payQuiltNum cannot be set twice.');
					}
					++pay_quilt_num$count;
					this.payQuiltNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
