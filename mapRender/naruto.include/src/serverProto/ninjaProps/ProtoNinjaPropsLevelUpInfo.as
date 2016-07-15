package serverProto.ninjaProps {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropsLevelUpInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ADD_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.add_exp", "addExp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var add_exp$field:int;

		private var hasField$0:uint = 0;

		public function clearAddExp():void {
			hasField$0 &= 0xfffffffe;
			add_exp$field = new int();
		}

		public function get hasAddExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set addExp(value:int):void {
			hasField$0 |= 0x1;
			add_exp$field = value;
		}

		public function get addExp():int {
			return add_exp$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.need_money", "needMoney", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_money$field:int;

		public function clearNeedMoney():void {
			hasField$0 &= 0xfffffffd;
			need_money$field = new int();
		}

		public function get hasNeedMoney():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set needMoney(value:int):void {
			hasField$0 |= 0x2;
			need_money$field = value;
		}

		public function get needMoney():int {
			return need_money$field;
		}

		/**
		 *  @private
		 */
		public static const IS_ULTIMATE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.is_ultimate", "isUltimate", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_ultimate$field:Boolean;

		public function clearIsUltimate():void {
			hasField$0 &= 0xfffffffb;
			is_ultimate$field = new Boolean();
		}

		public function get hasIsUltimate():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set isUltimate(value:Boolean):void {
			hasField$0 |= 0x4;
			is_ultimate$field = value;
		}

		public function get isUltimate():Boolean {
			return is_ultimate$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL_UP_EXP:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.level_up_exp", "levelUpExp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var levelUpExp:Array = [];

		/**
		 *  @private
		 */
		public static const ADD_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.add_propery", "addPropery", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var add_propery$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearAddPropery():void {
			add_propery$field = null;
		}

		public function get hasAddPropery():Boolean {
			return add_propery$field != null;
		}

		public function set addPropery(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			add_propery$field = value;
		}

		public function get addPropery():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return add_propery$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAddExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, add_exp$field);
			}
			if (hasNeedMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_money$field);
			}
			if (hasIsUltimate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_ultimate$field);
			}
			for (var levelUpExp$index:uint = 0; levelUpExp$index < this.levelUpExp.length; ++levelUpExp$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.levelUpExp[levelUpExp$index]);
			}
			if (hasAddPropery) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, add_propery$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var add_exp$count:uint = 0;
			var need_money$count:uint = 0;
			var is_ultimate$count:uint = 0;
			var add_propery$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (add_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsLevelUpInfo.addExp cannot be set twice.');
					}
					++add_exp$count;
					this.addExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (need_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsLevelUpInfo.needMoney cannot be set twice.');
					}
					++need_money$count;
					this.needMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (is_ultimate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsLevelUpInfo.isUltimate cannot be set twice.');
					}
					++is_ultimate$count;
					this.isUltimate = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.levelUpExp);
						break;
					}
					this.levelUpExp.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 5:
					if (add_propery$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsLevelUpInfo.addPropery cannot be set twice.');
					}
					++add_propery$count;
					this.addPropery = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.addPropery);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
