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
	public  final class ProtoDispatchTask extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_id", "taskId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearTaskId():void {
			hasField$0 &= 0xfffffffe;
			task_id$field = new uint();
		}

		public function get hasTaskId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set taskId(value:uint):void {
			hasField$0 |= 0x1;
			task_id$field = value;
		}

		public function get taskId():uint {
			return task_id$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoDispatchTask.task_name", "taskName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var task_name$field:String;

		public function clearTaskName():void {
			task_name$field = null;
		}

		public function get hasTaskName():Boolean {
			return task_name$field != null;
		}

		public function set taskName(value:String):void {
			task_name$field = value;
		}

		public function get taskName():String {
			return task_name$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.award_coin", "awardCoin", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_coin$field:uint;

		public function clearAwardCoin():void {
			hasField$0 &= 0xfffffffd;
			award_coin$field = new uint();
		}

		public function get hasAwardCoin():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardCoin(value:uint):void {
			hasField$0 |= 0x2;
			award_coin$field = value;
		}

		public function get awardCoin():uint {
			return award_coin$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_time", "taskTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_time$field:uint;

		public function clearTaskTime():void {
			hasField$0 &= 0xfffffffb;
			task_time$field = new uint();
		}

		public function get hasTaskTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set taskTime(value:uint):void {
			hasField$0 |= 0x4;
			task_time$field = value;
		}

		public function get taskTime():uint {
			return task_time$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_status", "taskStatus", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_status$field:uint;

		public function clearTaskStatus():void {
			hasField$0 &= 0xfffffff7;
			task_status$field = new uint();
		}

		public function get hasTaskStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set taskStatus(value:uint):void {
			hasField$0 |= 0x8;
			task_status$field = value;
		}

		public function get taskStatus():uint {
			return task_status$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_remain_time", "taskRemainTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_remain_time$field:uint;

		public function clearTaskRemainTime():void {
			hasField$0 &= 0xffffffef;
			task_remain_time$field = new uint();
		}

		public function get hasTaskRemainTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set taskRemainTime(value:uint):void {
			hasField$0 |= 0x10;
			task_remain_time$field = value;
		}

		public function get taskRemainTime():uint {
			return task_remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchTask.friend_id", "friendId", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoDispatchTask.friend_name", "friendName", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoDispatchTask.role_category", "roleCategory", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:int;

		public function clearRoleCategory():void {
			hasField$0 &= 0xffffffdf;
			role_category$field = new int();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set roleCategory(value:int):void {
			hasField$0 |= 0x20;
			role_category$field = value;
		}

		public function get roleCategory():int {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.friend_level_coin", "friendLevelCoin", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_level_coin$field:uint;

		public function clearFriendLevelCoin():void {
			hasField$0 &= 0xffffffbf;
			friend_level_coin$field = new uint();
		}

		public function get hasFriendLevelCoin():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set friendLevelCoin(value:uint):void {
			hasField$0 |= 0x40;
			friend_level_coin$field = value;
		}

		public function get friendLevelCoin():uint {
			return friend_level_coin$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.role_level_coin", "roleLevelCoin", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level_coin$field:uint;

		public function clearRoleLevelCoin():void {
			hasField$0 &= 0xffffff7f;
			role_level_coin$field = new uint();
		}

		public function get hasRoleLevelCoin():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set roleLevelCoin(value:uint):void {
			hasField$0 |= 0x80;
			role_level_coin$field = value;
		}

		public function get roleLevelCoin():uint {
			return role_level_coin$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTaskId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_id$field);
			}
			if (hasTaskName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, task_name$field);
			}
			if (hasAwardCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_coin$field);
			}
			if (hasTaskTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_time$field);
			}
			if (hasTaskStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_status$field);
			}
			if (hasTaskRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_remain_time$field);
			}
			if (hasFriendId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend_id$field);
			}
			if (hasFriendName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, friend_name$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_category$field);
			}
			if (hasFriendLevelCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_level_coin$field);
			}
			if (hasRoleLevelCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
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
			var task_id$count:uint = 0;
			var task_name$count:uint = 0;
			var award_coin$count:uint = 0;
			var task_time$count:uint = 0;
			var task_status$count:uint = 0;
			var task_remain_time$count:uint = 0;
			var friend_id$count:uint = 0;
			var friend_name$count:uint = 0;
			var role_category$count:uint = 0;
			var friend_level_coin$count:uint = 0;
			var role_level_coin$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (task_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.taskId cannot be set twice.');
					}
					++task_id$count;
					this.taskId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (task_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.taskName cannot be set twice.');
					}
					++task_name$count;
					this.taskName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (award_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.awardCoin cannot be set twice.');
					}
					++award_coin$count;
					this.awardCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (task_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.taskTime cannot be set twice.');
					}
					++task_time$count;
					this.taskTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (task_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.taskStatus cannot be set twice.');
					}
					++task_status$count;
					this.taskStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (task_remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.taskRemainTime cannot be set twice.');
					}
					++task_remain_time$count;
					this.taskRemainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (friend_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.friendId cannot be set twice.');
					}
					++friend_id$count;
					this.friendId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendId);
					break;
				case 8:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 9:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (friend_level_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.friendLevelCoin cannot be set twice.');
					}
					++friend_level_coin$count;
					this.friendLevelCoin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (role_level_coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDispatchTask.roleLevelCoin cannot be set twice.');
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
