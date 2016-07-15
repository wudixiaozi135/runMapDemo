package serverProto.baseInfo {
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
	public  final class ProtoNinjaMoodDetailInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REFRESH_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.refresh_state", "refreshState", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var refreshState:uint;

		/**
		 *  @private
		 */
		public static const CURRENT_MOOD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.current_mood", "currentMood", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_mood$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurrentMood():void {
			hasField$0 &= 0xfffffffe;
			current_mood$field = new uint();
		}

		public function get hasCurrentMood():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentMood(value:uint):void {
			hasField$0 |= 0x1;
			current_mood$field = value;
		}

		public function get currentMood():uint {
			return current_mood$field;
		}

		/**
		 *  @private
		 */
		public static const REFRESH_MOOD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.refresh_mood", "refreshMood", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var refresh_mood$field:uint;

		public function clearRefreshMood():void {
			hasField$0 &= 0xfffffffd;
			refresh_mood$field = new uint();
		}

		public function get hasRefreshMood():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set refreshMood(value:uint):void {
			hasField$0 |= 0x2;
			refresh_mood$field = value;
		}

		public function get refreshMood():uint {
			return refresh_mood$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_REFRESH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.free_refresh", "freeRefresh", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_refresh$field:uint;

		public function clearFreeRefresh():void {
			hasField$0 &= 0xfffffffb;
			free_refresh$field = new uint();
		}

		public function get hasFreeRefresh():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set freeRefresh(value:uint):void {
			hasField$0 |= 0x4;
			free_refresh$field = value;
		}

		public function get freeRefresh():uint {
			return free_refresh$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_NOODLES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.total_noodles", "totalNoodles", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_noodles$field:uint;

		public function clearTotalNoodles():void {
			hasField$0 &= 0xfffffff7;
			total_noodles$field = new uint();
		}

		public function get hasTotalNoodles():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set totalNoodles(value:uint):void {
			hasField$0 |= 0x8;
			total_noodles$field = value;
		}

		public function get totalNoodles():uint {
			return total_noodles$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_MONEY_DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.need_money_dianquan", "needMoneyDianquan", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_money_dianquan$field:uint;

		public function clearNeedMoneyDianquan():void {
			hasField$0 &= 0xffffffef;
			need_money_dianquan$field = new uint();
		}

		public function get hasNeedMoneyDianquan():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set needMoneyDianquan(value:uint):void {
			hasField$0 |= 0x10;
			need_money_dianquan$field = value;
		}

		public function get needMoneyDianquan():uint {
			return need_money_dianquan$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_MONEY_DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.total_money_dianquan", "totalMoneyDianquan", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_money_dianquan$field:uint;

		public function clearTotalMoneyDianquan():void {
			hasField$0 &= 0xffffffdf;
			total_money_dianquan$field = new uint();
		}

		public function get hasTotalMoneyDianquan():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set totalMoneyDianquan(value:uint):void {
			hasField$0 |= 0x20;
			total_money_dianquan$field = value;
		}

		public function get totalMoneyDianquan():uint {
			return total_money_dianquan$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_MONEY_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.need_money_yuanbao", "needMoneyYuanbao", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_money_yuanbao$field:uint;

		public function clearNeedMoneyYuanbao():void {
			hasField$0 &= 0xffffffbf;
			need_money_yuanbao$field = new uint();
		}

		public function get hasNeedMoneyYuanbao():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set needMoneyYuanbao(value:uint):void {
			hasField$0 |= 0x40;
			need_money_yuanbao$field = value;
		}

		public function get needMoneyYuanbao():uint {
			return need_money_yuanbao$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_MONEY_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.total_money_yuanbao", "totalMoneyYuanbao", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_money_yuanbao$field:uint;

		public function clearTotalMoneyYuanbao():void {
			hasField$0 &= 0xffffff7f;
			total_money_yuanbao$field = new uint();
		}

		public function get hasTotalMoneyYuanbao():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set totalMoneyYuanbao(value:uint):void {
			hasField$0 |= 0x80;
			total_money_yuanbao$field = value;
		}

		public function get totalMoneyYuanbao():uint {
			return total_money_yuanbao$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.refreshState);
			if (hasCurrentMood) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_mood$field);
			}
			if (hasRefreshMood) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, refresh_mood$field);
			}
			if (hasFreeRefresh) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_refresh$field);
			}
			if (hasTotalNoodles) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_noodles$field);
			}
			if (hasNeedMoneyDianquan) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, need_money_dianquan$field);
			}
			if (hasTotalMoneyDianquan) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_money_dianquan$field);
			}
			if (hasNeedMoneyYuanbao) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, need_money_yuanbao$field);
			}
			if (hasTotalMoneyYuanbao) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_money_yuanbao$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var refresh_state$count:uint = 0;
			var current_mood$count:uint = 0;
			var refresh_mood$count:uint = 0;
			var free_refresh$count:uint = 0;
			var total_noodles$count:uint = 0;
			var need_money_dianquan$count:uint = 0;
			var total_money_dianquan$count:uint = 0;
			var need_money_yuanbao$count:uint = 0;
			var total_money_yuanbao$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (refresh_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.refreshState cannot be set twice.');
					}
					++refresh_state$count;
					this.refreshState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (current_mood$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.currentMood cannot be set twice.');
					}
					++current_mood$count;
					this.currentMood = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (refresh_mood$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.refreshMood cannot be set twice.');
					}
					++refresh_mood$count;
					this.refreshMood = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (free_refresh$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.freeRefresh cannot be set twice.');
					}
					++free_refresh$count;
					this.freeRefresh = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (total_noodles$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.totalNoodles cannot be set twice.');
					}
					++total_noodles$count;
					this.totalNoodles = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (need_money_dianquan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.needMoneyDianquan cannot be set twice.');
					}
					++need_money_dianquan$count;
					this.needMoneyDianquan = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (total_money_dianquan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.totalMoneyDianquan cannot be set twice.');
					}
					++total_money_dianquan$count;
					this.totalMoneyDianquan = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (need_money_yuanbao$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.needMoneyYuanbao cannot be set twice.');
					}
					++need_money_yuanbao$count;
					this.needMoneyYuanbao = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (total_money_yuanbao$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaMoodDetailInfo.totalMoneyYuanbao cannot be set twice.');
					}
					++total_money_yuanbao$count;
					this.totalMoneyYuanbao = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
