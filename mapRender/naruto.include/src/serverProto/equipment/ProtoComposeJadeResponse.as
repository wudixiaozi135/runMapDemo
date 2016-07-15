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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoComposeJadeResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeResponse.equip_info", "equipInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

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
		public static const COMPOSE_JADE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoComposeJadeResponse.compose_jade_index", "composeJadeIndex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var compose_jade_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearComposeJadeIndex():void {
			hasField$0 &= 0xfffffffe;
			compose_jade_index$field = new uint();
		}

		public function get hasComposeJadeIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set composeJadeIndex(value:uint):void {
			hasField$0 |= 0x1;
			compose_jade_index$field = value;
		}

		public function get composeJadeIndex():uint {
			return compose_jade_index$field;
		}

		/**
		 *  @private
		 */
		public static const PROPERTY_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeResponse.property_change", "propertyChange", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNarutoProperty);

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
		public static const ADD_JADE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoComposeJadeResponse.add_jade_exp", "addJadeExp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var add_jade_exp$field:int;

		public function clearAddJadeExp():void {
			hasField$0 &= 0xfffffffd;
			add_jade_exp$field = new int();
		}

		public function get hasAddJadeExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set addJadeExp(value:int):void {
			hasField$0 |= 0x2;
			add_jade_exp$field = value;
		}

		public function get addJadeExp():int {
			return add_jade_exp$field;
		}

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
			if (hasComposeJadeIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, compose_jade_index$field);
			}
			if (hasPropertyChange) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property_change$field);
			}
			if (hasAddJadeExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, add_jade_exp$field);
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
			var equip_info$count:uint = 0;
			var compose_jade_index$count:uint = 0;
			var property_change$count:uint = 0;
			var add_jade_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (equip_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeResponse.equipInfo cannot be set twice.');
					}
					++equip_info$count;
					this.equipInfo = new serverProto.bag.ProtoEquipInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipInfo);
					break;
				case 3:
					if (compose_jade_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeResponse.composeJadeIndex cannot be set twice.');
					}
					++compose_jade_index$count;
					this.composeJadeIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (property_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeResponse.propertyChange cannot be set twice.');
					}
					++property_change$count;
					this.propertyChange = new serverProto.inc.ProtoNarutoProperty();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyChange);
					break;
				case 5:
					if (add_jade_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeResponse.addJadeExp cannot be set twice.');
					}
					++add_jade_exp$count;
					this.addJadeExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
