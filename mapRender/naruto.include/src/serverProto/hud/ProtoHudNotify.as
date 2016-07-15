package serverProto.hud {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.hud.ProtoHudInfo;
	import serverProto.hud.ProtoHudMessageType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoHudNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoHudNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.hud.ProtoHudMessageType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const HUD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoHudNotify.hud_list", "hudList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.hud.ProtoHudInfo);

		[ArrayElementType("serverProto.hud.ProtoHudInfo")]
		public var hudList:Array = [];

		/**
		 *  @private
		 */
		public static const UNOPENED_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoHudNotify.unopened_list", "unopenedList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.hud.ProtoHudInfo);

		[ArrayElementType("serverProto.hud.ProtoHudInfo")]
		public var unopenedList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			for (var hudList$index:uint = 0; hudList$index < this.hudList.length; ++hudList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.hudList[hudList$index]);
			}
			for (var unopenedList$index:uint = 0; unopenedList$index < this.unopenedList.length; ++unopenedList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.unopenedList[unopenedList$index]);
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
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHudNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					this.hudList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.hud.ProtoHudInfo()));
					break;
				case 3:
					this.unopenedList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.hud.ProtoHudInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
