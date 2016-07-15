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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWaterWishTreeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWaterWishTreeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CAN_WISH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWaterWishTreeRsp.can_wish", "canWish", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_wish$field:int;

		private var hasField$0:uint = 0;

		public function clearCanWish():void {
			hasField$0 &= 0xfffffffe;
			can_wish$field = new int();
		}

		public function get hasCanWish():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set canWish(value:int):void {
			hasField$0 |= 0x1;
			can_wish$field = value;
		}

		public function get canWish():int {
			return can_wish$field;
		}

		/**
		 *  @private
		 */
		public static const WISH_TREE_LEVELUP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWaterWishTreeRsp.wish_tree_levelup", "wishTreeLevelup", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wish_tree_levelup$field:int;

		public function clearWishTreeLevelup():void {
			hasField$0 &= 0xfffffffd;
			wish_tree_levelup$field = new int();
		}

		public function get hasWishTreeLevelup():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set wishTreeLevelup(value:int):void {
			hasField$0 |= 0x2;
			wish_tree_levelup$field = value;
		}

		public function get wishTreeLevelup():int {
			return wish_tree_levelup$field;
		}

		/**
		 *  @private
		 */
		public static const WISH_TREE_STATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWaterWishTreeRsp.wish_tree_state", "wishTreeState", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoWishTreeState);

		private var wish_tree_state$field:serverProto.family.ProtoWishTreeState;

		public function clearWishTreeState():void {
			wish_tree_state$field = null;
		}

		public function get hasWishTreeState():Boolean {
			return wish_tree_state$field != null;
		}

		public function set wishTreeState(value:serverProto.family.ProtoWishTreeState):void {
			wish_tree_state$field = value;
		}

		public function get wishTreeState():serverProto.family.ProtoWishTreeState {
			return wish_tree_state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasCanWish) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_wish$field);
			}
			if (hasWishTreeLevelup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, wish_tree_levelup$field);
			}
			if (hasWishTreeState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, wish_tree_state$field);
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
			var can_wish$count:uint = 0;
			var wish_tree_levelup$count:uint = 0;
			var wish_tree_state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWaterWishTreeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (can_wish$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWaterWishTreeRsp.canWish cannot be set twice.');
					}
					++can_wish$count;
					this.canWish = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (wish_tree_levelup$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWaterWishTreeRsp.wishTreeLevelup cannot be set twice.');
					}
					++wish_tree_levelup$count;
					this.wishTreeLevelup = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (wish_tree_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWaterWishTreeRsp.wishTreeState cannot be set twice.');
					}
					++wish_tree_state$count;
					this.wishTreeState = new serverProto.family.ProtoWishTreeState();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.wishTreeState);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
