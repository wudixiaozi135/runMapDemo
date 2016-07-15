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
	import serverProto.equipment.ProtoEquipForgeLevelAttr;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetEquipForgePropertyRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoGetEquipForgePropertyRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const LEVEL_ATTR:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoGetEquipForgePropertyRsp.level_attr", "levelAttr", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.equipment.ProtoEquipForgeLevelAttr);

		private var level_attr$field:serverProto.equipment.ProtoEquipForgeLevelAttr;

		public function clearLevelAttr():void {
			level_attr$field = null;
		}

		public function get hasLevelAttr():Boolean {
			return level_attr$field != null;
		}

		public function set levelAttr(value:serverProto.equipment.ProtoEquipForgeLevelAttr):void {
			level_attr$field = value;
		}

		public function get levelAttr():serverProto.equipment.ProtoEquipForgeLevelAttr {
			return level_attr$field;
		}

		/**
		 *  @private
		 */
		public static const BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.bless_value", "blessValue", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bless_value$field:int;

		private var hasField$0:uint = 0;

		public function clearBlessValue():void {
			hasField$0 &= 0xfffffffe;
			bless_value$field = new int();
		}

		public function get hasBlessValue():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set blessValue(value:int):void {
			hasField$0 |= 0x1;
			bless_value$field = value;
		}

		public function get blessValue():int {
			return bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.max_bless_value", "maxBlessValue", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_bless_value$field:int;

		public function clearMaxBlessValue():void {
			hasField$0 &= 0xfffffffd;
			max_bless_value$field = new int();
		}

		public function get hasMaxBlessValue():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set maxBlessValue(value:int):void {
			hasField$0 |= 0x2;
			max_bless_value$field = value;
		}

		public function get maxBlessValue():int {
			return max_bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const FORGE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.forge_level", "forgeLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_level$field:int;

		public function clearForgeLevel():void {
			hasField$0 &= 0xfffffffb;
			forge_level$field = new int();
		}

		public function get hasForgeLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set forgeLevel(value:int):void {
			hasField$0 |= 0x4;
			forge_level$field = value;
		}

		public function get forgeLevel():int {
			return forge_level$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.max_level", "maxLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_level$field:int;

		public function clearMaxLevel():void {
			hasField$0 &= 0xfffffff7;
			max_level$field = new int();
		}

		public function get hasMaxLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set maxLevel(value:int):void {
			hasField$0 |= 0x8;
			max_level$field = value;
		}

		public function get maxLevel():int {
			return max_level$field;
		}

		/**
		 *  @private
		 */
		public static const LIMIT_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.limit_bless_value", "limitBlessValue", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit_bless_value$field:int;

		public function clearLimitBlessValue():void {
			hasField$0 &= 0xffffffef;
			limit_bless_value$field = new int();
		}

		public function get hasLimitBlessValue():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set limitBlessValue(value:int):void {
			hasField$0 |= 0x10;
			limit_bless_value$field = value;
		}

		public function get limitBlessValue():int {
			return limit_bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const FORMER_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.former_bless_value", "formerBlessValue", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var former_bless_value$field:int;

		public function clearFormerBlessValue():void {
			hasField$0 &= 0xffffffdf;
			former_bless_value$field = new int();
		}

		public function get hasFormerBlessValue():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set formerBlessValue(value:int):void {
			hasField$0 |= 0x20;
			former_bless_value$field = value;
		}

		public function get formerBlessValue():int {
			return former_bless_value$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasLevelAttr) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, level_attr$field);
			}
			if (hasBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, bless_value$field);
			}
			if (hasMaxBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_bless_value$field);
			}
			if (hasForgeLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, forge_level$field);
			}
			if (hasMaxLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_level$field);
			}
			if (hasLimitBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, limit_bless_value$field);
			}
			if (hasFormerBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, former_bless_value$field);
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
			var level_attr$count:uint = 0;
			var bless_value$count:uint = 0;
			var max_bless_value$count:uint = 0;
			var forge_level$count:uint = 0;
			var max_level$count:uint = 0;
			var limit_bless_value$count:uint = 0;
			var former_bless_value$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (level_attr$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.levelAttr cannot be set twice.');
					}
					++level_attr$count;
					this.levelAttr = new serverProto.equipment.ProtoEquipForgeLevelAttr();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.levelAttr);
					break;
				case 3:
					if (bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.blessValue cannot be set twice.');
					}
					++bless_value$count;
					this.blessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (max_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.maxBlessValue cannot be set twice.');
					}
					++max_bless_value$count;
					this.maxBlessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (forge_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.forgeLevel cannot be set twice.');
					}
					++forge_level$count;
					this.forgeLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (max_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.maxLevel cannot be set twice.');
					}
					++max_level$count;
					this.maxLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (limit_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.limitBlessValue cannot be set twice.');
					}
					++limit_bless_value$count;
					this.limitBlessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (former_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEquipForgePropertyRsp.formerBlessValue cannot be set twice.');
					}
					++former_bless_value$count;
					this.formerBlessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
