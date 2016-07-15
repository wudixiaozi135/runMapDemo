package serverProto.tactic {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.NinjaSourceType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSetCurrentTacticReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TACTIC_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoSetCurrentTacticReq.tactic_idx", "tacticIdx", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var tacticIdx:int;

		/**
		 *  @private
		 */
		public static const NINJA_SOURCE_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.tactic.ProtoSetCurrentTacticReq.ninja_source_type", "ninjaSourceType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.NinjaSourceType);

		private var ninja_source_type$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaSourceType():void {
			hasField$0 &= 0xfffffffe;
			ninja_source_type$field = new int();
		}

		public function get hasNinjaSourceType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaSourceType(value:int):void {
			hasField$0 |= 0x1;
			ninja_source_type$field = value;
		}

		public function get ninjaSourceType():int {
			return ninja_source_type$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.tacticIdx);
			if (hasNinjaSourceType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, ninja_source_type$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var tactic_idx$count:uint = 0;
			var ninja_source_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (tactic_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetCurrentTacticReq.tacticIdx cannot be set twice.');
					}
					++tactic_idx$count;
					this.tacticIdx = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (ninja_source_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetCurrentTacticReq.ninjaSourceType cannot be set twice.');
					}
					++ninja_source_type$count;
					this.ninjaSourceType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
