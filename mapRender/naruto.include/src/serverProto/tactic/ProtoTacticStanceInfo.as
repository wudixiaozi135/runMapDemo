package serverProto.tactic {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.tactic.ProtoTacticAddtionType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTacticStanceInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticStanceInfo.pos", "pos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var pos:int;

		/**
		 *  @private
		 */
		public static const ADDITION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.tactic.ProtoTacticStanceInfo.addition_type", "additionType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.tactic.ProtoTacticAddtionType);

		public var additionType:int;

		/**
		 *  @private
		 */
		public static const ADDITION_VAL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticStanceInfo.addition_val", "additionVal", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var addition_val$field:int;

		private var hasField$0:uint = 0;

		public function clearAdditionVal():void {
			hasField$0 &= 0xfffffffe;
			addition_val$field = new int();
		}

		public function get hasAdditionVal():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set additionVal(value:int):void {
			hasField$0 |= 0x1;
			addition_val$field = value;
		}

		public function get additionVal():int {
			return addition_val$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LEVEL_ADDITION_VAL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticStanceInfo.next_level_addition_val", "nextLevelAdditionVal", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_level_addition_val$field:int;

		public function clearNextLevelAdditionVal():void {
			hasField$0 &= 0xfffffffd;
			next_level_addition_val$field = new int();
		}

		public function get hasNextLevelAdditionVal():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set nextLevelAdditionVal(value:int):void {
			hasField$0 |= 0x2;
			next_level_addition_val$field = value;
		}

		public function get nextLevelAdditionVal():int {
			return next_level_addition_val$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.pos);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.additionType);
			if (hasAdditionVal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, addition_val$field);
			}
			if (hasNextLevelAdditionVal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, next_level_addition_val$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var pos$count:uint = 0;
			var addition_type$count:uint = 0;
			var addition_val$count:uint = 0;
			var next_level_addition_val$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticStanceInfo.pos cannot be set twice.');
					}
					++pos$count;
					this.pos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (addition_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticStanceInfo.additionType cannot be set twice.');
					}
					++addition_type$count;
					this.additionType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (addition_val$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticStanceInfo.additionVal cannot be set twice.');
					}
					++addition_val$count;
					this.additionVal = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (next_level_addition_val$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticStanceInfo.nextLevelAdditionVal cannot be set twice.');
					}
					++next_level_addition_val$count;
					this.nextLevelAdditionVal = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
