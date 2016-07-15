package serverProto.independenceEquip {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.independenceEquip.ProtoIndependentEquipmentOperateType;
	import serverProto.independenceEquip.ProtoIndependentEquipmentType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoIndependentEquipmentOperateRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.independenceEquip.ProtoIndependentEquipmentType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const OPERATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.operate", "operate", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.independenceEquip.ProtoIndependentEquipmentOperateType);

		public var operate:int;

		/**
		 *  @private
		 */
		public static const EQUIP_SEQ:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.equip_seq", "equipSeq", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var equip_seq$field:UInt64;

		public function clearEquipSeq():void {
			equip_seq$field = null;
		}

		public function get hasEquipSeq():Boolean {
			return equip_seq$field != null;
		}

		public function set equipSeq(value:UInt64):void {
			equip_seq$field = value;
		}

		public function get equipSeq():UInt64 {
			return equip_seq$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.ninja_pos", "ninjaPos", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_pos$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaPos():void {
			hasField$0 &= 0xfffffffe;
			ninja_pos$field = new int();
		}

		public function get hasNinjaPos():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaPos(value:int):void {
			hasField$0 |= 0x1;
			ninja_pos$field = value;
		}

		public function get ninjaPos():int {
			return ninja_pos$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.old_pos", "oldPos", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_pos$field:int;

		public function clearOldPos():void {
			hasField$0 &= 0xfffffffd;
			old_pos$field = new int();
		}

		public function get hasOldPos():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set oldPos(value:int):void {
			hasField$0 |= 0x2;
			old_pos$field = value;
		}

		public function get oldPos():int {
			return old_pos$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.new_pos", "newPos", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_pos$field:int;

		public function clearNewPos():void {
			hasField$0 &= 0xfffffffb;
			new_pos$field = new int();
		}

		public function get hasNewPos():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set newPos(value:int):void {
			hasField$0 |= 0x4;
			new_pos$field = value;
		}

		public function get newPos():int {
			return new_pos$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.operate);
			if (hasEquipSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, equip_seq$field);
			}
			if (hasNinjaPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_pos$field);
			}
			if (hasOldPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, old_pos$field);
			}
			if (hasNewPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, new_pos$field);
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
			var operate$count:uint = 0;
			var equip_seq$count:uint = 0;
			var ninja_pos$count:uint = 0;
			var old_pos$count:uint = 0;
			var new_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (operate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateRequest.operate cannot be set twice.');
					}
					++operate$count;
					this.operate = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (equip_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateRequest.equipSeq cannot be set twice.');
					}
					++equip_seq$count;
					this.equipSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 4:
					if (ninja_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateRequest.ninjaPos cannot be set twice.');
					}
					++ninja_pos$count;
					this.ninjaPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (old_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateRequest.oldPos cannot be set twice.');
					}
					++old_pos$count;
					this.oldPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (new_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIndependentEquipmentOperateRequest.newPos cannot be set twice.');
					}
					++new_pos$count;
					this.newPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
