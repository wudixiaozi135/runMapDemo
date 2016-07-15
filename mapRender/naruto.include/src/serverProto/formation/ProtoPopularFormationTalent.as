package serverProto.formation {
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
	public  final class ProtoPopularFormationTalent extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PAGE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.formation.ProtoPopularFormationTalent.page_name", "pageName", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const CHOSEN_AWAKEN_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationTalent.chosen_awaken_skill", "chosenAwakenSkill", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chosen_awaken_skill$field:uint;

		private var hasField$0:uint = 0;

		public function clearChosenAwakenSkill():void {
			hasField$0 &= 0xfffffffe;
			chosen_awaken_skill$field = new uint();
		}

		public function get hasChosenAwakenSkill():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set chosenAwakenSkill(value:uint):void {
			hasField$0 |= 0x1;
			chosen_awaken_skill$field = value;
		}

		public function get chosenAwakenSkill():uint {
			return chosen_awaken_skill$field;
		}

		/**
		 *  @private
		 */
		public static const CHOSEN_COMMON_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationTalent.chosen_common_skill", "chosenCommonSkill", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chosen_common_skill$field:uint;

		public function clearChosenCommonSkill():void {
			hasField$0 &= 0xfffffffd;
			chosen_common_skill$field = new uint();
		}

		public function get hasChosenCommonSkill():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set chosenCommonSkill(value:uint):void {
			hasField$0 |= 0x2;
			chosen_common_skill$field = value;
		}

		public function get chosenCommonSkill():uint {
			return chosen_common_skill$field;
		}

		/**
		 *  @private
		 */
		public static const CHOSEN_TALENT_SKILLS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationTalent.chosen_talent_skills", "chosenTalentSkills", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var chosenTalentSkills:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPageName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, page_name$field);
			}
			if (hasChosenAwakenSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chosen_awaken_skill$field);
			}
			if (hasChosenCommonSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chosen_common_skill$field);
			}
			for (var chosenTalentSkills$index:uint = 0; chosenTalentSkills$index < this.chosenTalentSkills.length; ++chosenTalentSkills$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.chosenTalentSkills[chosenTalentSkills$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var page_name$count:uint = 0;
			var chosen_awaken_skill$count:uint = 0;
			var chosen_common_skill$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (page_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationTalent.pageName cannot be set twice.');
					}
					++page_name$count;
					this.pageName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (chosen_awaken_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationTalent.chosenAwakenSkill cannot be set twice.');
					}
					++chosen_awaken_skill$count;
					this.chosenAwakenSkill = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (chosen_common_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationTalent.chosenCommonSkill cannot be set twice.');
					}
					++chosen_common_skill$count;
					this.chosenCommonSkill = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.chosenTalentSkills);
						break;
					}
					this.chosenTalentSkills.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
