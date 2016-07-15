package serverProto.independenceEquip {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.independenceEquip.ProtoIndependentEquipmentInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoIndependentEquipmentOperateResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentOperateResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const EQUIPMENT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentOperateResponse.equipment_info", "equipmentInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.independenceEquip.ProtoIndependentEquipmentInfo);

		private var equipment_info$field:serverProto.independenceEquip.ProtoIndependentEquipmentInfo;

		public function clearEquipmentInfo():void {
			equipment_info$field = null;
		}

		public function get hasEquipmentInfo():Boolean {
			return equipment_info$field != null;
		}

		public function set equipmentInfo(value:serverProto.independenceEquip.ProtoIndependentEquipmentInfo):void {
			equipment_info$field = value;
		}

		public function get equipmentInfo():serverProto.independenceEquip.ProtoIndependentEquipmentInfo {
			return equipment_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasEquipmentInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equipment_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var equipment_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (equipment_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateResponse.equipmentInfo cannot be set twice.');
					}
					++equipment_info$count;
					this.equipmentInfo = new serverProto.independenceEquip.ProtoIndependentEquipmentInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipmentInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
