package serverProto.clientLogin {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.user.ProtoPlayerInfo;
	import serverProto.user.ProtoSecondaryPasswordInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoLoginResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CHANNEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginResponse.channel", "channel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var channel$field:uint;

		private var hasField$0:uint = 0;

		public function clearChannel():void {
			hasField$0 &= 0xfffffffe;
			channel$field = new uint();
		}

		public function get hasChannel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set channel(value:uint):void {
			hasField$0 |= 0x1;
			channel$field = value;
		}

		public function get channel():uint {
			return channel$field;
		}

		/**
		 *  @private
		 */
		public static const SCENE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginResponse.scene", "scene", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene$field:uint;

		public function clearScene():void {
			hasField$0 &= 0xfffffffd;
			scene$field = new uint();
		}

		public function get hasScene():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set scene(value:uint):void {
			hasField$0 |= 0x2;
			scene$field = value;
		}

		public function get scene():uint {
			return scene$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginResponse.player", "player", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoPlayerInfo);

		private var player$field:serverProto.user.ProtoPlayerInfo;

		public function clearPlayer():void {
			player$field = null;
		}

		public function get hasPlayer():Boolean {
			return player$field != null;
		}

		public function set player(value:serverProto.user.ProtoPlayerInfo):void {
			player$field = value;
		}

		public function get player():serverProto.user.ProtoPlayerInfo {
			return player$field;
		}

		/**
		 *  @private
		 */
		public static const FROM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginResponse.from", "from", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var from$field:uint;

		public function clearFrom():void {
			hasField$0 &= 0xfffffffb;
			from$field = new uint();
		}

		public function get hasFrom():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set from(value:uint):void {
			hasField$0 |= 0x4;
			from$field = value;
		}

		public function get from():uint {
			return from$field;
		}

		/**
		 *  @private
		 */
		public static const SECONDARY_PASSWORD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginResponse.secondary_password_info", "secondaryPasswordInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoSecondaryPasswordInfo);

		private var secondary_password_info$field:serverProto.user.ProtoSecondaryPasswordInfo;

		public function clearSecondaryPasswordInfo():void {
			secondary_password_info$field = null;
		}

		public function get hasSecondaryPasswordInfo():Boolean {
			return secondary_password_info$field != null;
		}

		public function set secondaryPasswordInfo(value:serverProto.user.ProtoSecondaryPasswordInfo):void {
			secondary_password_info$field = value;
		}

		public function get secondaryPasswordInfo():serverProto.user.ProtoSecondaryPasswordInfo {
			return secondary_password_info$field;
		}

		/**
		 *  @private
		 */
		public static const IS_MERGED_SERVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.clientLogin.ProtoLoginResponse.is_merged_server", "isMergedServer", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_merged_server$field:Boolean;

		public function clearIsMergedServer():void {
			hasField$0 &= 0xfffffff7;
			is_merged_server$field = new Boolean();
		}

		public function get hasIsMergedServer():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set isMergedServer(value:Boolean):void {
			hasField$0 |= 0x8;
			is_merged_server$field = value;
		}

		public function get isMergedServer():Boolean {
			return is_merged_server$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasChannel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, channel$field);
			}
			if (hasScene) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, scene$field);
			}
			if (hasPlayer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player$field);
			}
			if (hasFrom) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, from$field);
			}
			if (hasSecondaryPasswordInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, secondary_password_info$field);
			}
			if (hasIsMergedServer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_merged_server$field);
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
			var channel$count:uint = 0;
			var scene$count:uint = 0;
			var player$count:uint = 0;
			var from$count:uint = 0;
			var secondary_password_info$count:uint = 0;
			var is_merged_server$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 3:
					if (channel$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.channel cannot be set twice.');
					}
					++channel$count;
					this.channel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (scene$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.scene cannot be set twice.');
					}
					++scene$count;
					this.scene = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.player cannot be set twice.');
					}
					++player$count;
					this.player = new serverProto.user.ProtoPlayerInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.player);
					break;
				case 6:
					if (from$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.from cannot be set twice.');
					}
					++from$count;
					this.from = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (secondary_password_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.secondaryPasswordInfo cannot be set twice.');
					}
					++secondary_password_info$count;
					this.secondaryPasswordInfo = new serverProto.user.ProtoSecondaryPasswordInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.secondaryPasswordInfo);
					break;
				case 8:
					if (is_merged_server$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLoginResponse.isMergedServer cannot be set twice.');
					}
					++is_merged_server$count;
					this.isMergedServer = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
