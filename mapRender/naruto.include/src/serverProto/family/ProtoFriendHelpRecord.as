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
	public  final class ProtoFriendHelpRecord extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoFriendHelpRecord.friend_id", "friendId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoFriendHelpRecord.friend_name", "friendName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GROWTH_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoFriendHelpRecord.growth_value", "growthValue", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_value$field:int;

		private var hasField$0:uint = 0;

		public function clearGrowthValue():void {
			hasField$0 &= 0xfffffffe;
			growth_value$field = new int();
		}

		public function get hasGrowthValue():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set growthValue(value:int):void {
			hasField$0 |= 0x1;
			growth_value$field = value;
		}

		public function get growthValue():int {
			return growth_value$field;
		}

		/**
		 *  @private
		 */
		public static const HELP_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoFriendHelpRecord.help_flag", "helpFlag", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var help_flag$field:int;

		public function clearHelpFlag():void {
			hasField$0 &= 0xfffffffd;
			help_flag$field = new int();
		}

		public function get hasHelpFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set helpFlag(value:int):void {
			hasField$0 |= 0x2;
			help_flag$field = value;
		}

		public function get helpFlag():int {
			return help_flag$field;
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
			if (hasGrowthValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, growth_value$field);
			}
			if (hasHelpFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, help_flag$field);
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
			var growth_value$count:uint = 0;
			var help_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (friend_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendHelpRecord.friendId cannot be set twice.');
					}
					++friend_id$count;
					this.friendId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendId);
					break;
				case 2:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendHelpRecord.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (growth_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendHelpRecord.growthValue cannot be set twice.');
					}
					++growth_value$count;
					this.growthValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (help_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFriendHelpRecord.helpFlag cannot be set twice.');
					}
					++help_flag$count;
					this.helpFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
