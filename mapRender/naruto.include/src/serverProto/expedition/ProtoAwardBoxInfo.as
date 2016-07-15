package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.expedition.ProtoExpeditionAwardItem;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAwardBoxInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BOX_KEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoAwardBoxInfo.box_key", "boxKey", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var box_key$field:int;

		private var hasField$0:uint = 0;

		public function clearBoxKey():void {
			hasField$0 &= 0xfffffffe;
			box_key$field = new int();
		}

		public function get hasBoxKey():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set boxKey(value:int):void {
			hasField$0 |= 0x1;
			box_key$field = value;
		}

		public function get boxKey():int {
			return box_key$field;
		}

		/**
		 *  @private
		 */
		public static const BOX_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoAwardBoxInfo.box_item", "boxItem", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionAwardItem);

		[ArrayElementType("serverProto.expedition.ProtoExpeditionAwardItem")]
		public var boxItem:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBoxKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, box_key$field);
			}
			for (var boxItem$index:uint = 0; boxItem$index < this.boxItem.length; ++boxItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.boxItem[boxItem$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var box_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (box_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwardBoxInfo.boxKey cannot be set twice.');
					}
					++box_key$count;
					this.boxKey = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					this.boxItem.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.expedition.ProtoExpeditionAwardItem()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
