package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.dungeon.ProtoDungeonCardType;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDungeonCardInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoDungeonCardInfo.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.dungeon.ProtoDungeonCardType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonCardInfo.item_info", "itemInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		public var itemInfo:serverProto.inc.ProtoItemInfo;

		/**
		 *  @private
		 */
		public static const IS_RARE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonCardInfo.is_rare", "isRare", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_rare$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsRare():void {
			hasField$0 &= 0xfffffffe;
			is_rare$field = new Boolean();
		}

		public function get hasIsRare():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isRare(value:Boolean):void {
			hasField$0 |= 0x1;
			is_rare$field = value;
		}

		public function get isRare():Boolean {
			return is_rare$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemInfo);
			if (hasIsRare) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_rare$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var item_info$count:uint = 0;
			var is_rare$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonCardInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonCardInfo.itemInfo cannot be set twice.');
					}
					++item_info$count;
					this.itemInfo = new serverProto.inc.ProtoItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.itemInfo);
					break;
				case 3:
					if (is_rare$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonCardInfo.isRare cannot be set twice.');
					}
					++is_rare$count;
					this.isRare = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
