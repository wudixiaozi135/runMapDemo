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
	import serverProto.equipment.UpgradeEquipCommands;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.inc.ProtoNarutoProperty;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoUpgradeEquipmentResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.equip_info", "equipInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

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
		public static const PROPERTY_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.property_change", "propertyChange", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNarutoProperty);

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
		public static const COST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoUpgradeEquipmentResponse.cost_money", "costMoney", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cost_money$field:int;

		private var hasField$0:uint = 0;

		public function clearCostMoney():void {
			hasField$0 &= 0xfffffffe;
			cost_money$field = new int();
		}

		public function get hasCostMoney():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set costMoney(value:int):void {
			hasField$0 |= 0x1;
			cost_money$field = value;
		}

		public function get costMoney():int {
			return cost_money$field;
		}

		/**
		 *  @private
		 */
		public static const COST_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.cost_item", "costItem", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var costItem:Array = [];

		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoUpgradeEquipmentResponse.cmd_id", "cmdId", (6 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.equipment.UpgradeEquipCommands);

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
			if (hasCostMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, cost_money$field);
			}
			for (var costItem$index:uint = 0; costItem$index < this.costItem.length; ++costItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.costItem[costItem$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
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
			var cost_money$count:uint = 0;
			var cmd_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpgradeEquipmentResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (equip_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpgradeEquipmentResponse.equipInfo cannot be set twice.');
					}
					++equip_info$count;
					this.equipInfo = new serverProto.bag.ProtoEquipInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipInfo);
					break;
				case 3:
					if (property_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpgradeEquipmentResponse.propertyChange cannot be set twice.');
					}
					++property_change$count;
					this.propertyChange = new serverProto.inc.ProtoNarutoProperty();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyChange);
					break;
				case 4:
					if (cost_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpgradeEquipmentResponse.costMoney cannot be set twice.');
					}
					++cost_money$count;
					this.costMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					this.costItem.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 6:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpgradeEquipmentResponse.cmdId cannot be set twice.');
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
