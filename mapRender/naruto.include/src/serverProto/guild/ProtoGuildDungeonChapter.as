package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGuildDungeonAward;
	import serverProto.guild.ProtoGuildDungeonRank;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildDungeonChapter extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChapter.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:uint;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new uint();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:uint):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():uint {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonChapter.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const SUBJECT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChapter.subject_id", "subjectId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var subject_id$field:uint;

		public function clearSubjectId():void {
			hasField$0 &= 0xfffffffd;
			subject_id$field = new uint();
		}

		public function get hasSubjectId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set subjectId(value:uint):void {
			hasField$0 |= 0x2;
			subject_id$field = value;
		}

		public function get subjectId():uint {
			return subject_id$field;
		}

		/**
		 *  @private
		 */
		public static const SUBJECT_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonChapter.subject_name", "subjectName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var subject_name$field:String;

		public function clearSubjectName():void {
			subject_name$field = null;
		}

		public function get hasSubjectName():Boolean {
			return subject_name$field != null;
		}

		public function set subjectName(value:String):void {
			subject_name$field = value;
		}

		public function get subjectName():String {
			return subject_name$field;
		}

		/**
		 *  @private
		 */
		public static const CHAPTER_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.chapter_open_level", "chapterOpenLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chapter_open_level$field:int;

		public function clearChapterOpenLevel():void {
			hasField$0 &= 0xfffffffb;
			chapter_open_level$field = new int();
		}

		public function get hasChapterOpenLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set chapterOpenLevel(value:int):void {
			hasField$0 |= 0x4;
			chapter_open_level$field = value;
		}

		public function get chapterOpenLevel():int {
			return chapter_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const SINGLE_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.single_open_level", "singleOpenLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var single_open_level$field:int;

		public function clearSingleOpenLevel():void {
			hasField$0 &= 0xfffffff7;
			single_open_level$field = new int();
		}

		public function get hasSingleOpenLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set singleOpenLevel(value:int):void {
			hasField$0 |= 0x8;
			single_open_level$field = value;
		}

		public function get singleOpenLevel():int {
			return single_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.team_open_level", "teamOpenLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_open_level$field:int;

		public function clearTeamOpenLevel():void {
			hasField$0 &= 0xffffffef;
			team_open_level$field = new int();
		}

		public function get hasTeamOpenLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set teamOpenLevel(value:int):void {
			hasField$0 |= 0x10;
			team_open_level$field = value;
		}

		public function get teamOpenLevel():int {
			return team_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_DIFFICULTY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChapter.team_difficulty", "teamDifficulty", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_difficulty$field:uint;

		public function clearTeamDifficulty():void {
			hasField$0 &= 0xffffffdf;
			team_difficulty$field = new uint();
		}

		public function get hasTeamDifficulty():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set teamDifficulty(value:uint):void {
			hasField$0 |= 0x20;
			team_difficulty$field = value;
		}

		public function get teamDifficulty():uint {
			return team_difficulty$field;
		}

		/**
		 *  @private
		 */
		public static const RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonChapter.rank", "rank", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDungeonRank);

		[ArrayElementType("serverProto.guild.ProtoGuildDungeonRank")]
		public var rank:Array = [];

		/**
		 *  @private
		 */
		public static const SINGLE_ULIMIT_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.single_ulimit_level", "singleUlimitLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var single_ulimit_level$field:int;

		public function clearSingleUlimitLevel():void {
			hasField$0 &= 0xffffffbf;
			single_ulimit_level$field = new int();
		}

		public function get hasSingleUlimitLevel():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set singleUlimitLevel(value:int):void {
			hasField$0 |= 0x40;
			single_ulimit_level$field = value;
		}

		public function get singleUlimitLevel():int {
			return single_ulimit_level$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_ULIMIT_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.team_ulimit_level", "teamUlimitLevel", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_ulimit_level$field:int;

		public function clearTeamUlimitLevel():void {
			hasField$0 &= 0xffffff7f;
			team_ulimit_level$field = new int();
		}

		public function get hasTeamUlimitLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set teamUlimitLevel(value:int):void {
			hasField$0 |= 0x80;
			team_ulimit_level$field = value;
		}

		public function get teamUlimitLevel():int {
			return team_ulimit_level$field;
		}

		/**
		 *  @private
		 */
		public static const AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonChapter.awards", "awards", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDungeonAward);

		[ArrayElementType("serverProto.guild.ProtoGuildDungeonAward")]
		public var awards:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasSubjectId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, subject_id$field);
			}
			if (hasSubjectName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, subject_name$field);
			}
			if (hasChapterOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, chapter_open_level$field);
			}
			if (hasSingleOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, single_open_level$field);
			}
			if (hasTeamOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, team_open_level$field);
			}
			if (hasTeamDifficulty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, team_difficulty$field);
			}
			for (var rank$index:uint = 0; rank$index < this.rank.length; ++rank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rank[rank$index]);
			}
			if (hasSingleUlimitLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, single_ulimit_level$field);
			}
			if (hasTeamUlimitLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, team_ulimit_level$field);
			}
			for (var awards$index:uint = 0; awards$index < this.awards.length; ++awards$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awards[awards$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var name$count:uint = 0;
			var subject_id$count:uint = 0;
			var subject_name$count:uint = 0;
			var chapter_open_level$count:uint = 0;
			var single_open_level$count:uint = 0;
			var team_open_level$count:uint = 0;
			var team_difficulty$count:uint = 0;
			var single_ulimit_level$count:uint = 0;
			var team_ulimit_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (subject_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.subjectId cannot be set twice.');
					}
					++subject_id$count;
					this.subjectId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (subject_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.subjectName cannot be set twice.');
					}
					++subject_name$count;
					this.subjectName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (chapter_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.chapterOpenLevel cannot be set twice.');
					}
					++chapter_open_level$count;
					this.chapterOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (single_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.singleOpenLevel cannot be set twice.');
					}
					++single_open_level$count;
					this.singleOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (team_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.teamOpenLevel cannot be set twice.');
					}
					++team_open_level$count;
					this.teamOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (team_difficulty$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.teamDifficulty cannot be set twice.');
					}
					++team_difficulty$count;
					this.teamDifficulty = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.rank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGuildDungeonRank()));
					break;
				case 10:
					if (single_ulimit_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.singleUlimitLevel cannot be set twice.');
					}
					++single_ulimit_level$count;
					this.singleUlimitLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (team_ulimit_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChapter.teamUlimitLevel cannot be set twice.');
					}
					++team_ulimit_level$count;
					this.teamUlimitLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					this.awards.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGuildDungeonAward()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
