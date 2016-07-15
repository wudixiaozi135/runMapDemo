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
	public  final class ProtoSendFlowerBuyReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerBuyReq.friend_id", "friendId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerBuyReq.friend_name", "friendName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const BUY_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerBuyReq.buy_idx", "buyIdx", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearBuyIdx():void {
			hasField$0 &= 0xfffffffe;
			buy_idx$field = new uint();
		}

		public function get hasBuyIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set buyIdx(value:uint):void {
			hasField$0 |= 0x1;
			buy_idx$field = value;
		}

		public function get buyIdx():uint {
			return buy_idx$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerBuyReq.buy_count", "buyCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_count$field:uint;

		public function clearBuyCount():void {
			hasField$0 &= 0xfffffffd;
			buy_count$field = new uint();
		}

		public function get hasBuyCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set buyCount(value:uint):void {
			hasField$0 |= 0x2;
			buy_count$field = value;
		}

		public function get buyCount():uint {
			return buy_count$field;
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
			if (hasBuyIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, buy_idx$field);
			}
			if (hasBuyCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, buy_count$field);
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
			var buy_idx$count:uint = 0;
			var buy_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (friend_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerBuyReq.friendId cannot be set twice.');
					}
					++friend_id$count;
					this.friendId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendId);
					break;
				case 2:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerBuyReq.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (buy_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerBuyReq.buyIdx cannot be set twice.');
					}
					++buy_idx$count;
					this.buyIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (buy_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerBuyReq.buyCount cannot be set twice.');
					}
					++buy_count$count;
					this.buyCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
