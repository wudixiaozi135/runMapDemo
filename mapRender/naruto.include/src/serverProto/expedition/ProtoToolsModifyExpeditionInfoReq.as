package serverProto.expedition {
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
	public  final class ProtoToolsModifyExpeditionInfoReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoToolsModifyExpeditionInfoReq.cmd", "cmd", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cmd:int;

		/**
		 *  @private
		 */
		public static const SERIAL_DESPAIR_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoToolsModifyExpeditionInfoReq.serial_despair_count", "serialDespairCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var serial_despair_count$field:int;

		private var hasField$0:uint = 0;

		public function clearSerialDespairCount():void {
			hasField$0 &= 0xfffffffe;
			serial_despair_count$field = new int();
		}

		public function get hasSerialDespairCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set serialDespairCount(value:int):void {
			hasField$0 |= 0x1;
			serial_despair_count$field = value;
		}

		public function get serialDespairCount():int {
			return serial_despair_count$field;
		}

		/**
		 *  @private
		 */
		public static const STAGE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoToolsModifyExpeditionInfoReq.stage_level", "stageLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var stage_level$field:int;

		public function clearStageLevel():void {
			hasField$0 &= 0xfffffffd;
			stage_level$field = new int();
		}

		public function get hasStageLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set stageLevel(value:int):void {
			hasField$0 |= 0x2;
			stage_level$field = value;
		}

		public function get stageLevel():int {
			return stage_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.cmd);
			if (hasSerialDespairCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, serial_despair_count$field);
			}
			if (hasStageLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, stage_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd$count:uint = 0;
			var serial_despair_count$count:uint = 0;
			var stage_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolsModifyExpeditionInfoReq.cmd cannot be set twice.');
					}
					++cmd$count;
					this.cmd = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (serial_despair_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolsModifyExpeditionInfoReq.serialDespairCount cannot be set twice.');
					}
					++serial_despair_count$count;
					this.serialDespairCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (stage_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolsModifyExpeditionInfoReq.stageLevel cannot be set twice.');
					}
					++stage_level$count;
					this.stageLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
