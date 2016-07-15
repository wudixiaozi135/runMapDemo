package serverProto.promote {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.promote.ProtoProgressBar;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRoleLevelupInfoResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetRoleLevelupInfoResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const DAILY_TASK_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetRoleLevelupInfoResp.daily_task_progress", "dailyTaskProgress", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var daily_task_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearDailyTaskProgress():void {
			daily_task_progress$field = null;
		}

		public function get hasDailyTaskProgress():Boolean {
			return daily_task_progress$field != null;
		}

		public function set dailyTaskProgress(value:serverProto.promote.ProtoProgressBar):void {
			daily_task_progress$field = value;
		}

		public function get dailyTaskProgress():serverProto.promote.ProtoProgressBar {
			return daily_task_progress$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_TASK_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetRoleLevelupInfoResp.reward_task_progress", "rewardTaskProgress", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var reward_task_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearRewardTaskProgress():void {
			reward_task_progress$field = null;
		}

		public function get hasRewardTaskProgress():Boolean {
			return reward_task_progress$field != null;
		}

		public function set rewardTaskProgress(value:serverProto.promote.ProtoProgressBar):void {
			reward_task_progress$field = value;
		}

		public function get rewardTaskProgress():serverProto.promote.ProtoProgressBar {
			return reward_task_progress$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasDailyTaskProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, daily_task_progress$field);
			}
			if (hasRewardTaskProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, reward_task_progress$field);
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
			var daily_task_progress$count:uint = 0;
			var reward_task_progress$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoleLevelupInfoResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (daily_task_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoleLevelupInfoResp.dailyTaskProgress cannot be set twice.');
					}
					++daily_task_progress$count;
					this.dailyTaskProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.dailyTaskProgress);
					break;
				case 3:
					if (reward_task_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoleLevelupInfoResp.rewardTaskProgress cannot be set twice.');
					}
					++reward_task_progress$count;
					this.rewardTaskProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rewardTaskProgress);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
