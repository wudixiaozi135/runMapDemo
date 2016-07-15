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
	import serverProto.knowledgeTest.ProtoKnowledgeTestUserState;
	import serverProto.knowledgeTest.ProtoKnowledgeTestNpcData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKnowledgeTestOpenUIResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NPC_DATA_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.npc_data_ary", "npcDataAry", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.knowledgeTest.ProtoKnowledgeTestNpcData);

		[ArrayElementType("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData")]
		public var npcDataAry:Array = [];

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.state", "state", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.knowledgeTest.ProtoKnowledgeTestUserState);

		private var state$field:int;

		private var hasField$0:uint = 0;

		public function clearState():void {
			hasField$0 &= 0xfffffffe;
			state$field = new int();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set state(value:int):void {
			hasField$0 |= 0x1;
			state$field = value;
		}

		public function get state():int {
			return state$field;
		}

		/**
		 *  @private
		 */
		public static const VOTE_NPC_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.vote_npc_id", "voteNpcId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vote_npc_id$field:uint;

		public function clearVoteNpcId():void {
			hasField$0 &= 0xfffffffd;
			vote_npc_id$field = new uint();
		}

		public function get hasVoteNpcId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set voteNpcId(value:uint):void {
			hasField$0 |= 0x2;
			vote_npc_id$field = value;
		}

		public function get voteNpcId():uint {
			return vote_npc_id$field;
		}

		/**
		 *  @private
		 */
		public static const ENTER_RAMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.enter_ramin_time", "enterRaminTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter_ramin_time$field:uint;

		public function clearEnterRaminTime():void {
			hasField$0 &= 0xfffffffb;
			enter_ramin_time$field = new uint();
		}

		public function get hasEnterRaminTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set enterRaminTime(value:uint):void {
			hasField$0 |= 0x4;
			enter_ramin_time$field = value;
		}

		public function get enterRaminTime():uint {
			return enter_ramin_time$field;
		}

		/**
		 *  @private
		 */
		public static const START_REAMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.start_reamin_time", "startReaminTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var start_reamin_time$field:uint;

		public function clearStartReaminTime():void {
			hasField$0 &= 0xfffffff7;
			start_reamin_time$field = new uint();
		}

		public function get hasStartReaminTime():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set startReaminTime(value:uint):void {
			hasField$0 |= 0x8;
			start_reamin_time$field = value;
		}

		public function get startReaminTime():uint {
			return start_reamin_time$field;
		}

		/**
		 *  @private
		 */
		public static const LOWEST_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.lowest_score", "lowestScore", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lowest_score$field:uint;

		public function clearLowestScore():void {
			hasField$0 &= 0xffffffef;
			lowest_score$field = new uint();
		}

		public function get hasLowestScore():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set lowestScore(value:uint):void {
			hasField$0 |= 0x10;
			lowest_score$field = value;
		}

		public function get lowestScore():uint {
			return lowest_score$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			for (var npcDataAry$index:uint = 0; npcDataAry$index < this.npcDataAry.length; ++npcDataAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.npcDataAry[npcDataAry$index]);
			}
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, state$field);
			}
			if (hasVoteNpcId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vote_npc_id$field);
			}
			if (hasEnterRaminTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, enter_ramin_time$field);
			}
			if (hasStartReaminTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, start_reamin_time$field);
			}
			if (hasLowestScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, lowest_score$field);
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
			var state$count:uint = 0;
			var vote_npc_id$count:uint = 0;
			var enter_ramin_time$count:uint = 0;
			var start_reamin_time$count:uint = 0;
			var lowest_score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOpenUIResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					this.npcDataAry.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.knowledgeTest.ProtoKnowledgeTestNpcData()));
					break;
				case 3:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOpenUIResponse.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (vote_npc_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOpenUIResponse.voteNpcId cannot be set twice.');
					}
					++vote_npc_id$count;
					this.voteNpcId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (enter_ramin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOpenUIResponse.enterRaminTime cannot be set twice.');
					}
					++enter_ramin_time$count;
					this.enterRaminTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (start_reamin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOpenUIResponse.startReaminTime cannot be set twice.');
					}
					++start_reamin_time$count;
					this.startReaminTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (lowest_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestOpenUIResponse.lowestScore cannot be set twice.');
					}
					++lowest_score$count;
					this.lowestScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
