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
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.family.ProtoSendFlowerAwardList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSendFlowerQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerQueryRsp.friend_id", "friendId", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerQueryRsp.friend_name", "friendName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const FRIEND_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.friend_level", "friendLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearFriendLevel():void {
			hasField$0 &= 0xfffffffe;
			friend_level$field = new uint();
		}

		public function get hasFriendLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set friendLevel(value:uint):void {
			hasField$0 |= 0x1;
			friend_level$field = value;
		}

		public function get friendLevel():uint {
			return friend_level$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.friend_category", "friendCategory", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_category$field:uint;

		public function clearFriendCategory():void {
			hasField$0 &= 0xfffffffd;
			friend_category$field = new uint();
		}

		public function get hasFriendCategory():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set friendCategory(value:uint):void {
			hasField$0 |= 0x2;
			friend_category$field = value;
		}

		public function get friendCategory():uint {
			return friend_category$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.friend_degree", "friendDegree", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var friend_degree$field:uint;

		public function clearFriendDegree():void {
			hasField$0 &= 0xfffffffb;
			friend_degree$field = new uint();
		}

		public function get hasFriendDegree():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set friendDegree(value:uint):void {
			hasField$0 |= 0x4;
			friend_degree$field = value;
		}

		public function get friendDegree():uint {
			return friend_degree$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.next_level_degree", "nextLevelDegree", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_level_degree$field:uint;

		public function clearNextLevelDegree():void {
			hasField$0 &= 0xfffffff7;
			next_level_degree$field = new uint();
		}

		public function get hasNextLevelDegree():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set nextLevelDegree(value:uint):void {
			hasField$0 |= 0x8;
			next_level_degree$field = value;
		}

		public function get nextLevelDegree():uint {
			return next_level_degree$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerQueryRsp.award_list", "awardList", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoSendFlowerAwardList);

		[ArrayElementType("serverProto.family.ProtoSendFlowerAwardList")]
		public var awardList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasFriendId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend_id$field);
			}
			if (hasFriendName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, friend_name$field);
			}
			if (hasFriendLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_level$field);
			}
			if (hasFriendCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_category$field);
			}
			if (hasFriendDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, friend_degree$field);
			}
			if (hasNextLevelDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_level_degree$field);
			}
			for (var awardList$index:uint = 0; awardList$index < this.awardList.length; ++awardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardList[awardList$index]);
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
			var friend_id$count:uint = 0;
			var friend_name$count:uint = 0;
			var friend_level$count:uint = 0;
			var friend_category$count:uint = 0;
			var friend_degree$count:uint = 0;
			var next_level_degree$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (friend_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.friendId cannot be set twice.');
					}
					++friend_id$count;
					this.friendId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendId);
					break;
				case 3:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (friend_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.friendLevel cannot be set twice.');
					}
					++friend_level$count;
					this.friendLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (friend_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.friendCategory cannot be set twice.');
					}
					++friend_category$count;
					this.friendCategory = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (friend_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.friendDegree cannot be set twice.');
					}
					++friend_degree$count;
					this.friendDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (next_level_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerQueryRsp.nextLevelDegree cannot be set twice.');
					}
					++next_level_degree$count;
					this.nextLevelDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.awardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoSendFlowerAwardList()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
