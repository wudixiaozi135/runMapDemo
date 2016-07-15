package serverProto.independenceEquip {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoEquipInfo;
	import serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoIndependentEquipmentInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EQUIP_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentInfo.equip_info", "equipInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo);

		[ArrayElementType("serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo")]
		public var equipInfo:Array = [];

		/**
		 *  @private
		 */
		public static const BAG_EQUIP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentInfo.bag_equip", "bagEquip", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

		[ArrayElementType("serverProto.bag.ProtoEquipInfo")]
		public var bagEquip:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var equipInfo$index:uint = 0; equipInfo$index < this.equipInfo.length; ++equipInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.equipInfo[equipInfo$index]);
			}
			for (var bagEquip$index:uint = 0; bagEquip$index < this.bagEquip.length; ++bagEquip$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.bagEquip[bagEquip$index]);
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
					this.equipInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo()));
					break;
				case 2:
					this.bagEquip.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoEquipInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
