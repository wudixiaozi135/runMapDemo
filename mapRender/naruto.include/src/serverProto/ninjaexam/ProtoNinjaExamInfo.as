package serverProto.ninjaexam {
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
	public  final class ProtoNinjaExamInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MAX_STAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.max_stage", "maxStage", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var maxStage:uint;

		/**
		 *  @private
		 */
		public static const CURR_STAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.curr_stage", "currStage", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var currStage:uint;

		/**
		 *  @private
		 */
		public static const TOTAL_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.total_exp", "totalExp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var totalExp:uint;

		/**
		 *  @private
		 */
		public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.free_count", "freeCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var freeCount:uint;

		/**
		 *  @private
		 */
		public static const RAIDS_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.raids_time", "raidsTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var raids_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearRaidsTime():void {
			hasField$0 &= 0xfffffffe;
			raids_time$field = new uint();
		}

		public function get hasRaidsTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set raidsTime(value:uint):void {
			hasField$0 |= 0x1;
			raids_time$field = value;
		}

		public function get raidsTime():uint {
			return raids_time$field;
		}

		/**
		 *  @private
		 */
		public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.my_rank", "myRank", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var my_rank$field:uint;

		public function clearMyRank():void {
			hasField$0 &= 0xfffffffd;
			my_rank$field = new uint();
		}

		public function get hasMyRank():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set myRank(value:uint):void {
			hasField$0 |= 0x2;
			my_rank$field = value;
		}

		public function get myRank():uint {
			return my_rank$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.total_money", "totalMoney", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_money$field:uint;

		public function clearTotalMoney():void {
			hasField$0 &= 0xfffffffb;
			total_money$field = new uint();
		}

		public function get hasTotalMoney():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalMoney(value:uint):void {
			hasField$0 |= 0x4;
			total_money$field = value;
		}

		public function get totalMoney():uint {
			return total_money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.maxStage);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.currStage);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.totalExp);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.freeCount);
			if (hasRaidsTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, raids_time$field);
			}
			if (hasMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, my_rank$field);
			}
			if (hasTotalMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_money$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var max_stage$count:uint = 0;
			var curr_stage$count:uint = 0;
			var total_exp$count:uint = 0;
			var free_count$count:uint = 0;
			var raids_time$count:uint = 0;
			var my_rank$count:uint = 0;
			var total_money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (max_stage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.maxStage cannot be set twice.');
					}
					++max_stage$count;
					this.maxStage = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (curr_stage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.currStage cannot be set twice.');
					}
					++curr_stage$count;
					this.currStage = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (total_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.totalExp cannot be set twice.');
					}
					++total_exp$count;
					this.totalExp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (free_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.freeCount cannot be set twice.');
					}
					++free_count$count;
					this.freeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (raids_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.raidsTime cannot be set twice.');
					}
					++raids_time$count;
					this.raidsTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.myRank cannot be set twice.');
					}
					++my_rank$count;
					this.myRank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (total_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamInfo.totalMoney cannot be set twice.');
					}
					++total_money$count;
					this.totalMoney = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
