package serverProto.ninjaProps {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropsInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.index", "index", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var index$field:uint;

		private var hasField$0:uint = 0;

		public function clearIndex():void {
			hasField$0 &= 0xfffffffe;
			index$field = new uint();
		}

		public function get hasIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set index(value:uint):void {
			hasField$0 |= 0x1;
			index$field = value;
		}

		public function get index():uint {
			return index$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffd;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x2;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.exp", "exp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:int;

		public function clearExp():void {
			hasField$0 &= 0xfffffffb;
			exp$field = new int();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set exp(value:int):void {
			hasField$0 |= 0x4;
			exp$field = value;
		}

		public function get exp():int {
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const USE_NEED_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.use_need_level", "useNeedLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var use_need_level$field:int;

		public function clearUseNeedLevel():void {
			hasField$0 &= 0xfffffff7;
			use_need_level$field = new int();
		}

		public function get hasUseNeedLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set useNeedLevel(value:int):void {
			hasField$0 |= 0x8;
			use_need_level$field = value;
		}

		public function get useNeedLevel():int {
			return use_need_level$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.max_level", "maxLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_level$field:int;

		public function clearMaxLevel():void {
			hasField$0 &= 0xffffffef;
			max_level$field = new int();
		}

		public function get hasMaxLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set maxLevel(value:int):void {
			hasField$0 |= 0x10;
			max_level$field = value;
		}

		public function get maxLevel():int {
			return max_level$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.base_property", "baseProperty", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var base_property$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearBaseProperty():void {
			base_property$field = null;
		}

		public function get hasBaseProperty():Boolean {
			return base_property$field != null;
		}

		public function set baseProperty(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			base_property$field = value;
		}

		public function get baseProperty():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return base_property$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL_UP_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.level_up_property", "levelUpProperty", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var level_up_property$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearLevelUpProperty():void {
			level_up_property$field = null;
		}

		public function get hasLevelUpProperty():Boolean {
			return level_up_property$field != null;
		}

		public function set levelUpProperty(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			level_up_property$field = value;
		}

		public function get levelUpProperty():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return level_up_property$field;
		}

		/**
		 *  @private
		 */
		public static const EXTENSION_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.extension_property", "extensionProperty", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var extension_property$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearExtensionProperty():void {
			extension_property$field = null;
		}

		public function get hasExtensionProperty():Boolean {
			return extension_property$field != null;
		}

		public function set extensionProperty(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			extension_property$field = value;
		}

		public function get extensionProperty():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return extension_property$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL_UP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.level_up_info", "levelUpInfo", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo);

		private var level_up_info$field:serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo;

		public function clearLevelUpInfo():void {
			level_up_info$field = null;
		}

		public function get hasLevelUpInfo():Boolean {
			return level_up_info$field != null;
		}

		public function set levelUpInfo(value:serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo):void {
			level_up_info$field = value;
		}

		public function get levelUpInfo():serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo {
			return level_up_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.id);
			if (hasIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, index$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, exp$field);
			}
			if (hasUseNeedLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, use_need_level$field);
			}
			if (hasMaxLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, max_level$field);
			}
			if (hasBaseProperty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_property$field);
			}
			if (hasLevelUpProperty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, level_up_property$field);
			}
			if (hasExtensionProperty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, extension_property$field);
			}
			if (hasLevelUpInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, level_up_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var index$count:uint = 0;
			var level$count:uint = 0;
			var exp$count:uint = 0;
			var use_need_level$count:uint = 0;
			var max_level$count:uint = 0;
			var base_property$count:uint = 0;
			var level_up_property$count:uint = 0;
			var extension_property$count:uint = 0;
			var level_up_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (use_need_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.useNeedLevel cannot be set twice.');
					}
					++use_need_level$count;
					this.useNeedLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (max_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.maxLevel cannot be set twice.');
					}
					++max_level$count;
					this.maxLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (base_property$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.baseProperty cannot be set twice.');
					}
					++base_property$count;
					this.baseProperty = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseProperty);
					break;
				case 8:
					if (level_up_property$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.levelUpProperty cannot be set twice.');
					}
					++level_up_property$count;
					this.levelUpProperty = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.levelUpProperty);
					break;
				case 9:
					if (extension_property$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.extensionProperty cannot be set twice.');
					}
					++extension_property$count;
					this.extensionProperty = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.extensionProperty);
					break;
				case 10:
					if (level_up_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsInfo.levelUpInfo cannot be set twice.');
					}
					++level_up_info$count;
					this.levelUpInfo = new serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.levelUpInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
