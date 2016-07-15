package serverProto.tactic {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.tactic.ProtoTacticInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTacticInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoGetTacticInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CURRENT_TACTIC_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoGetTacticInfoRsp.current_tactic_idx", "currentTacticIdx", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_tactic_idx$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentTacticIdx():void {
			hasField$0 &= 0xfffffffe;
			current_tactic_idx$field = new int();
		}

		public function get hasCurrentTacticIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentTacticIdx(value:int):void {
			hasField$0 |= 0x1;
			current_tactic_idx$field = value;
		}

		public function get currentTacticIdx():int {
			return current_tactic_idx$field;
		}

		/**
		 *  @private
		 */
		public static const TACTIC_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoGetTacticInfoRsp.tactic_list", "tacticList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.tactic.ProtoTacticInfo);

		[ArrayElementType("serverProto.tactic.ProtoTacticInfo")]
		public var tacticList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasCurrentTacticIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, current_tactic_idx$field);
			}
			for (var tacticList$index:uint = 0; tacticList$index < this.tacticList.length; ++tacticList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.tacticList[tacticList$index]);
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
			var current_tactic_idx$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTacticInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (current_tactic_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTacticInfoRsp.currentTacticIdx cannot be set twice.');
					}
					++current_tactic_idx$count;
					this.currentTacticIdx = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					this.tacticList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.tactic.ProtoTacticInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
