package serverProto.equipment {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetEquipForgePropertyReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EQUIP_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoGetEquipForgePropertyReq.equip_sequence", "equipSequence", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var equip_sequence$field:UInt64;

		public function clearEquipSequence():void {
			equip_sequence$field = null;
		}

		public function get hasEquipSequence():Boolean {
			return equip_sequence$field != null;
		}

		public function set equipSequence(value:UInt64):void {
			equip_sequence$field = value;
		}

		public function get equipSequence():UInt64 {
			return equip_sequence$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEquipSequence) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, equip_sequence$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var equip_sequence$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (equip_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyReq.equipSequence cannot be set twice.');
					}
					++equip_sequence$count;
					this.equipSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
