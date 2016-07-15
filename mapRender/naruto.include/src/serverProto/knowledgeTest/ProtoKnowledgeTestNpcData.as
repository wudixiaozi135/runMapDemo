package serverProto.knowledgeTest {
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
	public  final class ProtoKnowledgeTestNpcData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NPC_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.npc_id", "npcId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var npc_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearNpcId():void {
			hasField$0 &= 0xfffffffe;
			npc_id$field = new uint();
		}

		public function get hasNpcId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set npcId(value:uint):void {
			hasField$0 |= 0x1;
			npc_id$field = value;
		}

		public function get npcId():uint {
			return npc_id$field;
		}

		/**
		 *  @private
		 */
		public static const VOTE_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.vote_num", "voteNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vote_num$field:uint;

		public function clearVoteNum():void {
			hasField$0 &= 0xfffffffd;
			vote_num$field = new uint();
		}

		public function get hasVoteNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set voteNum(value:uint):void {
			hasField$0 |= 0x2;
			vote_num$field = value;
		}

		public function get voteNum():uint {
			return vote_num$field;
		}

		/**
		 *  @private
		 */
		public static const ANSWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.answer", "answer", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var answer$field:uint;

		public function clearAnswer():void {
			hasField$0 &= 0xfffffffb;
			answer$field = new uint();
		}

		public function get hasAnswer():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set answer(value:uint):void {
			hasField$0 |= 0x4;
			answer$field = value;
		}

		public function get answer():uint {
			return answer$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.score", "score", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:uint;

		public function clearScore():void {
			hasField$0 &= 0xfffffff7;
			score$field = new uint();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set score(value:uint):void {
			hasField$0 |= 0x8;
			score$field = value;
		}

		public function get score():uint {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const RAND_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.rand_time", "randTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rand_time$field:uint;

		public function clearRandTime():void {
			hasField$0 &= 0xffffffef;
			rand_time$field = new uint();
		}

		public function get hasRandTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set randTime(value:uint):void {
			hasField$0 |= 0x10;
			rand_time$field = value;
		}

		public function get randTime():uint {
			return rand_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNpcId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, npc_id$field);
			}
			if (hasVoteNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vote_num$field);
			}
			if (hasAnswer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, answer$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, score$field);
			}
			if (hasRandTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rand_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var npc_id$count:uint = 0;
			var vote_num$count:uint = 0;
			var answer$count:uint = 0;
			var score$count:uint = 0;
			var rand_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (npc_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestNpcData.npcId cannot be set twice.');
					}
					++npc_id$count;
					this.npcId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (vote_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestNpcData.voteNum cannot be set twice.');
					}
					++vote_num$count;
					this.voteNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (answer$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestNpcData.answer cannot be set twice.');
					}
					++answer$count;
					this.answer = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestNpcData.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (rand_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestNpcData.randTime cannot be set twice.');
					}
					++rand_time$count;
					this.randTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
