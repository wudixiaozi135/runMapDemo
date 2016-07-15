package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRankBattleNewHighestRankNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OLD_RANK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rankBattle.ProtoRankBattleNewHighestRankNotify.old_rank", "oldRank", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var oldRank:int;

		/**
		 *  @private
		 */
		public static const NEW_RANK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rankBattle.ProtoRankBattleNewHighestRankNotify.new_rank", "newRank", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var newRank:int;

		/**
		 *  @private
		 */
		public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rankBattle.ProtoRankBattleNewHighestRankNotify.copper", "copper", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper$field:int;

		private var hasField$0:uint = 0;

		public function clearCopper():void {
			hasField$0 &= 0xfffffffe;
			copper$field = new int();
		}

		public function get hasCopper():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set copper(value:int):void {
			hasField$0 |= 0x1;
			copper$field = value;
		}

		public function get copper():int {
			return copper$field;
		}

		/**
		 *  @private
		 */
		public static const COUPON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rankBattle.ProtoRankBattleNewHighestRankNotify.coupon", "coupon", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var coupon$field:int;

		public function clearCoupon():void {
			hasField$0 &= 0xfffffffd;
			coupon$field = new int();
		}

		public function get hasCoupon():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set coupon(value:int):void {
			hasField$0 |= 0x2;
			coupon$field = value;
		}

		public function get coupon():int {
			return coupon$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.oldRank);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.newRank);
			if (hasCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper$field);
			}
			if (hasCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, coupon$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var old_rank$count:uint = 0;
			var new_rank$count:uint = 0;
			var copper$count:uint = 0;
			var coupon$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (old_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleNewHighestRankNotify.oldRank cannot be set twice.');
					}
					++old_rank$count;
					this.oldRank = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (new_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleNewHighestRankNotify.newRank cannot be set twice.');
					}
					++new_rank$count;
					this.newRank = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleNewHighestRankNotify.copper cannot be set twice.');
					}
					++copper$count;
					this.copper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleNewHighestRankNotify.coupon cannot be set twice.');
					}
					++coupon$count;
					this.coupon = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
