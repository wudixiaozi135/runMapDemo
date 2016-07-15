package serverProto.equipment {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.equipment.EquipCommands;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateEquipmentRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateEquipmentRequest.cmd_id", "cmdId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.equipment.EquipCommands);

		public var cmdId:int;

		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoOperateEquipmentRequest.ninja_seq", "ninjaSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_seq$field:uint;

		private var hasField$0:uint = 0;

		public function clearNinjaSeq():void {
			hasField$0 &= 0xfffffffe;
			ninja_seq$field = new uint();
		}

		public function get hasNinjaSeq():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaSeq(value:uint):void {
			hasField$0 |= 0x1;
			ninja_seq$field = value;
		}

		public function get ninjaSeq():uint {
			return ninja_seq$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIPMENT_SEQUENCE:RepeatedFieldDescriptor$TYPE_UINT64 = new RepeatedFieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoOperateEquipmentRequest.equipment_sequence", "equipmentSequence", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		[ArrayElementType("UInt64")]
		public var equipmentSequence:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmdId);
			if (hasNinjaSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_seq$field);
			}
			if (this.equipmentSequence != null && this.equipmentSequence.length > 0) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.writePackedRepeated(output, com.netease.protobuf.WriteUtils.write$TYPE_UINT64, this.equipmentSequence);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd_id$count:uint = 0;
			var ninja_seq$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateEquipmentRequest.cmdId cannot be set twice.');
					}
					++cmd_id$count;
					this.cmdId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateEquipmentRequest.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT64, this.equipmentSequence);
						break;
					}
					this.equipmentSequence.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
