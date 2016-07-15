package serverProto.quiz {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.quiz.ProtoQuestionRewardInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQuestionInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const QUESTION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.quiz.ProtoQuestionInfo.question", "question", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var question$field:String;

		public function clearQuestion():void {
			question$field = null;
		}

		public function get hasQuestion():Boolean {
			return question$field != null;
		}

		public function set question(value:String):void {
			question$field = value;
		}

		public function get question():String {
			return question$field;
		}

		/**
		 *  @private
		 */
		public static const ANSWER_LIST:RepeatedFieldDescriptor$TYPE_STRING = new RepeatedFieldDescriptor$TYPE_STRING("serverProto.quiz.ProtoQuestionInfo.answer_list", "answerList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		[ArrayElementType("String")]
		public var answerList:Array = [];

		/**
		 *  @private
		 */
		public static const REMAINDER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.quiz.ProtoQuestionInfo.remainder_time", "remainderTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearRemainderTime():void {
			hasField$0 &= 0xfffffffe;
			remainder_time$field = new uint();
		}

		public function get hasRemainderTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set remainderTime(value:uint):void {
			hasField$0 |= 0x1;
			remainder_time$field = value;
		}

		public function get remainderTime():uint {
			return remainder_time$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_QUESTION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionInfo.remainder_question", "remainderQuestion", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_question$field:int;

		public function clearRemainderQuestion():void {
			hasField$0 &= 0xfffffffd;
			remainder_question$field = new int();
		}

		public function get hasRemainderQuestion():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainderQuestion(value:int):void {
			hasField$0 |= 0x2;
			remainder_question$field = value;
		}

		public function get remainderQuestion():int {
			return remainder_question$field;
		}

		/**
		 *  @private
		 */
		public static const RIGHT_QUESTION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionInfo.right_question", "rightQuestion", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var right_question$field:int;

		public function clearRightQuestion():void {
			hasField$0 &= 0xfffffffb;
			right_question$field = new int();
		}

		public function get hasRightQuestion():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set rightQuestion(value:int):void {
			hasField$0 |= 0x4;
			right_question$field = value;
		}

		public function get rightQuestion():int {
			return right_question$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuestionInfo.current_reward", "currentReward", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.quiz.ProtoQuestionRewardInfo);

		private var current_reward$field:serverProto.quiz.ProtoQuestionRewardInfo;

		public function clearCurrentReward():void {
			current_reward$field = null;
		}

		public function get hasCurrentReward():Boolean {
			return current_reward$field != null;
		}

		public function set currentReward(value:serverProto.quiz.ProtoQuestionRewardInfo):void {
			current_reward$field = value;
		}

		public function get currentReward():serverProto.quiz.ProtoQuestionRewardInfo {
			return current_reward$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuestionInfo.total_reward", "totalReward", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.quiz.ProtoQuestionRewardInfo);

		private var total_reward$field:serverProto.quiz.ProtoQuestionRewardInfo;

		public function clearTotalReward():void {
			total_reward$field = null;
		}

		public function get hasTotalReward():Boolean {
			return total_reward$field != null;
		}

		public function set totalReward(value:serverProto.quiz.ProtoQuestionRewardInfo):void {
			total_reward$field = value;
		}

		public function get totalReward():serverProto.quiz.ProtoQuestionRewardInfo {
			return total_reward$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_BOX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionInfo.reward_box", "rewardBox", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_box$field:int;

		public function clearRewardBox():void {
			hasField$0 &= 0xfffffff7;
			reward_box$field = new int();
		}

		public function get hasRewardBox():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set rewardBox(value:int):void {
			hasField$0 |= 0x8;
			reward_box$field = value;
		}

		public function get rewardBox():int {
			return reward_box$field;
		}

		/**
		 *  @private
		 */
		public static const HAS_OPEN_REWARD_BOX:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.quiz.ProtoQuestionInfo.has_open_reward_box", "hasOpenRewardBox", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var has_open_reward_box$field:Boolean;

		public function clearHasOpenRewardBox():void {
			hasField$0 &= 0xffffffef;
			has_open_reward_box$field = new Boolean();
		}

		public function get hasHasOpenRewardBox():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set hasOpenRewardBox(value:Boolean):void {
			hasField$0 |= 0x10;
			has_open_reward_box$field = value;
		}

		public function get hasOpenRewardBox():Boolean {
			return has_open_reward_box$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, question$field);
			}
			for (var answerList$index:uint = 0; answerList$index < this.answerList.length; ++answerList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.answerList[answerList$index]);
			}
			if (hasRemainderTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remainder_time$field);
			}
			if (hasRemainderQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_question$field);
			}
			if (hasRightQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, right_question$field);
			}
			if (hasCurrentReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, current_reward$field);
			}
			if (hasTotalReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, total_reward$field);
			}
			if (hasRewardBox) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, reward_box$field);
			}
			if (hasHasOpenRewardBox) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, has_open_reward_box$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var question$count:uint = 0;
			var remainder_time$count:uint = 0;
			var remainder_question$count:uint = 0;
			var right_question$count:uint = 0;
			var current_reward$count:uint = 0;
			var total_reward$count:uint = 0;
			var reward_box$count:uint = 0;
			var has_open_reward_box$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.question cannot be set twice.');
					}
					++question$count;
					this.question = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					this.answerList.push(com.netease.protobuf.ReadUtils.read$TYPE_STRING(input));
					break;
				case 3:
					if (remainder_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.remainderTime cannot be set twice.');
					}
					++remainder_time$count;
					this.remainderTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (remainder_question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.remainderQuestion cannot be set twice.');
					}
					++remainder_question$count;
					this.remainderQuestion = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (right_question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.rightQuestion cannot be set twice.');
					}
					++right_question$count;
					this.rightQuestion = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (current_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.currentReward cannot be set twice.');
					}
					++current_reward$count;
					this.currentReward = new serverProto.quiz.ProtoQuestionRewardInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.currentReward);
					break;
				case 7:
					if (total_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.totalReward cannot be set twice.');
					}
					++total_reward$count;
					this.totalReward = new serverProto.quiz.ProtoQuestionRewardInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.totalReward);
					break;
				case 8:
					if (reward_box$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.rewardBox cannot be set twice.');
					}
					++reward_box$count;
					this.rewardBox = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (has_open_reward_box$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuestionInfo.hasOpenRewardBox cannot be set twice.');
					}
					++has_open_reward_box$count;
					this.hasOpenRewardBox = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
