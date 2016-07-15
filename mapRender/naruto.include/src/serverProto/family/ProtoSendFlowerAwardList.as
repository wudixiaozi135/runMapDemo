package serverProto.family {
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
	public  final class ProtoSendFlowerAwardList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const AWARD_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.award_idx", "awardIdx", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwardIdx():void {
			hasField$0 &= 0xfffffffe;
			award_idx$field = new uint();
		}

		public function get hasAwardIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardIdx(value:uint):void {
			hasField$0 |= 0x1;
			award_idx$field = value;
		}

		public function get awardIdx():uint {
			return award_idx$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.item_id", "itemId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_id$field:uint;

		public function clearItemId():void {
			hasField$0 &= 0xfffffffd;
			item_id$field = new uint();
		}

		public function get hasItemId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set itemId(value:uint):void {
			hasField$0 |= 0x2;
			item_id$field = value;
		}

		public function get itemId():uint {
			return item_id$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.item_num", "itemNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_num$field:uint;

		public function clearItemNum():void {
			hasField$0 &= 0xfffffffb;
			item_num$field = new uint();
		}

		public function get hasItemNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set itemNum(value:uint):void {
			hasField$0 |= 0x4;
			item_num$field = value;
		}

		public function get itemNum():uint {
			return item_num$field;
		}

		/**
		 *  @private
		 */
		public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.price", "price", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var price$field:uint;

		public function clearPrice():void {
			hasField$0 &= 0xfffffff7;
			price$field = new uint();
		}

		public function get hasPrice():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set price(value:uint):void {
			hasField$0 |= 0x8;
			price$field = value;
		}

		public function get price():uint {
			return price$field;
		}

		/**
		 *  @private
		 */
		public static const ADD_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.add_degree", "addDegree", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var add_degree$field:uint;

		public function clearAddDegree():void {
			hasField$0 &= 0xffffffef;
			add_degree$field = new uint();
		}

		public function get hasAddDegree():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set addDegree(value:uint):void {
			hasField$0 |= 0x10;
			add_degree$field = value;
		}

		public function get addDegree():uint {
			return add_degree$field;
		}

		/**
		 *  @private
		 */
		public static const USE_TONGBI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.use_tongbi", "useTongbi", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var use_tongbi$field:uint;

		public function clearUseTongbi():void {
			hasField$0 &= 0xffffffdf;
			use_tongbi$field = new uint();
		}

		public function get hasUseTongbi():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set useTongbi(value:uint):void {
			hasField$0 |= 0x20;
			use_tongbi$field = value;
		}

		public function get useTongbi():uint {
			return use_tongbi$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAwardIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_idx$field);
			}
			if (hasItemId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, item_id$field);
			}
			if (hasItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, item_num$field);
			}
			if (hasPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, price$field);
			}
			if (hasAddDegree) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, add_degree$field);
			}
			if (hasUseTongbi) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, use_tongbi$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var award_idx$count:uint = 0;
			var item_id$count:uint = 0;
			var item_num$count:uint = 0;
			var price$count:uint = 0;
			var add_degree$count:uint = 0;
			var use_tongbi$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (award_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerAwardList.awardIdx cannot be set twice.');
					}
					++award_idx$count;
					this.awardIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerAwardList.itemId cannot be set twice.');
					}
					++item_id$count;
					this.itemId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerAwardList.itemNum cannot be set twice.');
					}
					++item_num$count;
					this.itemNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerAwardList.price cannot be set twice.');
					}
					++price$count;
					this.price = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (add_degree$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerAwardList.addDegree cannot be set twice.');
					}
					++add_degree$count;
					this.addDegree = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (use_tongbi$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerAwardList.useTongbi cannot be set twice.');
					}
					++use_tongbi$count;
					this.useTongbi = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
