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
	public  final class ProtoScriptAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SCRIPT_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoScriptAction.script_id", "scriptId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var scriptId:int;

		/**
		 *  @private
		 */
		public static const DELAY_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoScriptAction.delay_time", "delayTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var delay_time$field:int;

		private var hasField$0:uint = 0;

		public function clearDelayTime():void {
			hasField$0 &= 0xfffffffe;
			delay_time$field = new int();
		}

		public function get hasDelayTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set delayTime(value:int):void {
			hasField$0 |= 0x1;
			delay_time$field = value;
		}

		public function get delayTime():int {
			return delay_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.scriptId);
			if (hasDelayTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, delay_time$field);
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
			var delay_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (script_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoScriptAction.scriptId cannot be set twice.');
					}
					++script_id$count;
					this.scriptId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (delay_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoScriptAction.delayTime cannot be set twice.');
					}
					++delay_time$count;
					this.delayTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
