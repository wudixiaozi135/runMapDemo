package serverProto.family {
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
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWishTreeFriendInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIEND_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWishTreeFriendInfo.friend_key", "friendKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var friend_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearFriendKey():void {
			friend_key$field = null;
		}

		public function get hasFriendKey():Boolean {
			return friend_key$field != null;
		}

		public function set friendKey(value:serverProto.inc.ProtoPlayerKey):void {
			friend_key$field = value;
		}

		public function get friendKey():serverProto.inc.ProtoPlayerKey {
			return friend_key$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoWishTreeFriendInfo.friend_name", "friendName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var friend_name$field:String;

		public function clearFriendName():void {
			friend_name$field = null;
		}

		public function get hasFriendName():Boolean {
			return friend_name$field != null;
		}

		public function set friendName(value:String):void {
			friend_name$field = value;
		}

		public function get friendName():String {
			return friend_name$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.friend_lvl", "friendLvl", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_lvl$field:uint;

		private var hasField$0:uint = 0;

		public function clearFriendLvl():void {
			hasField$0 &= 0xfffffffe;
			friend_lvl$field = new uint();
		}

		public function get hasFriendLvl():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set friendLvl(value:uint):void {
			hasField$0 |= 0x1;
			friend_lvl$field = value;
		}

		public function get friendLvl():uint {
			return friend_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_WATERING:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.can_watering", "canWatering", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_watering$field:uint;

		public function clearCanWatering():void {
			hasField$0 &= 0xfffffffd;
			can_watering$field = new uint();
		}

		public function get hasCanWatering():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set canWatering(value:uint):void {
			hasField$0 |= 0x2;
			can_watering$field = value;
		}

		public function get canWatering():uint {
			return can_watering$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.friend_degree", "friendDegree", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_degree$field:uint;

		public function clearFriendDegree():void {
			hasField$0 &= 0xfffffffb;
			friend_degree$field = new uint();
		}

		public function get hasFriendDegree():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set friendDegree(value:uint):void {
			hasField$0 |= 0x4;
			friend_degree$field = value;
		}

		public function get friendDegree():uint {
			return friend_degree$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.next_level_degree", "nextLevelDegree", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_level_degree$field:uint;

		public function clearNextLevelDegree():void {
			hasField$0 &= 0xfffffff7;
			next_level_degree$field = new uint();
		}

		public function get hasNextLevelDegree():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set nextLevelDegree(value:uint):void {
			hasField$0 |= 0x8;
			next_level_degree$field = value;
		}

		public function get nextLevelDegree():uint {
			return next_level_degree$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.family.ProtoWishTreeFriendInfo.vip_level", "vipLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xffffffef;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x10;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWishTreeFriendInfo.diamond_info", "diamondInfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
		public static const FRIEND_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.friend_level_coin", "friendLevelCoin", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_level_coin$field:uint;

		public function clearFriendLevelCoin():void {
			hasField$0 &= 0xffffffdf;
			friend_level_coin$field = new uint();
		}

		public function get hasFriendLevelCoin():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set friendLevelCoin(value:uint):void {
			hasField$0 |= 0x20;
			friend_level_coin$field = value;
		}

		public function get friendLevelCoin():uint {
			return friend_level_coin$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.role_level_coin", "roleLevelCoin", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level_coin$field:uint;

		public function clearRoleLevelCoin():void {
			hasField$0 &= 0xffffffbf;
			role_level_coin$field = new uint();
		}

		public function get hasRoleLevelCoin():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set roleLevelCoin(value:uint):void {
			hasField$0 |= 0x40;
			role_level_coin$field = value;
		}

		public function get roleLevelCoin():uint {
			return role_level_coin$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFriendKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend_key$field);
			}
			if (hasFriendName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, friend_name$field);
			}
			if (hasFriendLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_lvl$field);
			}
			if (hasCanWatering) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_watering$field);
			}
			if (hasFriendDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_degree$field);
			}
			if (hasNextLevelDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_level_degree$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasFriendLevelCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_level_coin$field);
			}
			if (hasRoleLevelCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_level_coin$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var friend_key$count:uint = 0;
			var friend_name$count:uint = 0;
			var friend_lvl$count:uint = 0;
			var can_watering$count:uint = 0;
			var friend_degree$count:uint = 0;
			var next_level_degree$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			var friend_level_coin$count:uint = 0;
			var role_level_coin$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (friend_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.friendKey cannot be set twice.');
					}
					++friend_key$count;
					this.friendKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendKey);
					break;
				case 2:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (friend_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.friendLvl cannot be set twice.');
					}
					++friend_lvl$count;
					this.friendLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (can_watering$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.canWatering cannot be set twice.');
					}
					++can_watering$count;
					this.canWatering = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (friend_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.friendDegree cannot be set twice.');
					}
					++friend_degree$count;
					this.friendDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (next_level_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.nextLevelDegree cannot be set twice.');
					}
					++next_level_degree$count;
					this.nextLevelDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 8:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 9:
					if (friend_level_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.friendLevelCoin cannot be set twice.');
					}
					++friend_level_coin$count;
					this.friendLevelCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (role_level_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeFriendInfo.roleLevelCoin cannot be set twice.');
					}
					++role_level_coin$count;
					this.roleLevelCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
