package serverProto.bag {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoJadeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoEquipInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.num", "num", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var num:uint;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:uint;

		/**
		 *  @private
		 */
		public static const INLAY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipInfo.inlay", "inlay", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoJadeInfo);

		[ArrayElementType("serverProto.bag.ProtoJadeInfo")]
		public var inlay:Array = [];

		/**
		 *  @private
		 */
		public static const SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.bag.ProtoEquipInfo.sequence", "sequence", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sequence$field:UInt64;

		public function clearSequence():void {
			sequence$field = null;
		}

		public function get hasSequence():Boolean {
			return sequence$field != null;
		}

		public function set sequence(value:UInt64):void {
			sequence$field = value;
		}

		public function get sequence():UInt64 {
			return sequence$field;
		}

		/**
		 *  @private
		 */
		public static const FORGE_ATTR:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_attr", "forgeAttr", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var forgeAttr:Array = [];

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.index", "index", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		public static const FORGE_QUALITY_ATTR:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_quality_attr", "forgeQualityAttr", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var forgeQualityAttr:Array = [];

		/**
		 *  @private
		 */
		public static const FORGE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_level", "forgeLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_level$field:int;

		private var hasField$0:uint = 0;

		public function clearForgeLevel():void {
			hasField$0 &= 0xfffffffe;
			forge_level$field = new int();
		}

		public function get hasForgeLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set forgeLevel(value:int):void {
			hasField$0 |= 0x1;
			forge_level$field = value;
		}

		public function get forgeLevel():int {
			return forge_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.num);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.level);
			for (var inlay$index:uint = 0; inlay$index < this.inlay.length; ++inlay$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.inlay[inlay$index]);
			}
			if (hasSequence) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, sequence$field);
			}
			for (var forgeAttr$index:uint = 0; forgeAttr$index < this.forgeAttr.length; ++forgeAttr$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.forgeAttr[forgeAttr$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			for (var forgeQualityAttr$index:uint = 0; forgeQualityAttr$index < this.forgeQualityAttr.length; ++forgeQualityAttr$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.forgeQualityAttr[forgeQualityAttr$index]);
			}
			if (hasForgeLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, forge_level$field);
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
			var num$count:uint = 0;
			var level$count:uint = 0;
			var sequence$count:uint = 0;
			var index$count:uint = 0;
			var forge_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.inlay.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoJadeInfo()));
					break;
				case 5:
					if (sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipInfo.sequence cannot be set twice.');
					}
					++sequence$count;
					this.sequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.forgeAttr);
						break;
					}
					this.forgeAttr.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 7:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.forgeQualityAttr);
						break;
					}
					this.forgeQualityAttr.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 9:
					if (forge_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipInfo.forgeLevel cannot be set twice.');
					}
					++forge_level$count;
					this.forgeLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
