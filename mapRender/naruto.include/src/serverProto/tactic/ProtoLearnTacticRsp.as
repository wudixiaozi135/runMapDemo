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
	public  final class ProtoLearnTacticRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoLearnTacticRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TACTIC:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoLearnTacticRsp.tactic", "tactic", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.tactic.ProtoTacticInfo);

		private var tactic$field:serverProto.tactic.ProtoTacticInfo;

		public function clearTactic():void {
			tactic$field = null;
		}

		public function get hasTactic():Boolean {
			return tactic$field != null;
		}

		public function set tactic(value:serverProto.tactic.ProtoTacticInfo):void {
			tactic$field = value;
		}

		public function get tactic():serverProto.tactic.ProtoTacticInfo {
			return tactic$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasTactic) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, tactic$field);
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
			var tactic$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLearnTacticRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 3:
					if (tactic$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLearnTacticRsp.tactic cannot be set twice.');
					}
					++tactic$count;
					this.tactic = new serverProto.tactic.ProtoTacticInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.tactic);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
