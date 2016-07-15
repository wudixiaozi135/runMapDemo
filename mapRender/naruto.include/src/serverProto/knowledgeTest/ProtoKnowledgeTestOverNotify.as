package serverProto.knowledgeTest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKnowledgeTestOverNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SCORE_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.score_reward", "scoreReward", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var scoreReward:Array = [];

		/**
		 *  @private
		 */
		public static const VOTE_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.vote_reward", "voteReward", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var voteReward:Array = [];

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.score", "score", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const WIN_NPC_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.win_npc_name", "winNpcName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var win_npc_name$field:String;

		public function clearWinNpcName():void {
			win_npc_name$field = null;
		}

		public function get hasWinNpcName():Boolean {
			return win_npc_name$field != null;
		}

		public function set winNpcName(value:String):void {
			win_npc_name$field = value;
		}

		public function get winNpcName():String {
			return win_npc_name$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var scoreReward$index:uint = 0; scoreReward$index < this.scoreReward.length; ++scoreReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.scoreReward[scoreReward$index]);
			}
			for (var voteReward$index:uint = 0; voteReward$index < this.voteReward.length; ++voteReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.voteReward[voteReward$index]);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, score$field);
			}
			if (hasWinNpcName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, win_npc_name$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var score$count:uint = 0;
			var win_npc_name$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.scoreReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 2:
					this.voteReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOverNotify.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (win_npc_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOverNotify.winNpcName cannot be set twice.');
					}
					++win_npc_name$count;
					this.winNpcName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
