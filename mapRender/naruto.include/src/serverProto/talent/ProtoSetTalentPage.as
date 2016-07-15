package serverProto.talent {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.talent.ProtoSetTalentGroup;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSetTalentPage extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PAGE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.page_index", "pageIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var pageIndex:uint;

		/**
		 *  @private
		 */
		public static const PAGE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.talent.ProtoSetTalentPage.page_name", "pageName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const AWAKEN_SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.awaken_skill_index", "awakenSkillIndex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awaken_skill_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwakenSkillIndex():void {
			hasField$0 &= 0xfffffffe;
			awaken_skill_index$field = new uint();
		}

		public function get hasAwakenSkillIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awakenSkillIndex(value:uint):void {
			hasField$0 |= 0x1;
			awaken_skill_index$field = value;
		}

		public function get awakenSkillIndex():uint {
			return awaken_skill_index$field;
		}

		/**
		 *  @private
		 */
		public static const COMMON_SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.common_skill_index", "commonSkillIndex", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var common_skill_index$field:uint;

		public function clearCommonSkillIndex():void {
			hasField$0 &= 0xfffffffd;
			common_skill_index$field = new uint();
		}

		public function get hasCommonSkillIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set commonSkillIndex(value:uint):void {
			hasField$0 |= 0x2;
			common_skill_index$field = value;
		}

		public function get commonSkillIndex():uint {
			return common_skill_index$field;
		}

		/**
		 *  @private
		 */
		public static const TALENT_GROUPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoSetTalentPage.talent_groups", "talentGroups", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoSetTalentGroup);

		[ArrayElementType("serverProto.talent.ProtoSetTalentGroup")]
		public var talentGroups:Array = [];

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.summon_monster_skill_index", "summonMonsterSkillIndex", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var summon_monster_skill_index$field:uint;

		public function clearSummonMonsterSkillIndex():void {
			hasField$0 &= 0xfffffffb;
			summon_monster_skill_index$field = new uint();
		}

		public function get hasSummonMonsterSkillIndex():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set summonMonsterSkillIndex(value:uint):void {
			hasField$0 |= 0x4;
			summon_monster_skill_index$field = value;
		}

		public function get summonMonsterSkillIndex():uint {
			return summon_monster_skill_index$field;
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
			if (hasAwakenSkillIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, awaken_skill_index$field);
			}
			if (hasCommonSkillIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, common_skill_index$field);
			}
			for (var talentGroups$index:uint = 0; talentGroups$index < this.talentGroups.length; ++talentGroups$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.talentGroups[talentGroups$index]);
			}
			if (hasSummonMonsterSkillIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, summon_monster_skill_index$field);
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
			var awaken_skill_index$count:uint = 0;
			var common_skill_index$count:uint = 0;
			var summon_monster_skill_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (page_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentPage.pageIndex cannot be set twice.');
					}
					++page_index$count;
					this.pageIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (page_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentPage.pageName cannot be set twice.');
					}
					++page_name$count;
					this.pageName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (awaken_skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentPage.awakenSkillIndex cannot be set twice.');
					}
					++awaken_skill_index$count;
					this.awakenSkillIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (common_skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentPage.commonSkillIndex cannot be set twice.');
					}
					++common_skill_index$count;
					this.commonSkillIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.talentGroups.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.talent.ProtoSetTalentGroup()));
					break;
				case 6:
					if (summon_monster_skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentPage.summonMonsterSkillIndex cannot be set twice.');
					}
					++summon_monster_skill_index$count;
					this.summonMonsterSkillIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
