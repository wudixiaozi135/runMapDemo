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
	public  final class ProtoEquipForgePropertyRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoEquipForgePropertyRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const FORGE_RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyRsp.forge_result", "forgeResult", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_result$field:uint;

		private var hasField$0:uint = 0;

		public function clearForgeResult():void {
			hasField$0 &= 0xfffffffe;
			forge_result$field = new uint();
		}

		public function get hasForgeResult():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set forgeResult(value:uint):void {
			hasField$0 |= 0x1;
			forge_result$field = value;
		}

		public function get forgeResult():uint {
			return forge_result$field;
		}

		/**
		 *  @private
		 */
		public static const FORGE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.forge_level", "forgeLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_level$field:int;

		public function clearForgeLevel():void {
			hasField$0 &= 0xfffffffd;
			forge_level$field = new int();
		}

		public function get hasForgeLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set forgeLevel(value:int):void {
			hasField$0 |= 0x2;
			forge_level$field = value;
		}

		public function get forgeLevel():int {
			return forge_level$field;
		}

		/**
		 *  @private
		 */
		public static const BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.bless_value", "blessValue", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bless_value$field:int;

		public function clearBlessValue():void {
			hasField$0 &= 0xfffffffb;
			bless_value$field = new int();
		}

		public function get hasBlessValue():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set blessValue(value:int):void {
			hasField$0 |= 0x4;
			bless_value$field = value;
		}

		public function get blessValue():int {
			return bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.max_level", "maxLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const MAX_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.max_bless_value", "maxBlessValue", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_bless_value$field:int;

		public function clearMaxBlessValue():void {
			hasField$0 &= 0xffffffef;
			max_bless_value$field = new int();
		}

		public function get hasMaxBlessValue():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set maxBlessValue(value:int):void {
			hasField$0 |= 0x10;
			max_bless_value$field = value;
		}

		public function get maxBlessValue():int {
			return max_bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const SUCC_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.succ_bless_value", "succBlessValue", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var succ_bless_value$field:int;

		public function clearSuccBlessValue():void {
			hasField$0 &= 0xffffffdf;
			succ_bless_value$field = new int();
		}

		public function get hasSuccBlessValue():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set succBlessValue(value:int):void {
			hasField$0 |= 0x20;
			succ_bless_value$field = value;
		}

		public function get succBlessValue():int {
			return succ_bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL_ATTR:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoEquipForgePropertyRsp.level_attr", "levelAttr", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.equipment.ProtoEquipForgeLevelAttr);

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
		public static const LIMIT_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.limit_bless_value", "limitBlessValue", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit_bless_value$field:int;

		public function clearLimitBlessValue():void {
			hasField$0 &= 0xffffffbf;
			limit_bless_value$field = new int();
		}

		public function get hasLimitBlessValue():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set limitBlessValue(value:int):void {
			hasField$0 |= 0x40;
			limit_bless_value$field = value;
		}

		public function get limitBlessValue():int {
			return limit_bless_value$field;
		}

		/**
		 *  @private
		 */
		public static const FORMER_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgePropertyRsp.former_bless_value", "formerBlessValue", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var former_bless_value$field:int;

		public function clearFormerBlessValue():void {
			hasField$0 &= 0xffffff7f;
			former_bless_value$field = new int();
		}

		public function get hasFormerBlessValue():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set formerBlessValue(value:int):void {
			hasField$0 |= 0x80;
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
			if (hasForgeResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, forge_result$field);
			}
			if (hasForgeLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, forge_level$field);
			}
			if (hasBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, bless_value$field);
			}
			if (hasMaxLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_level$field);
			}
			if (hasMaxBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_bless_value$field);
			}
			if (hasSuccBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, succ_bless_value$field);
			}
			if (hasLevelAttr) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, level_attr$field);
			}
			if (hasLimitBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, limit_bless_value$field);
			}
			if (hasFormerBlessValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
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
			var forge_result$count:uint = 0;
			var forge_level$count:uint = 0;
			var bless_value$count:uint = 0;
			var max_level$count:uint = 0;
			var max_bless_value$count:uint = 0;
			var succ_bless_value$count:uint = 0;
			var level_attr$count:uint = 0;
			var limit_bless_value$count:uint = 0;
			var former_bless_value$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (forge_result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.forgeResult cannot be set twice.');
					}
					++forge_result$count;
					this.forgeResult = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (forge_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.forgeLevel cannot be set twice.');
					}
					++forge_level$count;
					this.forgeLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.blessValue cannot be set twice.');
					}
					++bless_value$count;
					this.blessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (max_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.maxLevel cannot be set twice.');
					}
					++max_level$count;
					this.maxLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (max_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.maxBlessValue cannot be set twice.');
					}
					++max_bless_value$count;
					this.maxBlessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (succ_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.succBlessValue cannot be set twice.');
					}
					++succ_bless_value$count;
					this.succBlessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (level_attr$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.levelAttr cannot be set twice.');
					}
					++level_attr$count;
					this.levelAttr = new serverProto.equipment.ProtoEquipForgeLevelAttr();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.levelAttr);
					break;
				case 9:
					if (limit_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.limitBlessValue cannot be set twice.');
					}
					++limit_bless_value$count;
					this.limitBlessValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (former_bless_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipForgePropertyRsp.formerBlessValue cannot be set twice.');
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
