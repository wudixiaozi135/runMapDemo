package serverProto.promote {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.promote.ProtoNinjaPromoteInfo;
	import serverProto.promote.ProtoProgressBar;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetPromoteInfoResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TOTAL_COMBAT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoGetPromoteInfoResp.total_combat", "totalCombat", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_combat$field:int;

		private var hasField$0:uint = 0;

		public function clearTotalCombat():void {
			hasField$0 &= 0xfffffffe;
			total_combat$field = new int();
		}

		public function get hasTotalCombat():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalCombat(value:int):void {
			hasField$0 |= 0x1;
			total_combat$field = value;
		}

		public function get totalCombat():int {
			return total_combat$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.ninja_props_progress", "ninjaPropsProgress", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var ninja_props_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearNinjaPropsProgress():void {
			ninja_props_progress$field = null;
		}

		public function get hasNinjaPropsProgress():Boolean {
			return ninja_props_progress$field != null;
		}

		public function set ninjaPropsProgress(value:serverProto.promote.ProtoProgressBar):void {
			ninja_props_progress$field = value;
		}

		public function get ninjaPropsProgress():serverProto.promote.ProtoProgressBar {
			return ninja_props_progress$field;
		}

		/**
		 *  @private
		 */
		public static const HUNT_LIFE_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.hunt_life_progress", "huntLifeProgress", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var hunt_life_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearHuntLifeProgress():void {
			hunt_life_progress$field = null;
		}

		public function get hasHuntLifeProgress():Boolean {
			return hunt_life_progress$field != null;
		}

		public function set huntLifeProgress(value:serverProto.promote.ProtoProgressBar):void {
			hunt_life_progress$field = value;
		}

		public function get huntLifeProgress():serverProto.promote.ProtoProgressBar {
			return hunt_life_progress$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_SKILL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.guild_skill_progress", "guildSkillProgress", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var guild_skill_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearGuildSkillProgress():void {
			guild_skill_progress$field = null;
		}

		public function get hasGuildSkillProgress():Boolean {
			return guild_skill_progress$field != null;
		}

		public function set guildSkillProgress(value:serverProto.promote.ProtoProgressBar):void {
			guild_skill_progress$field = value;
		}

		public function get guildSkillProgress():serverProto.promote.ProtoProgressBar {
			return guild_skill_progress$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_PROMOTE_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.role_promote_progress", "rolePromoteProgress", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var role_promote_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearRolePromoteProgress():void {
			role_promote_progress$field = null;
		}

		public function get hasRolePromoteProgress():Boolean {
			return role_promote_progress$field != null;
		}

		public function set rolePromoteProgress(value:serverProto.promote.ProtoProgressBar):void {
			role_promote_progress$field = value;
		}

		public function get rolePromoteProgress():serverProto.promote.ProtoProgressBar {
			return role_promote_progress$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_PROMOTE_INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.ninja_promote_info_list", "ninjaPromoteInfoList", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoNinjaPromoteInfo);

		[ArrayElementType("serverProto.promote.ProtoNinjaPromoteInfo")]
		public var ninjaPromoteInfoList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasTotalCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, total_combat$field);
			}
			if (hasNinjaPropsProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_props_progress$field);
			}
			if (hasHuntLifeProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, hunt_life_progress$field);
			}
			if (hasGuildSkillProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, guild_skill_progress$field);
			}
			if (hasRolePromoteProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, role_promote_progress$field);
			}
			for (var ninjaPromoteInfoList$index:uint = 0; ninjaPromoteInfoList$index < this.ninjaPromoteInfoList.length; ++ninjaPromoteInfoList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaPromoteInfoList[ninjaPromoteInfoList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var total_combat$count:uint = 0;
			var ninja_props_progress$count:uint = 0;
			var hunt_life_progress$count:uint = 0;
			var guild_skill_progress$count:uint = 0;
			var role_promote_progress$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPromoteInfoResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (total_combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPromoteInfoResp.totalCombat cannot be set twice.');
					}
					++total_combat$count;
					this.totalCombat = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (ninja_props_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPromoteInfoResp.ninjaPropsProgress cannot be set twice.');
					}
					++ninja_props_progress$count;
					this.ninjaPropsProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaPropsProgress);
					break;
				case 4:
					if (hunt_life_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPromoteInfoResp.huntLifeProgress cannot be set twice.');
					}
					++hunt_life_progress$count;
					this.huntLifeProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.huntLifeProgress);
					break;
				case 5:
					if (guild_skill_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPromoteInfoResp.guildSkillProgress cannot be set twice.');
					}
					++guild_skill_progress$count;
					this.guildSkillProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.guildSkillProgress);
					break;
				case 6:
					if (role_promote_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPromoteInfoResp.rolePromoteProgress cannot be set twice.');
					}
					++role_promote_progress$count;
					this.rolePromoteProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rolePromoteProgress);
					break;
				case 7:
					this.ninjaPromoteInfoList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.promote.ProtoNinjaPromoteInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
