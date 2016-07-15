package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.inc.GuildMemberIdentity;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFenpeiRecord extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoFenpeiRecord.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoFenpeiRecord.player_name", "playerName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var player_name$field:String;

		public function clearPlayerName():void {
			player_name$field = null;
		}

		public function get hasPlayerName():Boolean {
			return player_name$field != null;
		}

		public function set playerName(value:String):void {
			player_name$field = value;
		}

		public function get playerName():String {
			return player_name$field;
		}

		/**
		 *  @private
		 */
		public static const IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoFenpeiRecord.identity", "identity", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.GuildMemberIdentity);

		private var identity$field:int;

		private var hasField$0:uint = 0;

		public function clearIdentity():void {
			hasField$0 &= 0xfffffffe;
			identity$field = new int();
		}

		public function get hasIdentity():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set identity(value:int):void {
			hasField$0 |= 0x1;
			identity$field = value;
		}

		public function get identity():int {
			return identity$field;
		}

		/**
		 *  @private
		 */
		public static const JOIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoFenpeiRecord.join_count", "joinCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var join_count$field:uint;

		public function clearJoinCount():void {
			hasField$0 &= 0xfffffffd;
			join_count$field = new uint();
		}

		public function get hasJoinCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set joinCount(value:uint):void {
			hasField$0 |= 0x2;
			join_count$field = value;
		}

		public function get joinCount():uint {
			return join_count$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoFenpeiRecord.item_id", "itemId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_id$field:uint;

		public function clearItemId():void {
			hasField$0 &= 0xfffffffb;
			item_id$field = new uint();
		}

		public function get hasItemId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set itemId(value:uint):void {
			hasField$0 |= 0x4;
			item_id$field = value;
		}

		public function get itemId():uint {
			return item_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_name$field);
			}
			if (hasIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, identity$field);
			}
			if (hasJoinCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, join_count$field);
			}
			if (hasItemId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, item_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_id$count:uint = 0;
			var player_name$count:uint = 0;
			var identity$count:uint = 0;
			var join_count$count:uint = 0;
			var item_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFenpeiRecord.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFenpeiRecord.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFenpeiRecord.identity cannot be set twice.');
					}
					++identity$count;
					this.identity = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (join_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFenpeiRecord.joinCount cannot be set twice.');
					}
					++join_count$count;
					this.joinCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFenpeiRecord.itemId cannot be set twice.');
					}
					++item_id$count;
					this.itemId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
