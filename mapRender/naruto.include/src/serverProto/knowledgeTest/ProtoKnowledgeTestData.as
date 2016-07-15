package serverProto.knowledgeTest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.knowledgeTest.ProtoKnowledgeTestNpcData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKnowledgeTestData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestData.no", "no", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var no$field:uint;

		private var hasField$0:uint = 0;

		public function clearNo():void {
			hasField$0 &= 0xfffffffe;
			no$field = new uint();
		}

		public function get hasNo():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set no(value:uint):void {
			hasField$0 |= 0x1;
			no$field = value;
		}

		public function get no():uint {
			return no$field;
		}

		/**
		 *  @private
		 */
		public static const QUESTION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestData.question", "question", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ANSWER_LIST:RepeatedFieldDescriptor$TYPE_STRING = new RepeatedFieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestData.answer_list", "answerList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		[ArrayElementType("String")]
		public var answerList:Array = [];

		/**
		 *  @private
		 */
		public static const ICON:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestData.icon", "icon", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var icon$field:String;

		public function clearIcon():void {
			icon$field = null;
		}

		public function get hasIcon():Boolean {
			return icon$field != null;
		}

		public function set icon(value:String):void {
			icon$field = value;
		}

		public function get icon():String {
			return icon$field;
		}

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestData.begin_time", "beginTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffd;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x2;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestData.remain_time", "remainTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xfffffffb;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x4;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const NPC_DATA_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestData.npc_data_ary", "npcDataAry", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.knowledgeTest.ProtoKnowledgeTestNpcData);

		[ArrayElementType("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData")]
		public var npcDataAry:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, no$field);
			}
			if (hasQuestion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, question$field);
			}
			for (var answerList$index:uint = 0; answerList$index < this.answerList.length; ++answerList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.answerList[answerList$index]);
			}
			if (hasIcon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, icon$field);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
			}
			for (var npcDataAry$index:uint = 0; npcDataAry$index < this.npcDataAry.length; ++npcDataAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.npcDataAry[npcDataAry$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var no$count:uint = 0;
			var question$count:uint = 0;
			var icon$count:uint = 0;
			var begin_time$count:uint = 0;
			var remain_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (no$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestData.no cannot be set twice.');
					}
					++no$count;
					this.no = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (question$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestData.question cannot be set twice.');
					}
					++question$count;
					this.question = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					this.answerList.push(com.netease.protobuf.ReadUtils.read$TYPE_STRING(input));
					break;
				case 4:
					if (icon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestData.icon cannot be set twice.');
					}
					++icon$count;
					this.icon = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestData.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestData.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					this.npcDataAry.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.knowledgeTest.ProtoKnowledgeTestNpcData()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
