package serverProto.friend {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFriendRecommendInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoFriendRecommendInfo.player_key", "playerKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var playerKey:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.friend.ProtoFriendRecommendInfo.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.friend.ProtoFriendRecommendInfo.role_category", "roleCategory", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleCategory:int;

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.friend.ProtoFriendRecommendInfo.role_level", "roleLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level$field:int;

		private var hasField$0:uint = 0;

		public function clearRoleLevel():void {
			hasField$0 &= 0xfffffffe;
			role_level$field = new int();
		}

		public function get hasRoleLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleLevel(value:int):void {
			hasField$0 |= 0x1;
			role_level$field = value;
		}

		public function get roleLevel():int {
			return role_level$field;
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
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleCategory);
			if (hasRoleLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_level$field);
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
			var role_category$count:uint = 0;
			var role_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendRecommendInfo.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendRecommendInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendRecommendInfo.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (role_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendRecommendInfo.roleLevel cannot be set twice.');
					}
					++role_level$count;
					this.roleLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
