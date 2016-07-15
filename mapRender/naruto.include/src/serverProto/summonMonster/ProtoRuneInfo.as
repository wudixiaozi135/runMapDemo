package serverProto.summonMonster {
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
	public  final class ProtoRuneInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoRuneInfo.index", "index", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var index$field:int;

		private var hasField$0:uint = 0;

		public function clearIndex():void {
			hasField$0 &= 0xfffffffe;
			index$field = new int();
		}

		public function get hasIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set index(value:int):void {
			hasField$0 |= 0x1;
			index$field = value;
		}

		public function get index():int {
			return index$field;
		}

		/**
		 *  @private
		 */
		public static const RUNE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoRuneInfo.rune_id", "runeId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rune_id$field:int;

		public function clearRuneId():void {
			hasField$0 &= 0xfffffffd;
			rune_id$field = new int();
		}

		public function get hasRuneId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set runeId(value:int):void {
			hasField$0 |= 0x2;
			rune_id$field = value;
		}

		public function get runeId():int {
			return rune_id$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoRuneInfo.exp", "exp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const BASE_PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoRuneInfo.base_property_info", "basePropertyInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var base_property_info$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearBasePropertyInfo():void {
			base_property_info$field = null;
		}

		public function get hasBasePropertyInfo():Boolean {
			return base_property_info$field != null;
		}

		public function set basePropertyInfo(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			base_property_info$field = value;
		}

		public function get basePropertyInfo():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return base_property_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, index$field);
			}
			if (hasRuneId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rune_id$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, exp$field);
			}
			if (hasBasePropertyInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_property_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var index$count:uint = 0;
			var rune_id$count:uint = 0;
			var exp$count:uint = 0;
			var base_property_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRuneInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (rune_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRuneInfo.runeId cannot be set twice.');
					}
					++rune_id$count;
					this.runeId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRuneInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (base_property_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRuneInfo.basePropertyInfo cannot be set twice.');
					}
					++base_property_info$count;
					this.basePropertyInfo = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.basePropertyInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
