package serverProto.family {
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
	public  final class ProtoDispatchRecord extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchRecord.friend_id", "friendId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var friend_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearFriendId():void {
			friend_id$field = null;
		}

		public function get hasFriendId():Boolean {
			return friend_id$field != null;
		}

		public function set friendId(value:serverProto.inc.ProtoPlayerKey):void {
			friend_id$field = value;
		}

		public function get friendId():serverProto.inc.ProtoPlayerKey {
			return friend_id$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoDispatchRecord.friend_name", "friendName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchRecord.award_coin", "awardCoin", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchRecord.award_status", "awardStatus", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_status$field:uint;

		public function clearAwardStatus():void {
			hasField$0 &= 0xfffffffd;
			award_status$field = new uint();
		}

		public function get hasAwardStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardStatus(value:uint):void {
			hasField$0 |= 0x2;
			award_status$field = value;
		}

		public function get awardStatus():uint {
			return award_status$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFriendId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend_id$field);
			}
			if (hasFriendName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, friend_name$field);
			}
			if (hasAwardCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_coin$field);
			}
			if (hasAwardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_status$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var friend_id$count:uint = 0;
			var friend_name$count:uint = 0;
			var award_coin$count:uint = 0;
			var award_status$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (friend_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchRecord.friendId cannot be set twice.');
					}
					++friend_id$count;
					this.friendId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendId);
					break;
				case 2:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchRecord.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (award_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchRecord.awardCoin cannot be set twice.');
					}
					++award_coin$count;
					this.awardCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchRecord.awardStatus cannot be set twice.');
					}
					++award_status$count;
					this.awardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
