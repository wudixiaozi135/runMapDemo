package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.practice.ProtoPracticeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFinishNinjaPracticeResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoFinishNinjaPracticeResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const REWARD_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoFinishNinjaPracticeResponse.reward_exp", "rewardExp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_exp$field:int;

		private var hasField$0:uint = 0;

		public function clearRewardExp():void {
			hasField$0 &= 0xfffffffe;
			reward_exp$field = new int();
		}

		public function get hasRewardExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rewardExp(value:int):void {
			hasField$0 |= 0x1;
			reward_exp$field = value;
		}

		public function get rewardExp():int {
			return reward_exp$field;
		}

		/**
		 *  @private
		 */
		public static const PRACTICE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoFinishNinjaPracticeResponse.practice_info", "practiceInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.practice.ProtoPracticeInfo);

		private var practice_info$field:serverProto.practice.ProtoPracticeInfo;

		public function clearPracticeInfo():void {
			practice_info$field = null;
		}

		public function get hasPracticeInfo():Boolean {
			return practice_info$field != null;
		}

		public function set practiceInfo(value:serverProto.practice.ProtoPracticeInfo):void {
			practice_info$field = value;
		}

		public function get practiceInfo():serverProto.practice.ProtoPracticeInfo {
			return practice_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasRewardExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, reward_exp$field);
			}
			if (hasPracticeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, practice_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var reward_exp$count:uint = 0;
			var practice_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFinishNinjaPracticeResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (reward_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFinishNinjaPracticeResponse.rewardExp cannot be set twice.');
					}
					++reward_exp$count;
					this.rewardExp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (practice_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFinishNinjaPracticeResponse.practiceInfo cannot be set twice.');
					}
					++practice_info$count;
					this.practiceInfo = new serverProto.practice.ProtoPracticeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.practiceInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
