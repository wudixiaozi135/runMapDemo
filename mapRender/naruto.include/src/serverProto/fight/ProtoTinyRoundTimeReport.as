package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoActionTimeDetailInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTinyRoundTimeReport extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTinyRoundTimeReport.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const ACTION_TIME_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTinyRoundTimeReport.action_time_info", "actionTimeInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActionTimeDetailInfo);

		[ArrayElementType("serverProto.fight.ProtoActionTimeDetailInfo")]
		public var actionTimeInfo:Array = [];

		/**
		 *  @private
		 */
		public static const FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTinyRoundTimeReport.frame_count", "frameCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var frame_count$field:int;

		private var hasField$0:uint = 0;

		public function clearFrameCount():void {
			hasField$0 &= 0xfffffffe;
			frame_count$field = new int();
		}

		public function get hasFrameCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set frameCount(value:int):void {
			hasField$0 |= 0x1;
			frame_count$field = value;
		}

		public function get frameCount():int {
			return frame_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.id);
			for (var actionTimeInfo$index:uint = 0; actionTimeInfo$index < this.actionTimeInfo.length; ++actionTimeInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.actionTimeInfo[actionTimeInfo$index]);
			}
			if (hasFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, frame_count$field);
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
			var frame_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTinyRoundTimeReport.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					this.actionTimeInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoActionTimeDetailInfo()));
					break;
				case 3:
					if (frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTinyRoundTimeReport.frameCount cannot be set twice.');
					}
					++frame_count$count;
					this.frameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
