package serverProto.activity {
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
	public  final class ProtoMergeServerRechargeData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TOTAL_RECHARGE_GOLDINGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerRechargeData.total_recharge_goldingot", "totalRechargeGoldingot", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_recharge_goldingot$field:uint;

		private var hasField$0:uint = 0;

		public function clearTotalRechargeGoldingot():void {
			hasField$0 &= 0xfffffffe;
			total_recharge_goldingot$field = new uint();
		}

		public function get hasTotalRechargeGoldingot():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalRechargeGoldingot(value:uint):void {
			hasField$0 |= 0x1;
			total_recharge_goldingot$field = value;
		}

		public function get totalRechargeGoldingot():uint {
			return total_recharge_goldingot$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_FANILI_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerRechargeData.remain_fanili_data", "remainFaniliData", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_fanili_data$field:uint;

		public function clearRemainFaniliData():void {
			hasField$0 &= 0xfffffffd;
			remain_fanili_data$field = new uint();
		}

		public function get hasRemainFaniliData():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainFaniliData(value:uint):void {
			hasField$0 |= 0x2;
			remain_fanili_data$field = value;
		}

		public function get remainFaniliData():uint {
			return remain_fanili_data$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_FANLI_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerRechargeData.total_fanli_data", "totalFanliData", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_fanli_data$field:uint;

		public function clearTotalFanliData():void {
			hasField$0 &= 0xfffffffb;
			total_fanli_data$field = new uint();
		}

		public function get hasTotalFanliData():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalFanliData(value:uint):void {
			hasField$0 |= 0x4;
			total_fanli_data$field = value;
		}

		public function get totalFanliData():uint {
			return total_fanli_data$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTotalRechargeGoldingot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_recharge_goldingot$field);
			}
			if (hasRemainFaniliData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_fanili_data$field);
			}
			if (hasTotalFanliData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_fanli_data$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var total_recharge_goldingot$count:uint = 0;
			var remain_fanili_data$count:uint = 0;
			var total_fanli_data$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (total_recharge_goldingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerRechargeData.totalRechargeGoldingot cannot be set twice.');
					}
					++total_recharge_goldingot$count;
					this.totalRechargeGoldingot = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (remain_fanili_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerRechargeData.remainFaniliData cannot be set twice.');
					}
					++remain_fanili_data$count;
					this.remainFaniliData = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (total_fanli_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerRechargeData.totalFanliData cannot be set twice.');
					}
					++total_fanli_data$count;
					this.totalFanliData = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
