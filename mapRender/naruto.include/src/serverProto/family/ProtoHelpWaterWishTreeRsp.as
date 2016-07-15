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
	import serverProto.family.ProtoWishTreeState;
	import serverProto.family.ProtoFriendWishTreeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoHelpWaterWishTreeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const FRIEND_TREE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeRsp.friend_tree_info", "friendTreeInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoFriendWishTreeInfo);

		private var friend_tree_info$field:serverProto.family.ProtoFriendWishTreeInfo;

		public function clearFriendTreeInfo():void {
			friend_tree_info$field = null;
		}

		public function get hasFriendTreeInfo():Boolean {
			return friend_tree_info$field != null;
		}

		public function set friendTreeInfo(value:serverProto.family.ProtoFriendWishTreeInfo):void {
			friend_tree_info$field = value;
		}

		public function get friendTreeInfo():serverProto.family.ProtoFriendWishTreeInfo {
			return friend_tree_info$field;
		}

		/**
		 *  @private
		 */
		public static const WISH_TREE_LEVELUP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoHelpWaterWishTreeRsp.wish_tree_levelup", "wishTreeLevelup", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wish_tree_levelup$field:int;

		private var hasField$0:uint = 0;

		public function clearWishTreeLevelup():void {
			hasField$0 &= 0xfffffffe;
			wish_tree_levelup$field = new int();
		}

		public function get hasWishTreeLevelup():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set wishTreeLevelup(value:int):void {
			hasField$0 |= 0x1;
			wish_tree_levelup$field = value;
		}

		public function get wishTreeLevelup():int {
			return wish_tree_levelup$field;
		}

		/**
		 *  @private
		 */
		public static const MY_WISH_TREE_STATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeRsp.my_wish_tree_state", "myWishTreeState", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoWishTreeState);

		private var my_wish_tree_state$field:serverProto.family.ProtoWishTreeState;

		public function clearMyWishTreeState():void {
			my_wish_tree_state$field = null;
		}

		public function get hasMyWishTreeState():Boolean {
			return my_wish_tree_state$field != null;
		}

		public function set myWishTreeState(value:serverProto.family.ProtoWishTreeState):void {
			my_wish_tree_state$field = value;
		}

		public function get myWishTreeState():serverProto.family.ProtoWishTreeState {
			return my_wish_tree_state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasFriendTreeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend_tree_info$field);
			}
			if (hasWishTreeLevelup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, wish_tree_levelup$field);
			}
			if (hasMyWishTreeState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, my_wish_tree_state$field);
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
			var friend_tree_info$count:uint = 0;
			var wish_tree_levelup$count:uint = 0;
			var my_wish_tree_state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterWishTreeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (friend_tree_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterWishTreeRsp.friendTreeInfo cannot be set twice.');
					}
					++friend_tree_info$count;
					this.friendTreeInfo = new serverProto.family.ProtoFriendWishTreeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendTreeInfo);
					break;
				case 3:
					if (wish_tree_levelup$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterWishTreeRsp.wishTreeLevelup cannot be set twice.');
					}
					++wish_tree_levelup$count;
					this.wishTreeLevelup = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (my_wish_tree_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterWishTreeRsp.myWishTreeState cannot be set twice.');
					}
					++my_wish_tree_state$count;
					this.myWishTreeState = new serverProto.family.ProtoWishTreeState();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.myWishTreeState);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
