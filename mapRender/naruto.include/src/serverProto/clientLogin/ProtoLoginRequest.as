package serverProto.clientLogin {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoTGPInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoLoginRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SOURCE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.source", "source", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var source:String;

		/**
		 *  @private
		 */
		public static const ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginRequest.role_id", "roleId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearRoleId():void {
			hasField$0 &= 0xfffffffe;
			role_id$field = new uint();
		}

		public function get hasRoleId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleId(value:uint):void {
			hasField$0 |= 0x1;
			role_id$field = value;
		}

		public function get roleId():uint {
			return role_id$field;
		}

		/**
		 *  @private
		 */
		public static const CHANNEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginRequest.channel", "channel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var channel$field:uint;

		public function clearChannel():void {
			hasField$0 &= 0xfffffffd;
			channel$field = new uint();
		}

		public function get hasChannel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set channel(value:uint):void {
			hasField$0 |= 0x2;
			channel$field = value;
		}

		public function get channel():uint {
			return channel$field;
		}

		/**
		 *  @private
		 */
		public static const VERSION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.version", "version", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var version$field:String;

		public function clearVersion():void {
			version$field = null;
		}

		public function get hasVersion():Boolean {
			return version$field != null;
		}

		public function set version(value:String):void {
			version$field = value;
		}

		public function get version():String {
			return version$field;
		}

		/**
		 *  @private
		 */
		public static const SKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.skey", "skey", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var skey$field:String;

		public function clearSkey():void {
			skey$field = null;
		}

		public function get hasSkey():Boolean {
			return skey$field != null;
		}

		public function set skey(value:String):void {
			skey$field = value;
		}

		public function get skey():String {
			return skey$field;
		}

		/**
		 *  @private
		 */
		public static const PRIVILEGE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.privilege", "privilege", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var privilege$field:String;

		public function clearPrivilege():void {
			privilege$field = null;
		}

		public function get hasPrivilege():Boolean {
			return privilege$field != null;
		}

		public function set privilege(value:String):void {
			privilege$field = value;
		}

		public function get privilege():String {
			return privilege$field;
		}

		/**
		 *  @private
		 */
		public static const TGP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginRequest.tgp_info", "tgpInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoTGPInfo);

		private var tgp_info$field:serverProto.inc.ProtoTGPInfo;

		public function clearTgpInfo():void {
			tgp_info$field = null;
		}

		public function get hasTgpInfo():Boolean {
			return tgp_info$field != null;
		}

		public function set tgpInfo(value:serverProto.inc.ProtoTGPInfo):void {
			tgp_info$field = value;
		}

		public function get tgpInfo():serverProto.inc.ProtoTGPInfo {
			return tgp_info$field;
		}

		/**
		 *  @private
		 */
		public static const XY_CHANNEL:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.xy_channel", "xyChannel", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var xy_channel$field:String;

		public function clearXyChannel():void {
			xy_channel$field = null;
		}

		public function get hasXyChannel():Boolean {
			return xy_channel$field != null;
		}

		public function set xyChannel(value:String):void {
			xy_channel$field = value;
		}

		public function get xyChannel():String {
			return xy_channel$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.source);
			if (hasRoleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_id$field);
			}
			if (hasChannel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, channel$field);
			}
			if (hasVersion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, version$field);
			}
			if (hasSkey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, skey$field);
			}
			if (hasPrivilege) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, privilege$field);
			}
			if (hasTgpInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, tgp_info$field);
			}
			if (hasXyChannel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, xy_channel$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var source$count:uint = 0;
			var role_id$count:uint = 0;
			var channel$count:uint = 0;
			var version$count:uint = 0;
			var skey$count:uint = 0;
			var privilege$count:uint = 0;
			var tgp_info$count:uint = 0;
			var xy_channel$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (source$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.source cannot be set twice.');
					}
					++source$count;
					this.source = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (role_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.roleId cannot be set twice.');
					}
					++role_id$count;
					this.roleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (channel$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.channel cannot be set twice.');
					}
					++channel$count;
					this.channel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (version$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.version cannot be set twice.');
					}
					++version$count;
					this.version = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (skey$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.skey cannot be set twice.');
					}
					++skey$count;
					this.skey = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (privilege$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.privilege cannot be set twice.');
					}
					++privilege$count;
					this.privilege = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (tgp_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.tgpInfo cannot be set twice.');
					}
					++tgp_info$count;
					this.tgpInfo = new serverProto.inc.ProtoTGPInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.tgpInfo);
					break;
				case 8:
					if (xy_channel$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginRequest.xyChannel cannot be set twice.');
					}
					++xy_channel$count;
					this.xyChannel = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
