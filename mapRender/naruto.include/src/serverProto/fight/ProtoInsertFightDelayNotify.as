package serverProto.fight {
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
	public  final class ProtoInsertFightDelayNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SCRIPT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoInsertFightDelayNotify.script_id", "scriptId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var script_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearScriptId():void {
			hasField$0 &= 0xfffffffe;
			script_id$field = new uint();
		}

		public function get hasScriptId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set scriptId(value:uint):void {
			hasField$0 |= 0x1;
			script_id$field = value;
		}

		public function get scriptId():uint {
			return script_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasScriptId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, script_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var script_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (script_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInsertFightDelayNotify.scriptId cannot be set twice.');
					}
					++script_id$count;
					this.scriptId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
