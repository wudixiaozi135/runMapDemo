package serverProto.ninjaProps {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.ninjaProps.ProtoOperateNinjaPropsRequest.NinjaPropsCommands;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateNinjaPropsRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaProps.ProtoOperateNinjaPropsRequest.cmd_id", "cmdId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.ninjaProps.ProtoOperateNinjaPropsRequest.NinjaPropsCommands);

		public var cmdId:int;

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoOperateNinjaPropsRequest.ninja_props_index", "ninjaPropsIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaPropsIndex:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmdId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.ninjaPropsIndex);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd_id$count:uint = 0;
			var ninja_props_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateNinjaPropsRequest.cmdId cannot be set twice.');
					}
					++cmd_id$count;
					this.cmdId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (ninja_props_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateNinjaPropsRequest.ninjaPropsIndex cannot be set twice.');
					}
					++ninja_props_index$count;
					this.ninjaPropsIndex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
