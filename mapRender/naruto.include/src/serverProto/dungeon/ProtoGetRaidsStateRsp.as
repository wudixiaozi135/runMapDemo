package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.dungeon.ProtoDungeonRaidsInfo;
	import serverProto.ninjaexam.ProtoExamStageItemInfo;
	import serverProto.dungeon.ProtoRaidsType;
	import serverProto.dungeon.ProtoRaidsCountReward;
	import serverProto.ninjaexam.ProtoNinjaExamInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRaidsStateRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const RAIDS_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoGetRaidsStateRsp.raids_state", "raidsState", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.dungeon.ProtoRaidsType);

		public var raidsState:int;

		/**
		 *  @private
		 */
		public static const DUNGEON_RAIDS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.dungeon_raids_info", "dungeonRaidsInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoDungeonRaidsInfo);

		private var dungeon_raids_info$field:serverProto.dungeon.ProtoDungeonRaidsInfo;

		public function clearDungeonRaidsInfo():void {
			dungeon_raids_info$field = null;
		}

		public function get hasDungeonRaidsInfo():Boolean {
			return dungeon_raids_info$field != null;
		}

		public function set dungeonRaidsInfo(value:serverProto.dungeon.ProtoDungeonRaidsInfo):void {
			dungeon_raids_info$field = value;
		}

		public function get dungeonRaidsInfo():serverProto.dungeon.ProtoDungeonRaidsInfo {
			return dungeon_raids_info$field;
		}

		/**
		 *  @private
		 */
		public static const RAIDS_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.raids_reward", "raidsReward", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoRaidsCountReward);

		[ArrayElementType("serverProto.dungeon.ProtoRaidsCountReward")]
		public var raidsReward:Array = [];

		/**
		 *  @private
		 */
		public static const EXAM_RAIDS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.exam_raids_info", "examRaidsInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaexam.ProtoNinjaExamInfo);

		private var exam_raids_info$field:serverProto.ninjaexam.ProtoNinjaExamInfo;

		public function clearExamRaidsInfo():void {
			exam_raids_info$field = null;
		}

		public function get hasExamRaidsInfo():Boolean {
			return exam_raids_info$field != null;
		}

		public function set examRaidsInfo(value:serverProto.ninjaexam.ProtoNinjaExamInfo):void {
			exam_raids_info$field = value;
		}

		public function get examRaidsInfo():serverProto.ninjaexam.ProtoNinjaExamInfo {
			return exam_raids_info$field;
		}

		/**
		 *  @private
		 */
		public static const STAGE_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.stage_item_info", "stageItemInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaexam.ProtoExamStageItemInfo);

		[ArrayElementType("serverProto.ninjaexam.ProtoExamStageItemInfo")]
		public var stageItemInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.raidsState);
			if (hasDungeonRaidsInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, dungeon_raids_info$field);
			}
			for (var raidsReward$index:uint = 0; raidsReward$index < this.raidsReward.length; ++raidsReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.raidsReward[raidsReward$index]);
			}
			if (hasExamRaidsInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, exam_raids_info$field);
			}
			for (var stageItemInfo$index:uint = 0; stageItemInfo$index < this.stageItemInfo.length; ++stageItemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.stageItemInfo[stageItemInfo$index]);
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
			var raids_state$count:uint = 0;
			var dungeon_raids_info$count:uint = 0;
			var exam_raids_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRaidsStateRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (raids_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRaidsStateRsp.raidsState cannot be set twice.');
					}
					++raids_state$count;
					this.raidsState = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (dungeon_raids_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRaidsStateRsp.dungeonRaidsInfo cannot be set twice.');
					}
					++dungeon_raids_info$count;
					this.dungeonRaidsInfo = new serverProto.dungeon.ProtoDungeonRaidsInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.dungeonRaidsInfo);
					break;
				case 4:
					this.raidsReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoRaidsCountReward()));
					break;
				case 5:
					if (exam_raids_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRaidsStateRsp.examRaidsInfo cannot be set twice.');
					}
					++exam_raids_info$count;
					this.examRaidsInfo = new serverProto.ninjaexam.ProtoNinjaExamInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.examRaidsInfo);
					break;
				case 6:
					this.stageItemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.ninjaexam.ProtoExamStageItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
