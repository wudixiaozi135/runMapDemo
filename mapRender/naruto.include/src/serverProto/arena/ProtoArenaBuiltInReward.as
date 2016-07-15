package serverProto.arena {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoUpdateItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoArenaBuiltInReward extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DAILY_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaBuiltInReward.daily_reward", "dailyReward", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoUpdateItemInfo);

		private var daily_reward$field:serverProto.inc.ProtoUpdateItemInfo;

		public function clearDailyReward():void {
			daily_reward$field = null;
		}

		public function get hasDailyReward():Boolean {
			return daily_reward$field != null;
		}

		public function set dailyReward(value:serverProto.inc.ProtoUpdateItemInfo):void {
			daily_reward$field = value;
		}

		public function get dailyReward():serverProto.inc.ProtoUpdateItemInfo {
			return daily_reward$field;
		}

		/**
		 *  @private
		 */
		public static const WEEKLY_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaBuiltInReward.weekly_reward", "weeklyReward", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoUpdateItemInfo);

		private var weekly_reward$field:serverProto.inc.ProtoUpdateItemInfo;

		public function clearWeeklyReward():void {
			weekly_reward$field = null;
		}

		public function get hasWeeklyReward():Boolean {
			return weekly_reward$field != null;
		}

		public function set weeklyReward(value:serverProto.inc.ProtoUpdateItemInfo):void {
			weekly_reward$field = value;
		}

		public function get weeklyReward():serverProto.inc.ProtoUpdateItemInfo {
			return weekly_reward$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasDailyReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, daily_reward$field);
			}
			if (hasWeeklyReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, weekly_reward$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var daily_reward$count:uint = 0;
			var weekly_reward$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (daily_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaBuiltInReward.dailyReward cannot be set twice.');
					}
					++daily_reward$count;
					this.dailyReward = new serverProto.inc.ProtoUpdateItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.dailyReward);
					break;
				case 2:
					if (weekly_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaBuiltInReward.weeklyReward cannot be set twice.');
					}
					++weekly_reward$count;
					this.weeklyReward = new serverProto.inc.ProtoUpdateItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.weeklyReward);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
