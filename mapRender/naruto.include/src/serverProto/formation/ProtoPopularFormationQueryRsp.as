package serverProto.formation {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.baseInfo.ProtoNinjaInfo;
	import serverProto.formationBase.ProtoFormationInfo;
	import serverProto.formation.ProtoPopularFormationTalent;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPopularFormationQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.player_id", "playerId", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerId():void {
			player_id$field = null;
		}

		public function get hasPlayerId():Boolean {
			return player_id$field != null;
		}

		public function set playerId(value:serverProto.inc.ProtoPlayerKey):void {
			player_id$field = value;
		}

		public function get playerId():serverProto.inc.ProtoPlayerKey {
			return player_id$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.formation.ProtoPopularFormationQueryRsp.role_name", "roleName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var role_name$field:String;

		public function clearRoleName():void {
			role_name$field = null;
		}

		public function get hasRoleName():Boolean {
			return role_name$field != null;
		}

		public function set roleName(value:String):void {
			role_name$field = value;
		}

		public function get roleName():String {
			return role_name$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.role_level", "roleLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearRoleLevel():void {
			hasField$0 &= 0xfffffffe;
			role_level$field = new uint();
		}

		public function get hasRoleLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleLevel(value:uint):void {
			hasField$0 |= 0x1;
			role_level$field = value;
		}

		public function get roleLevel():uint {
			return role_level$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.role_category", "roleCategory", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:uint;

		public function clearRoleCategory():void {
			hasField$0 &= 0xfffffffd;
			role_category$field = new uint();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roleCategory(value:uint):void {
			hasField$0 |= 0x2;
			role_category$field = value;
		}

		public function get roleCategory():uint {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.formation.ProtoPopularFormationQueryRsp.guild_name", "guildName", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var guild_name$field:String;

		public function clearGuildName():void {
			guild_name$field = null;
		}

		public function get hasGuildName():Boolean {
			return guild_name$field != null;
		}

		public function set guildName(value:String):void {
			guild_name$field = value;
		}

		public function get guildName():String {
			return guild_name$field;
		}

		/**
		 *  @private
		 */
		public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.rank", "rank", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank$field:uint;

		public function clearRank():void {
			hasField$0 &= 0xfffffffb;
			rank$field = new uint();
		}

		public function get hasRank():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set rank(value:uint):void {
			hasField$0 |= 0x4;
			rank$field = value;
		}

		public function get rank():uint {
			return rank$field;
		}

		/**
		 *  @private
		 */
		public static const CHECK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.check_status", "checkStatus", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var check_status$field:uint;

		public function clearCheckStatus():void {
			hasField$0 &= 0xfffffff7;
			check_status$field = new uint();
		}

		public function get hasCheckStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set checkStatus(value:uint):void {
			hasField$0 |= 0x8;
			check_status$field = value;
		}

		public function get checkStatus():uint {
			return check_status$field;
		}

		/**
		 *  @private
		 */
		public static const FORMATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.formation", "formation", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var formation$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearFormation():void {
			formation$field = null;
		}

		public function get hasFormation():Boolean {
			return formation$field != null;
		}

		public function set formation(value:serverProto.formationBase.ProtoFormationInfo):void {
			formation$field = value;
		}

		public function get formation():serverProto.formationBase.ProtoFormationInfo {
			return formation$field;
		}

		/**
		 *  @private
		 */
		public static const TALENT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.talent", "talent", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formation.ProtoPopularFormationTalent);

		private var talent$field:serverProto.formation.ProtoPopularFormationTalent;

		public function clearTalent():void {
			talent$field = null;
		}

		public function get hasTalent():Boolean {
			return talent$field != null;
		}

		public function set talent(value:serverProto.formation.ProtoPopularFormationTalent):void {
			talent$field = value;
		}

		public function get talent():serverProto.formation.ProtoPopularFormationTalent {
			return talent$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.ninja_info", "ninjaInfo", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		[ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
		public var ninjaInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasRoleName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, role_name$field);
			}
			if (hasRoleLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_level$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_category$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			if (hasRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rank$field);
			}
			if (hasCheckStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, check_status$field);
			}
			if (hasFormation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, formation$field);
			}
			if (hasTalent) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, talent$field);
			}
			for (var ninjaInfo$index:uint = 0; ninjaInfo$index < this.ninjaInfo.length; ++ninjaInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaInfo[ninjaInfo$index]);
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
			var player_id$count:uint = 0;
			var role_name$count:uint = 0;
			var role_level$count:uint = 0;
			var role_category$count:uint = 0;
			var guild_name$count:uint = 0;
			var rank$count:uint = 0;
			var check_status$count:uint = 0;
			var formation$count:uint = 0;
			var talent$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 3:
					if (role_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.roleName cannot be set twice.');
					}
					++role_name$count;
					this.roleName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (role_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.roleLevel cannot be set twice.');
					}
					++role_level$count;
					this.roleLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.rank cannot be set twice.');
					}
					++rank$count;
					this.rank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (check_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.checkStatus cannot be set twice.');
					}
					++check_status$count;
					this.checkStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (formation$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.formation cannot be set twice.');
					}
					++formation$count;
					this.formation = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formation);
					break;
				case 10:
					if (talent$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPopularFormationQueryRsp.talent cannot be set twice.');
					}
					++talent$count;
					this.talent = new serverProto.formation.ProtoPopularFormationTalent();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.talent);
					break;
				case 11:
					this.ninjaInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoNinjaInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
