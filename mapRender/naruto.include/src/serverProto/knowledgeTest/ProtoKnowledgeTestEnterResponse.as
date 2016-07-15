package serverProto.knowledgeTest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.rank.ProtoKnowledgeTestRank;
	import serverProto.knowledgeTest.ProtoKnowledgeTestData;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKnowledgeTestEnterResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestEnterResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NOW_QUESTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestEnterResponse.now_question", "nowQuestion", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.knowledgeTest.ProtoKnowledgeTestData);

		private var now_question$field:serverProto.knowledgeTest.ProtoKnowledgeTestData;

		public function clearNowQuestion():void {
			now_question$field = null;
		}

		public function get hasNowQuestion():Boolean {
			return now_question$field != null;
		}

		public function set nowQuestion(value:serverProto.knowledgeTest.ProtoKnowledgeTestData):void {
			now_question$field = value;
		}

		public function get nowQuestion():serverProto.knowledgeTest.ProtoKnowledgeTestData {
			return now_question$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_QUESTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestEnterResponse.next_question", "nextQuestion", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.knowledgeTest.ProtoKnowledgeTestData);

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
		public static const RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestEnterResponse.rank", "rank", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rank.ProtoKnowledgeTestRank);

		[ArrayElementType("serverProto.rank.ProtoKnowledgeTestRank")]
		public var rank:Array = [];

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestEnterResponse.score", "score", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:uint;

		private var hasField$0:uint = 0;

		public function clearScore():void {
			hasField$0 &= 0xfffffffe;
			score$field = new uint();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set score(value:uint):void {
			hasField$0 |= 0x1;
			score$field = value;
		}

		public function get score():uint {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestEnterResponse.location", "location", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var location$field:serverProto.inc.ProtoPoint;

		public function clearLocation():void {
			location$field = null;
		}

		public function get hasLocation():Boolean {
			return location$field != null;
		}

		public function set location(value:serverProto.inc.ProtoPoint):void {
			location$field = value;
		}

		public function get location():serverProto.inc.ProtoPoint {
			return location$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasNowQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, now_question$field);
			}
			if (hasNextQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, next_question$field);
			}
			for (var rank$index:uint = 0; rank$index < this.rank.length; ++rank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rank[rank$index]);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, score$field);
			}
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, location$field);
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
			var now_question$count:uint = 0;
			var next_question$count:uint = 0;
			var score$count:uint = 0;
			var location$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestEnterResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (now_question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestEnterResponse.nowQuestion cannot be set twice.');
					}
					++now_question$count;
					this.nowQuestion = new serverProto.knowledgeTest.ProtoKnowledgeTestData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nowQuestion);
					break;
				case 3:
					if (next_question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestEnterResponse.nextQuestion cannot be set twice.');
					}
					++next_question$count;
					this.nextQuestion = new serverProto.knowledgeTest.ProtoKnowledgeTestData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nextQuestion);
					break;
				case 4:
					this.rank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rank.ProtoKnowledgeTestRank()));
					break;
				case 5:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestEnterResponse.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestEnterResponse.location cannot be set twice.');
					}
					++location$count;
					this.location = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.location);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
