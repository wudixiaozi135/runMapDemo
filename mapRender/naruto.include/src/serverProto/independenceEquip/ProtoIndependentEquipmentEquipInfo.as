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
	import serverProto.baseInfo.ProtoNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoIndependentEquipmentEquipInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo.ninja_info", "ninjaInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		private var ninja_info$field:serverProto.baseInfo.ProtoNinjaInfo;

		public function clearNinjaInfo():void {
			ninja_info$field = null;
		}

		public function get hasNinjaInfo():Boolean {
			return ninja_info$field != null;
		}

		public function set ninjaInfo(value:serverProto.baseInfo.ProtoNinjaInfo):void {
			ninja_info$field = value;
		}

		public function get ninjaInfo():serverProto.baseInfo.ProtoNinjaInfo {
			return ninja_info$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIP_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo.equip_info", "equipInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

		[ArrayElementType("serverProto.bag.ProtoEquipInfo")]
		public var equipInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNinjaInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_info$field);
			}
			for (var equipInfo$index:uint = 0; equipInfo$index < this.equipInfo.length; ++equipInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.equipInfo[equipInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentEquipInfo.ninjaInfo cannot be set twice.');
					}
					++ninja_info$count;
					this.ninjaInfo = new serverProto.baseInfo.ProtoNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaInfo);
					break;
				case 2:
					this.equipInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoEquipInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
