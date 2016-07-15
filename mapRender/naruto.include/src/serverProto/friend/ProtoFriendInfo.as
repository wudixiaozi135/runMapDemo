package serverProto.friend {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.friend.ProtoFriendStatus;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFriendInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoFriendInfo.player_key", "playerKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var playerKey:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.friend.ProtoFriendInfo.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.friend.ProtoFriendInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.friend.ProtoFriendInfo.role_category", "roleCategory", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleCategory:int;

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.friend.ProtoFriendInfo.status", "status", (5 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.friend.ProtoFriendStatus);

		public var status:int;

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.friend.ProtoFriendInfo.team_id", "teamId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:UInt64;

		/**
		 *  @private
		 */
		public static const FRIEND_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.friend_level", "friendLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearFriendLevel():void {
			hasField$0 &= 0xfffffffe;
			friend_level$field = new uint();
		}

		public function get hasFriendLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set friendLevel(value:uint):void {
			hasField$0 |= 0x1;
			friend_level$field = value;
		}

		public function get friendLevel():uint {
			return friend_level$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.friend_degree", "friendDegree", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_degree$field:uint;

		public function clearFriendDegree():void {
			hasField$0 &= 0xfffffffd;
			friend_degree$field = new uint();
		}

		public function get hasFriendDegree():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set friendDegree(value:uint):void {
			hasField$0 |= 0x2;
			friend_degree$field = value;
		}

		public function get friendDegree():uint {
			return friend_degree$field;
		}

		/**
		 *  @private
		 */
		public static const WATERING_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.watering_status", "wateringStatus", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var watering_status$field:uint;

		public function clearWateringStatus():void {
			hasField$0 &= 0xfffffffb;
			watering_status$field = new uint();
		}

		public function get hasWateringStatus():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set wateringStatus(value:uint):void {
			hasField$0 |= 0x4;
			watering_status$field = value;
		}

		public function get wateringStatus():uint {
			return watering_status$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.friend.ProtoFriendInfo.vip_level", "vipLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffff7;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x8;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoFriendInfo.diamond_info", "diamondInfo", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var diamond_info$field:serverProto.inc.ProtoDiamondInfo;

		public function clearDiamondInfo():void {
			diamond_info$field = null;
		}

		public function get hasDiamondInfo():Boolean {
			return diamond_info$field != null;
		}

		public function set diamondInfo(value:serverProto.inc.ProtoDiamondInfo):void {
			diamond_info$field = value;
		}

		public function get diamondInfo():serverProto.inc.ProtoDiamondInfo {
			return diamond_info$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.next_level_degree", "nextLevelDegree", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_level_degree$field:uint;

		public function clearNextLevelDegree():void {
			hasField$0 &= 0xffffffef;
			next_level_degree$field = new uint();
		}

		public function get hasNextLevelDegree():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set nextLevelDegree(value:uint):void {
			hasField$0 |= 0x10;
			next_level_degree$field = value;
		}

		public function get nextLevelDegree():uint {
			return next_level_degree$field;
		}

		/**
		 *  @private
		 */
		public static const LOGOUT_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.friend.ProtoFriendInfo.logout_time", "logoutTime", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var logout_time$field:UInt64;

		public function clearLogoutTime():void {
			logout_time$field = null;
		}

		public function get hasLogoutTime():Boolean {
			return logout_time$field != null;
		}

		public function set logoutTime(value:UInt64):void {
			logout_time$field = value;
		}

		public function get logoutTime():UInt64 {
			return logout_time$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.combat_power", "combatPower", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		public function clearCombatPower():void {
			hasField$0 &= 0xffffffdf;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x20;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerKey);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.level);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleCategory);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.status);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.teamId);
			if (hasFriendLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_level$field);
			}
			if (hasFriendDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_degree$field);
			}
			if (hasWateringStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, watering_status$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasNextLevelDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_level_degree$field);
			}
			if (hasLogoutTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, logout_time$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_key$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var role_category$count:uint = 0;
			var status$count:uint = 0;
			var team_id$count:uint = 0;
			var friend_level$count:uint = 0;
			var friend_degree$count:uint = 0;
			var watering_status$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			var next_level_degree$count:uint = 0;
			var logout_time$count:uint = 0;
			var combat_power$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 6:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 7:
					if (friend_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.friendLevel cannot be set twice.');
					}
					++friend_level$count;
					this.friendLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (friend_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.friendDegree cannot be set twice.');
					}
					++friend_degree$count;
					this.friendDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (watering_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.wateringStatus cannot be set twice.');
					}
					++watering_status$count;
					this.wateringStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 11:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 12:
					if (next_level_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.nextLevelDegree cannot be set twice.');
					}
					++next_level_degree$count;
					this.nextLevelDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (logout_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.logoutTime cannot be set twice.');
					}
					++logout_time$count;
					this.logoutTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 14:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendInfo.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
