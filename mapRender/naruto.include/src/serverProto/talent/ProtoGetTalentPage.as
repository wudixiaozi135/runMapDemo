package serverProto.talent {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.talent.ProtoTalentSkillRow;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTalentPage extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PAGE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoGetTalentPage.page_index", "pageIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var pageIndex:uint;

		/**
		 *  @private
		 */
		public static const PAGE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.talent.ProtoGetTalentPage.page_name", "pageName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var page_name$field:String;

		public function clearPageName():void {
			page_name$field = null;
		}

		public function get hasPageName():Boolean {
			return page_name$field != null;
		}

		public function set pageName(value:String):void {
			page_name$field = value;
		}

		public function get pageName():String {
			return page_name$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKEN_GROUP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.awaken_group", "awakenGroup", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoTalentSkillRow);

		private var awaken_group$field:serverProto.talent.ProtoTalentSkillRow;

		public function clearAwakenGroup():void {
			awaken_group$field = null;
		}

		public function get hasAwakenGroup():Boolean {
			return awaken_group$field != null;
		}

		public function set awakenGroup(value:serverProto.talent.ProtoTalentSkillRow):void {
			awaken_group$field = value;
		}

		public function get awakenGroup():serverProto.talent.ProtoTalentSkillRow {
			return awaken_group$field;
		}

		/**
		 *  @private
		 */
		public static const COMMON_GROUP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.common_group", "commonGroup", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoTalentSkillRow);

		private var common_group$field:serverProto.talent.ProtoTalentSkillRow;

		public function clearCommonGroup():void {
			common_group$field = null;
		}

		public function get hasCommonGroup():Boolean {
			return common_group$field != null;
		}

		public function set commonGroup(value:serverProto.talent.ProtoTalentSkillRow):void {
			common_group$field = value;
		}

		public function get commonGroup():serverProto.talent.ProtoTalentSkillRow {
			return common_group$field;
		}

		/**
		 *  @private
		 */
		public static const TALENT_GROUPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.talent_groups", "talentGroups", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoTalentSkillRow);

		[ArrayElementType("serverProto.talent.ProtoTalentSkillRow")]
		public var talentGroups:Array = [];

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_GROUPS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.summon_monster_groups", "summonMonsterGroups", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoTalentSkillRow);

		private var summon_monster_groups$field:serverProto.talent.ProtoTalentSkillRow;

		public function clearSummonMonsterGroups():void {
			summon_monster_groups$field = null;
		}

		public function get hasSummonMonsterGroups():Boolean {
			return summon_monster_groups$field != null;
		}

		public function set summonMonsterGroups(value:serverProto.talent.ProtoTalentSkillRow):void {
			summon_monster_groups$field = value;
		}

		public function get summonMonsterGroups():serverProto.talent.ProtoTalentSkillRow {
			return summon_monster_groups$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.pageIndex);
			if (hasPageName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, page_name$field);
			}
			if (hasAwakenGroup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, awaken_group$field);
			}
			if (hasCommonGroup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, common_group$field);
			}
			for (var talentGroups$index:uint = 0; talentGroups$index < this.talentGroups.length; ++talentGroups$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.talentGroups[talentGroups$index]);
			}
			if (hasSummonMonsterGroups) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, summon_monster_groups$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var page_index$count:uint = 0;
			var page_name$count:uint = 0;
			var awaken_group$count:uint = 0;
			var common_group$count:uint = 0;
			var summon_monster_groups$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (page_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentPage.pageIndex cannot be set twice.');
					}
					++page_index$count;
					this.pageIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (page_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentPage.pageName cannot be set twice.');
					}
					++page_name$count;
					this.pageName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (awaken_group$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentPage.awakenGroup cannot be set twice.');
					}
					++awaken_group$count;
					this.awakenGroup = new serverProto.talent.ProtoTalentSkillRow();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awakenGroup);
					break;
				case 4:
					if (common_group$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentPage.commonGroup cannot be set twice.');
					}
					++common_group$count;
					this.commonGroup = new serverProto.talent.ProtoTalentSkillRow();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.commonGroup);
					break;
				case 5:
					this.talentGroups.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.talent.ProtoTalentSkillRow()));
					break;
				case 6:
					if (summon_monster_groups$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentPage.summonMonsterGroups cannot be set twice.');
					}
					++summon_monster_groups$count;
					this.summonMonsterGroups = new serverProto.talent.ProtoTalentSkillRow();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.summonMonsterGroups);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
