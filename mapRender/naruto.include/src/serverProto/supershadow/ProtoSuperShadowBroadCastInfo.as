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
	public  final class ProtoSuperShadowBroadCastInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.supershadow.ProtoSuperShadowBroadCastInfo.player_name", "playerName", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var playerName:String;

		/**
		 *  @private
		 */
		public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoSuperShadowBroadCastInfo.item_info", "itemInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowItemInfo);

		public var itemInfo:serverProto.supershadow.ProtoSuperShadowItemInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.playerName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemInfo);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_name$count:uint = 0;
			var item_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowBroadCastInfo.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowBroadCastInfo.itemInfo cannot be set twice.');
					}
					++item_info$count;
					this.itemInfo = new serverProto.supershadow.ProtoSuperShadowItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.itemInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
