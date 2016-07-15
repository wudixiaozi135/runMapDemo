package serverProto.equipment {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoItemIndex;
	import serverProto.equipment.EquipJadeCommands;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateJadeRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateJadeRequest.cmd_id", "cmdId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.equipment.EquipJadeCommands);

		public var cmdId:int;

		/**
		 *  @private
		 */
		public static const EQUIPMENT_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoOperateJadeRequest.equipment_sequence", "equipmentSequence", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var equipmentSequence:UInt64;

		/**
		 *  @private
		 */
		public static const JADE_INDEX:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeRequest.jade_index", "jadeIndex", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoItemIndex);

		public var jadeIndex:serverProto.bag.ProtoItemIndex;

		/**
		 *  @private
		 */
		public static const JADE_INLAY_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoOperateJadeRequest.jade_inlay_index", "jadeInlayIndex", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var jadeInlayIndex:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmdId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.equipmentSequence);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.jadeIndex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.jadeInlayIndex);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd_id$count:uint = 0;
			var equipment_sequence$count:uint = 0;
			var jade_index$count:uint = 0;
			var jade_inlay_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeRequest.cmdId cannot be set twice.');
					}
					++cmd_id$count;
					this.cmdId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (equipment_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeRequest.equipmentSequence cannot be set twice.');
					}
					++equipment_sequence$count;
					this.equipmentSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 3:
					if (jade_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeRequest.jadeIndex cannot be set twice.');
					}
					++jade_index$count;
					this.jadeIndex = new serverProto.bag.ProtoItemIndex();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.jadeIndex);
					break;
				case 4:
					if (jade_inlay_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeRequest.jadeInlayIndex cannot be set twice.');
					}
					++jade_inlay_index$count;
					this.jadeInlayIndex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
