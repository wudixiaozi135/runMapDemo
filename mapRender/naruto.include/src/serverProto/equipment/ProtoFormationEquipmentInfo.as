package serverProto.equipment {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.equipment.ProtoNinjaEquipmentInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFormationEquipmentInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_EQUIP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoFormationEquipmentInfo.ninja_equip", "ninjaEquip", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.equipment.ProtoNinjaEquipmentInfo);

		[ArrayElementType("serverProto.equipment.ProtoNinjaEquipmentInfo")]
		public var ninjaEquip:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var ninjaEquip$index:uint = 0; ninjaEquip$index < this.ninjaEquip.length; ++ninjaEquip$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaEquip[ninjaEquip$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.ninjaEquip.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.equipment.ProtoNinjaEquipmentInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
