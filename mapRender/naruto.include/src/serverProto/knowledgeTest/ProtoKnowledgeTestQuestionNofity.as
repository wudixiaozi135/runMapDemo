package serverProto.knowledgeTest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.rank.ProtoKnowledgeTestRank;
	import serverProto.knowledgeTest.ProtoKnowledgeTestData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKnowledgeTestQuestionNofity extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LAST_ANSWER_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.last_answer_index", "lastAnswerIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var last_answer_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearLastAnswerIndex():void {
			hasField$0 &= 0xfffffffe;
			last_answer_index$field = new uint();
		}

		public function get hasLastAnswerIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set lastAnswerIndex(value:uint):void {
			hasField$0 |= 0x1;
			last_answer_index$field = value;
		}

		public function get lastAnswerIndex():uint {
			return last_answer_index$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_QUESTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.next_question", "nextQuestion", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.knowledgeTest.ProtoKnowledgeTestData);

		private var next_question$field:serverProto.knowledgeTest.ProtoKnowledgeTestData;

		public function clearNextQuestion():void {
			next_question$field = null;
		}

		public function get hasNextQuestion():Boolean {
			return next_question$field != null;
		}

		public function set nextQuestion(value:serverProto.knowledgeTest.ProtoKnowledgeTestData):void {
			next_question$field = value;
		}

		public function get nextQuestion():serverProto.knowledgeTest.ProtoKnowledgeTestData {
			return next_question$field;
		}

		/**
		 *  @private
		 */
		public static const RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.rank", "rank", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rank.ProtoKnowledgeTestRank);

		[ArrayElementType("serverProto.rank.ProtoKnowledgeTestRank")]
		public var rank:Array = [];

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.score", "score", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:uint;

		public function clearScore():void {
			hasField$0 &= 0xfffffffd;
			score$field = new uint();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set score(value:uint):void {
			hasField$0 |= 0x2;
			score$field = value;
		}

		public function get score():uint {
			return score$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasLastAnswerIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, last_answer_index$field);
			}
			if (hasNextQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, next_question$field);
			}
			for (var rank$index:uint = 0; rank$index < this.rank.length; ++rank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rank[rank$index]);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, score$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var last_answer_index$count:uint = 0;
			var next_question$count:uint = 0;
			var score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (last_answer_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestQuestionNofity.lastAnswerIndex cannot be set twice.');
					}
					++last_answer_index$count;
					this.lastAnswerIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (next_question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestQuestionNofity.nextQuestion cannot be set twice.');
					}
					++next_question$count;
					this.nextQuestion = new serverProto.knowledgeTest.ProtoKnowledgeTestData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nextQuestion);
					break;
				case 3:
					this.rank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rank.ProtoKnowledgeTestRank()));
					break;
				case 4:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestQuestionNofity.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
