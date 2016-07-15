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
	public  final class ProtoEquipForgePropertyReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FORGE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyReq.forge_type", "forgeType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearForgeType():void {
			hasField$0 &= 0xfffffffe;
			forge_type$field = new uint();
		}

		public function get hasForgeType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set forgeType(value:uint):void {
			hasField$0 |= 0x1;
			forge_type$field = value;
		}

		public function get forgeType():uint {
			return forge_type$field;
		}

		/**
		 *  @private
		 */
		public static const BIND_MATERIAL_FIRST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyReq.bind_material_first", "bindMaterialFirst", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bind_material_first$field:uint;

		public function clearBindMaterialFirst():void {
			hasField$0 &= 0xfffffffd;
			bind_material_first$field = new uint();
		}

		public function get hasBindMaterialFirst():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set bindMaterialFirst(value:uint):void {
			hasField$0 |= 0x2;
			bind_material_first$field = value;
		}

		public function get bindMaterialFirst():uint {
			return bind_material_first$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_BUY_MATERIAL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyReq.auto_buy_material", "autoBuyMaterial", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_buy_material$field:uint;

		public function clearAutoBuyMaterial():void {
			hasField$0 &= 0xfffffffb;
			auto_buy_material$field = new uint();
		}

		public function get hasAutoBuyMaterial():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set autoBuyMaterial(value:uint):void {
			hasField$0 |= 0x4;
			auto_buy_material$field = value;
		}

		public function get autoBuyMaterial():uint {
			return auto_buy_material$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIP_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoEquipForgePropertyReq.equip_sequence", "equipSequence", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
			if (hasForgeType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, forge_type$field);
			}
			if (hasBindMaterialFirst) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, bind_material_first$field);
			}
			if (hasAutoBuyMaterial) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, auto_buy_material$field);
			}
			if (hasEquipSequence) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
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
			var forge_type$count:uint = 0;
			var bind_material_first$count:uint = 0;
			var auto_buy_material$count:uint = 0;
			var equip_sequence$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (forge_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyReq.forgeType cannot be set twice.');
					}
					++forge_type$count;
					this.forgeType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (bind_material_first$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyReq.bindMaterialFirst cannot be set twice.');
					}
					++bind_material_first$count;
					this.bindMaterialFirst = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (auto_buy_material$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyReq.autoBuyMaterial cannot be set twice.');
					}
					++auto_buy_material$count;
					this.autoBuyMaterial = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (equip_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyReq.equipSequence cannot be set twice.');
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
