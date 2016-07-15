package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaRecruitAwardRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitAwardRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitAwardRsp.box_id", "boxId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var box_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearBoxId():void {
			hasField$0 &= 0xfffffffe;
			box_id$field = new uint();
		}

		public function get hasBoxId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set boxId(value:uint):void {
			hasField$0 |= 0x1;
			box_id$field = value;
		}

		public function get boxId():uint {
			return box_id$field;
		}

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitAwardRsp.num", "num", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var num$field:int;

		public function clearNum():void {
			hasField$0 &= 0xfffffffd;
			num$field = new int();
		}

		public function get hasNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set num(value:int):void {
			hasField$0 |= 0x2;
			num$field = value;
		}

		public function get num():int {
			return num$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitAwardRsp.max_num", "maxNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_num$field:int;

		public function clearMaxNum():void {
			hasField$0 &= 0xfffffffb;
			max_num$field = new int();
		}

		public function get hasMaxNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set maxNum(value:int):void {
			hasField$0 |= 0x4;
			max_num$field = value;
		}

		public function get maxNum():int {
			return max_num$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitAwardRsp.reward_num", "rewardNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_num$field:uint;

		public function clearRewardNum():void {
			hasField$0 &= 0xfffffff7;
			reward_num$field = new uint();
		}

		public function get hasRewardNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set rewardNum(value:uint):void {
			hasField$0 |= 0x8;
			reward_num$field = value;
		}

		public function get rewardNum():uint {
			return reward_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasBoxId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, box_id$field);
			}
			if (hasNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, num$field);
			}
			if (hasMaxNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_num$field);
			}
			if (hasRewardNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, reward_num$field);
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
			var box_id$count:uint = 0;
			var num$count:uint = 0;
			var max_num$count:uint = 0;
			var reward_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (box_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardRsp.boxId cannot be set twice.');
					}
					++box_id$count;
					this.boxId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardRsp.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (max_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardRsp.maxNum cannot be set twice.');
					}
					++max_num$count;
					this.maxNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (reward_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardRsp.rewardNum cannot be set twice.');
					}
					++reward_num$count;
					this.rewardNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
