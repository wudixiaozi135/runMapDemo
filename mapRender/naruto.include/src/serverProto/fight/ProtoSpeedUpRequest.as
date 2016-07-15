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
	public  final class ProtoSpeedUpRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OPTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoSpeedUpRequest.option", "option", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var option:int;

		/**
		 *  @private
		 */
		public static const NEED_NOTIFY_MEMBERS:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoSpeedUpRequest.need_notify_members", "needNotifyMembers", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_notify_members$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearNeedNotifyMembers():void {
			hasField$0 &= 0xfffffffe;
			need_notify_members$field = new Boolean();
		}

		public function get hasNeedNotifyMembers():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needNotifyMembers(value:Boolean):void {
			hasField$0 |= 0x1;
			need_notify_members$field = value;
		}

		public function get needNotifyMembers():Boolean {
			return need_notify_members$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.option);
			if (hasNeedNotifyMembers) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, need_notify_members$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var option$count:uint = 0;
			var need_notify_members$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (option$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpRequest.option cannot be set twice.');
					}
					++option$count;
					this.option = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (need_notify_members$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpRequest.needNotifyMembers cannot be set twice.');
					}
					++need_notify_members$count;
					this.needNotifyMembers = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
