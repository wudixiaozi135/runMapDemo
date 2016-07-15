package serverProto.family {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDispatchNinjaChooseRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaChooseRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaChooseRsp.award_coin", "awardCoin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_coin$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwardCoin():void {
			hasField$0 &= 0xfffffffe;
			award_coin$field = new uint();
		}

		public function get hasAwardCoin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardCoin(value:uint):void {
			hasField$0 |= 0x1;
			award_coin$field = value;
		}

		public function get awardCoin():uint {
			return award_coin$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaChooseRsp.friend_level_coin", "friendLevelCoin", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_level_coin$field:uint;

		public function clearFriendLevelCoin():void {
			hasField$0 &= 0xfffffffd;
			friend_level_coin$field = new uint();
		}

		public function get hasFriendLevelCoin():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set friendLevelCoin(value:uint):void {
			hasField$0 |= 0x2;
			friend_level_coin$field = value;
		}

		public function get friendLevelCoin():uint {
			return friend_level_coin$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaChooseRsp.role_level_coin", "roleLevelCoin", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level_coin$field:uint;

		public function clearRoleLevelCoin():void {
			hasField$0 &= 0xfffffffb;
			role_level_coin$field = new uint();
		}

		public function get hasRoleLevelCoin():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set roleLevelCoin(value:uint):void {
			hasField$0 |= 0x4;
			role_level_coin$field = value;
		}

		public function get roleLevelCoin():uint {
			return role_level_coin$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasAwardCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_coin$field);
			}
			if (hasFriendLevelCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_level_coin$field);
			}
			if (hasRoleLevelCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
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
			var ret$count:uint = 0;
			var award_coin$count:uint = 0;
			var friend_level_coin$count:uint = 0;
			var role_level_coin$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaChooseRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (award_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaChooseRsp.awardCoin cannot be set twice.');
					}
					++award_coin$count;
					this.awardCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (friend_level_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaChooseRsp.friendLevelCoin cannot be set twice.');
					}
					++friend_level_coin$count;
					this.friendLevelCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (role_level_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchNinjaChooseRsp.roleLevelCoin cannot be set twice.');
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
