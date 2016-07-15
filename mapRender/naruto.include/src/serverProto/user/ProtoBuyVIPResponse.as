package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBuyVIPResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoBuyVIPResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoBuyVIPResponse.vip_level", "vipLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		private var hasField$0:uint = 0;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffffe;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x1;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoBuyVIPResponse.vip_expired_time", "vipExpiredTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_expired_time$field:uint;

		public function clearVipExpiredTime():void {
			hasField$0 &= 0xfffffffd;
			vip_expired_time$field = new uint();
		}

		public function get hasVipExpiredTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set vipExpiredTime(value:uint):void {
			hasField$0 |= 0x2;
			vip_expired_time$field = value;
		}

		public function get vipExpiredTime():uint {
			return vip_expired_time$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoBuyVIPResponse.vip_remainder_day", "vipRemainderDay", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_remainder_day$field:uint;

		public function clearVipRemainderDay():void {
			hasField$0 &= 0xfffffffb;
			vip_remainder_day$field = new uint();
		}

		public function get hasVipRemainderDay():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set vipRemainderDay(value:uint):void {
			hasField$0 |= 0x4;
			vip_remainder_day$field = value;
		}

		public function get vipRemainderDay():uint {
			return vip_remainder_day$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_GET_FIRST_REWARD:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoBuyVIPResponse.can_get_first_reward", "canGetFirstReward", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_get_first_reward$field:Boolean;

		public function clearCanGetFirstReward():void {
			hasField$0 &= 0xfffffff7;
			can_get_first_reward$field = new Boolean();
		}

		public function get hasCanGetFirstReward():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set canGetFirstReward(value:Boolean):void {
			hasField$0 |= 0x8;
			can_get_first_reward$field = value;
		}

		public function get canGetFirstReward():Boolean {
			return can_get_first_reward$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasVipExpiredTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_expired_time$field);
			}
			if (hasVipRemainderDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_remainder_day$field);
			}
			if (hasCanGetFirstReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, can_get_first_reward$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var vip_level$count:uint = 0;
			var vip_expired_time$count:uint = 0;
			var vip_remainder_day$count:uint = 0;
			var can_get_first_reward$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyVIPResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyVIPResponse.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (vip_expired_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyVIPResponse.vipExpiredTime cannot be set twice.');
					}
					++vip_expired_time$count;
					this.vipExpiredTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (vip_remainder_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyVIPResponse.vipRemainderDay cannot be set twice.');
					}
					++vip_remainder_day$count;
					this.vipRemainderDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (can_get_first_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyVIPResponse.canGetFirstReward cannot be set twice.');
					}
					++can_get_first_reward$count;
					this.canGetFirstReward = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
