package serverProto.quiz {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.quiz.ProtoQuestionInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQuizAnswerResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuizAnswerResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const IS_RIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.quiz.ProtoQuizAnswerResponse.is_right", "isRight", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isRight:Boolean;

		/**
		 *  @private
		 */
		public static const NEXT_QUESTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuizAnswerResponse.next_question", "nextQuestion", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.quiz.ProtoQuestionInfo);

		private var next_question$field:serverProto.quiz.ProtoQuestionInfo;

		public function clearNextQuestion():void {
			next_question$field = null;
		}

		public function get hasNextQuestion():Boolean {
			return next_question$field != null;
		}

		public function set nextQuestion(value:serverProto.quiz.ProtoQuestionInfo):void {
			next_question$field = value;
		}

		public function get nextQuestion():serverProto.quiz.ProtoQuestionInfo {
			return next_question$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuizAnswerResponse.reward_list", "rewardList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var rewardList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, this.isRight);
			if (hasNextQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, next_question$field);
			}
			for (var rewardList$index:uint = 0; rewardList$index < this.rewardList.length; ++rewardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rewardList[rewardList$index]);
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
			var is_right$count:uint = 0;
			var next_question$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuizAnswerResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (is_right$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuizAnswerResponse.isRight cannot be set twice.');
					}
					++is_right$count;
					this.isRight = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (next_question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuizAnswerResponse.nextQuestion cannot be set twice.');
					}
					++next_question$count;
					this.nextQuestion = new serverProto.quiz.ProtoQuestionInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nextQuestion);
					break;
				case 4:
					this.rewardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
