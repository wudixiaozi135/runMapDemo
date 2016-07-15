package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoAttackerTimeInfo;
	import serverProto.fight.ProtoPassiveNinjaTimeInfo;
	import serverProto.fight.ProtoStageNinjaTimeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoActionTimeDetailInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTION_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.action_id", "actionId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var actionId:int;

		/**
		 *  @private
		 */
		public static const ACTION_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.action_type", "actionType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var actionType:int;

		/**
		 *  @private
		 */
		public static const ATTACKER_TIME_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActionTimeDetailInfo.attacker_time_info", "attackerTimeInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoAttackerTimeInfo);

		private var attacker_time_info$field:serverProto.fight.ProtoAttackerTimeInfo;

		public function clearAttackerTimeInfo():void {
			attacker_time_info$field = null;
		}

		public function get hasAttackerTimeInfo():Boolean {
			return attacker_time_info$field != null;
		}

		public function set attackerTimeInfo(value:serverProto.fight.ProtoAttackerTimeInfo):void {
			attacker_time_info$field = value;
		}

		public function get attackerTimeInfo():serverProto.fight.ProtoAttackerTimeInfo {
			return attacker_time_info$field;
		}

		/**
		 *  @private
		 */
		public static const PASSIVE_NINJA_TIME_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActionTimeDetailInfo.passive_ninja_time_info", "passiveNinjaTimeInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoPassiveNinjaTimeInfo);

		[ArrayElementType("serverProto.fight.ProtoPassiveNinjaTimeInfo")]
		public var passiveNinjaTimeInfo:Array = [];

		/**
		 *  @private
		 */
		public static const NEED_BLACK_SCREEN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.need_black_screen", "needBlackScreen", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_black_screen$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedBlackScreen():void {
			hasField$0 &= 0xfffffffe;
			need_black_screen$field = new int();
		}

		public function get hasNeedBlackScreen():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needBlackScreen(value:int):void {
			hasField$0 |= 0x1;
			need_black_screen$field = value;
		}

		public function get needBlackScreen():int {
			return need_black_screen$field;
		}

		/**
		 *  @private
		 */
		public static const STAGE_NINJA_TIME_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActionTimeDetailInfo.stage_ninja_time_info", "stageNinjaTimeInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoStageNinjaTimeInfo);

		[ArrayElementType("serverProto.fight.ProtoStageNinjaTimeInfo")]
		public var stageNinjaTimeInfo:Array = [];

		/**
		 *  @private
		 */
		public static const FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.frame_count", "frameCount", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var frame_count$field:int;

		public function clearFrameCount():void {
			hasField$0 &= 0xfffffffd;
			frame_count$field = new int();
		}

		public function get hasFrameCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set frameCount(value:int):void {
			hasField$0 |= 0x2;
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
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.actionId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.actionType);
			if (hasAttackerTimeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, attacker_time_info$field);
			}
			for (var passiveNinjaTimeInfo$index:uint = 0; passiveNinjaTimeInfo$index < this.passiveNinjaTimeInfo.length; ++passiveNinjaTimeInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.passiveNinjaTimeInfo[passiveNinjaTimeInfo$index]);
			}
			if (hasNeedBlackScreen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_black_screen$field);
			}
			for (var stageNinjaTimeInfo$index:uint = 0; stageNinjaTimeInfo$index < this.stageNinjaTimeInfo.length; ++stageNinjaTimeInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.stageNinjaTimeInfo[stageNinjaTimeInfo$index]);
			}
			if (hasFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
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
			var action_id$count:uint = 0;
			var action_type$count:uint = 0;
			var attacker_time_info$count:uint = 0;
			var need_black_screen$count:uint = 0;
			var frame_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (action_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActionTimeDetailInfo.actionId cannot be set twice.');
					}
					++action_id$count;
					this.actionId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (action_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActionTimeDetailInfo.actionType cannot be set twice.');
					}
					++action_type$count;
					this.actionType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (attacker_time_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActionTimeDetailInfo.attackerTimeInfo cannot be set twice.');
					}
					++attacker_time_info$count;
					this.attackerTimeInfo = new serverProto.fight.ProtoAttackerTimeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.attackerTimeInfo);
					break;
				case 4:
					this.passiveNinjaTimeInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoPassiveNinjaTimeInfo()));
					break;
				case 5:
					if (need_black_screen$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActionTimeDetailInfo.needBlackScreen cannot be set twice.');
					}
					++need_black_screen$count;
					this.needBlackScreen = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					this.stageNinjaTimeInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoStageNinjaTimeInfo()));
					break;
				case 7:
					if (frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActionTimeDetailInfo.frameCount cannot be set twice.');
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
