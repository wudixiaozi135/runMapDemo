package serverProto.inc {
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
	public  final class ProtoDiamondInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BLUE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoDiamondInfo.blue_level", "blueLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var blue_level$field:int;

		private var hasField$0:uint = 0;

		public function clearBlueLevel():void {
			hasField$0 &= 0xfffffffe;
			blue_level$field = new int();
		}

		public function get hasBlueLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set blueLevel(value:int):void {
			hasField$0 |= 0x1;
			blue_level$field = value;
		}

		public function get blueLevel():int {
			return blue_level$field;
		}

		/**
		 *  @private
		 */
		public static const BLUE_COMMON:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.blue_common", "blueCommon", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var blue_common$field:Boolean;

		public function clearBlueCommon():void {
			hasField$0 &= 0xfffffffd;
			blue_common$field = new Boolean();
		}

		public function get hasBlueCommon():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set blueCommon(value:Boolean):void {
			hasField$0 |= 0x2;
			blue_common$field = value;
		}

		public function get blueCommon():Boolean {
			return blue_common$field;
		}

		/**
		 *  @private
		 */
		public static const BLUE_YEAR:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.blue_year", "blueYear", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var blue_year$field:Boolean;

		public function clearBlueYear():void {
			hasField$0 &= 0xfffffffb;
			blue_year$field = new Boolean();
		}

		public function get hasBlueYear():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set blueYear(value:Boolean):void {
			hasField$0 |= 0x4;
			blue_year$field = value;
		}

		public function get blueYear():Boolean {
			return blue_year$field;
		}

		/**
		 *  @private
		 */
		public static const BLUE_SUPER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.blue_super", "blueSuper", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var blue_super$field:Boolean;

		public function clearBlueSuper():void {
			hasField$0 &= 0xfffffff7;
			blue_super$field = new Boolean();
		}

		public function get hasBlueSuper():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set blueSuper(value:Boolean):void {
			hasField$0 |= 0x8;
			blue_super$field = value;
		}

		public function get blueSuper():Boolean {
			return blue_super$field;
		}

		/**
		 *  @private
		 */
		public static const YELLOW_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoDiamondInfo.yellow_level", "yellowLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var yellow_level$field:int;

		public function clearYellowLevel():void {
			hasField$0 &= 0xffffffef;
			yellow_level$field = new int();
		}

		public function get hasYellowLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set yellowLevel(value:int):void {
			hasField$0 |= 0x10;
			yellow_level$field = value;
		}

		public function get yellowLevel():int {
			return yellow_level$field;
		}

		/**
		 *  @private
		 */
		public static const YELLOW_COMMON:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.yellow_common", "yellowCommon", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var yellow_common$field:Boolean;

		public function clearYellowCommon():void {
			hasField$0 &= 0xffffffdf;
			yellow_common$field = new Boolean();
		}

		public function get hasYellowCommon():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set yellowCommon(value:Boolean):void {
			hasField$0 |= 0x20;
			yellow_common$field = value;
		}

		public function get yellowCommon():Boolean {
			return yellow_common$field;
		}

		/**
		 *  @private
		 */
		public static const YELLOW_YEAR:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.yellow_year", "yellowYear", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var yellow_year$field:Boolean;

		public function clearYellowYear():void {
			hasField$0 &= 0xffffffbf;
			yellow_year$field = new Boolean();
		}

		public function get hasYellowYear():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set yellowYear(value:Boolean):void {
			hasField$0 |= 0x40;
			yellow_year$field = value;
		}

		public function get yellowYear():Boolean {
			return yellow_year$field;
		}

		/**
		 *  @private
		 */
		public static const YELLOW_SUPER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.yellow_super", "yellowSuper", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var yellow_super$field:Boolean;

		public function clearYellowSuper():void {
			hasField$0 &= 0xffffff7f;
			yellow_super$field = new Boolean();
		}

		public function get hasYellowSuper():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set yellowSuper(value:Boolean):void {
			hasField$0 |= 0x80;
			yellow_super$field = value;
		}

		public function get yellowSuper():Boolean {
			return yellow_super$field;
		}

		/**
		 *  @private
		 */
		public static const QQ_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoDiamondInfo.qq_level", "qqLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var qq_level$field:int;

		public function clearQqLevel():void {
			hasField$0 &= 0xfffffeff;
			qq_level$field = new int();
		}

		public function get hasQqLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set qqLevel(value:int):void {
			hasField$0 |= 0x100;
			qq_level$field = value;
		}

		public function get qqLevel():int {
			return qq_level$field;
		}

		/**
		 *  @private
		 */
		public static const QQ_COMMON:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.qq_common", "qqCommon", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var qq_common$field:Boolean;

		public function clearQqCommon():void {
			hasField$0 &= 0xfffffdff;
			qq_common$field = new Boolean();
		}

		public function get hasQqCommon():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set qqCommon(value:Boolean):void {
			hasField$0 |= 0x200;
			qq_common$field = value;
		}

		public function get qqCommon():Boolean {
			return qq_common$field;
		}

		/**
		 *  @private
		 */
		public static const QQ_YEAR:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.qq_year", "qqYear", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var qq_year$field:Boolean;

		public function clearQqYear():void {
			hasField$0 &= 0xfffffbff;
			qq_year$field = new Boolean();
		}

		public function get hasQqYear():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set qqYear(value:Boolean):void {
			hasField$0 |= 0x400;
			qq_year$field = value;
		}

		public function get qqYear():Boolean {
			return qq_year$field;
		}

		/**
		 *  @private
		 */
		public static const QQ_SUPER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.qq_super", "qqSuper", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var qq_super$field:Boolean;

		public function clearQqSuper():void {
			hasField$0 &= 0xfffff7ff;
			qq_super$field = new Boolean();
		}

		public function get hasQqSuper():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set qqSuper(value:Boolean):void {
			hasField$0 |= 0x800;
			qq_super$field = value;
		}

		public function get qqSuper():Boolean {
			return qq_super$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBlueLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, blue_level$field);
			}
			if (hasBlueCommon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, blue_common$field);
			}
			if (hasBlueYear) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, blue_year$field);
			}
			if (hasBlueSuper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, blue_super$field);
			}
			if (hasYellowLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, yellow_level$field);
			}
			if (hasYellowCommon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, yellow_common$field);
			}
			if (hasYellowYear) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, yellow_year$field);
			}
			if (hasYellowSuper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, yellow_super$field);
			}
			if (hasQqLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, qq_level$field);
			}
			if (hasQqCommon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, qq_common$field);
			}
			if (hasQqYear) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, qq_year$field);
			}
			if (hasQqSuper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, qq_super$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var blue_level$count:uint = 0;
			var blue_common$count:uint = 0;
			var blue_year$count:uint = 0;
			var blue_super$count:uint = 0;
			var yellow_level$count:uint = 0;
			var yellow_common$count:uint = 0;
			var yellow_year$count:uint = 0;
			var yellow_super$count:uint = 0;
			var qq_level$count:uint = 0;
			var qq_common$count:uint = 0;
			var qq_year$count:uint = 0;
			var qq_super$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (blue_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.blueLevel cannot be set twice.');
					}
					++blue_level$count;
					this.blueLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (blue_common$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.blueCommon cannot be set twice.');
					}
					++blue_common$count;
					this.blueCommon = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (blue_year$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.blueYear cannot be set twice.');
					}
					++blue_year$count;
					this.blueYear = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					if (blue_super$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.blueSuper cannot be set twice.');
					}
					++blue_super$count;
					this.blueSuper = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 5:
					if (yellow_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.yellowLevel cannot be set twice.');
					}
					++yellow_level$count;
					this.yellowLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (yellow_common$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.yellowCommon cannot be set twice.');
					}
					++yellow_common$count;
					this.yellowCommon = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 7:
					if (yellow_year$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.yellowYear cannot be set twice.');
					}
					++yellow_year$count;
					this.yellowYear = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 8:
					if (yellow_super$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.yellowSuper cannot be set twice.');
					}
					++yellow_super$count;
					this.yellowSuper = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 9:
					if (qq_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.qqLevel cannot be set twice.');
					}
					++qq_level$count;
					this.qqLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (qq_common$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.qqCommon cannot be set twice.');
					}
					++qq_common$count;
					this.qqCommon = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 11:
					if (qq_year$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.qqYear cannot be set twice.');
					}
					++qq_year$count;
					this.qqYear = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 12:
					if (qq_super$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDiamondInfo.qqSuper cannot be set twice.');
					}
					++qq_super$count;
					this.qqSuper = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
