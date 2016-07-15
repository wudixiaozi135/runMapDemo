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
	import serverProto.user.ProtoVIPPrivilegeInfo;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetVIPInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoGetVIPInfoResponse.vip_level", "vipLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

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
		public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoGetVIPInfoResponse.vip_expired_time", "vipExpiredTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const VIP_REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoGetVIPInfoResponse.vip_remainder_day", "vipRemainderDay", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GENIN_PRIVILEGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.genin_privilege", "geninPrivilege", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoVIPPrivilegeInfo);

		private var genin_privilege$field:serverProto.user.ProtoVIPPrivilegeInfo;

		public function clearGeninPrivilege():void {
			genin_privilege$field = null;
		}

		public function get hasGeninPrivilege():Boolean {
			return genin_privilege$field != null;
		}

		public function set geninPrivilege(value:serverProto.user.ProtoVIPPrivilegeInfo):void {
			genin_privilege$field = value;
		}

		public function get geninPrivilege():serverProto.user.ProtoVIPPrivilegeInfo {
			return genin_privilege$field;
		}

		/**
		 *  @private
		 */
		public static const CHUNIN_PRIVILEGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.chunin_privilege", "chuninPrivilege", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoVIPPrivilegeInfo);

		private var chunin_privilege$field:serverProto.user.ProtoVIPPrivilegeInfo;

		public function clearChuninPrivilege():void {
			chunin_privilege$field = null;
		}

		public function get hasChuninPrivilege():Boolean {
			return chunin_privilege$field != null;
		}

		public function set chuninPrivilege(value:serverProto.user.ProtoVIPPrivilegeInfo):void {
			chunin_privilege$field = value;
		}

		public function get chuninPrivilege():serverProto.user.ProtoVIPPrivilegeInfo {
			return chunin_privilege$field;
		}

		/**
		 *  @private
		 */
		public static const JONIN_PRIVILEGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.jonin_privilege", "joninPrivilege", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoVIPPrivilegeInfo);

		private var jonin_privilege$field:serverProto.user.ProtoVIPPrivilegeInfo;

		public function clearJoninPrivilege():void {
			jonin_privilege$field = null;
		}

		public function get hasJoninPrivilege():Boolean {
			return jonin_privilege$field != null;
		}

		public function set joninPrivilege(value:serverProto.user.ProtoVIPPrivilegeInfo):void {
			jonin_privilege$field = value;
		}

		public function get joninPrivilege():serverProto.user.ProtoVIPPrivilegeInfo {
			return jonin_privilege$field;
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
			if (hasGeninPrivilege) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, genin_privilege$field);
			}
			if (hasChuninPrivilege) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, chunin_privilege$field);
			}
			if (hasJoninPrivilege) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, jonin_privilege$field);
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
			var genin_privilege$count:uint = 0;
			var chunin_privilege$count:uint = 0;
			var jonin_privilege$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (vip_expired_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.vipExpiredTime cannot be set twice.');
					}
					++vip_expired_time$count;
					this.vipExpiredTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (vip_remainder_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.vipRemainderDay cannot be set twice.');
					}
					++vip_remainder_day$count;
					this.vipRemainderDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (genin_privilege$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.geninPrivilege cannot be set twice.');
					}
					++genin_privilege$count;
					this.geninPrivilege = new serverProto.user.ProtoVIPPrivilegeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.geninPrivilege);
					break;
				case 6:
					if (chunin_privilege$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.chuninPrivilege cannot be set twice.');
					}
					++chunin_privilege$count;
					this.chuninPrivilege = new serverProto.user.ProtoVIPPrivilegeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.chuninPrivilege);
					break;
				case 7:
					if (jonin_privilege$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetVIPInfoResponse.joninPrivilege cannot be set twice.');
					}
					++jonin_privilege$count;
					this.joninPrivilege = new serverProto.user.ProtoVIPPrivilegeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.joninPrivilege);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
