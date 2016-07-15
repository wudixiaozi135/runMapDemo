package serverProto.equipment {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.bag.ProtoEquipInfo;
	import serverProto.inc.ProtoNarutoProperty;
	import serverProto.equipment.EquipJadeCommands;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateJadeResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeResponse.equip_info", "equipInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

		private var equip_info$field:serverProto.bag.ProtoEquipInfo;

		public function clearEquipInfo():void {
			equip_info$field = null;
		}

		public function get hasEquipInfo():Boolean {
			return equip_info$field != null;
		}

		public function set equipInfo(value:serverProto.bag.ProtoEquipInfo):void {
			equip_info$field = value;
		}

		public function get equipInfo():serverProto.bag.ProtoEquipInfo {
			return equip_info$field;
		}

		/**
		 *  @private
		 */
		public static const PROPERTY_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeResponse.property_change", "propertyChange", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNarutoProperty);

		private var property_change$field:serverProto.inc.ProtoNarutoProperty;

		public function clearPropertyChange():void {
			property_change$field = null;
		}

		public function get hasPropertyChange():Boolean {
			return property_change$field != null;
		}

		public function set propertyChange(value:serverProto.inc.ProtoNarutoProperty):void {
			property_change$field = value;
		}

		public function get propertyChange():serverProto.inc.ProtoNarutoProperty {
			return property_change$field;
		}

		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateJadeResponse.cmd_id", "cmdId", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.equipment.EquipJadeCommands);

		public var cmdId:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasEquipInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equip_info$field);
			}
			if (hasPropertyChange) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property_change$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmdId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var equip_info$count:uint = 0;
			var property_change$count:uint = 0;
			var cmd_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (equip_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeResponse.equipInfo cannot be set twice.');
					}
					++equip_info$count;
					this.equipInfo = new serverProto.bag.ProtoEquipInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipInfo);
					break;
				case 3:
					if (property_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeResponse.propertyChange cannot be set twice.');
					}
					++property_change$count;
					this.propertyChange = new serverProto.inc.ProtoNarutoProperty();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyChange);
					break;
				case 4:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateJadeResponse.cmdId cannot be set twice.');
					}
					++cmd_id$count;
					this.cmdId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
