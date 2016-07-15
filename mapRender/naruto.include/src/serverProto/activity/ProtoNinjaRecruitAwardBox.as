package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaRecruitAwardBox extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitAwardBox.box_id", "boxId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitAwardBox.award", "award", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const BOX_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoNinjaRecruitAwardBox.box_desc", "boxDesc", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var box_desc$field:String;

		public function clearBoxDesc():void {
			box_desc$field = null;
		}

		public function get hasBoxDesc():Boolean {
			return box_desc$field != null;
		}

		public function set boxDesc(value:String):void {
			box_desc$field = value;
		}

		public function get boxDesc():String {
			return box_desc$field;
		}

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitAwardBox.num", "num", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const MAX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitAwardBox.max_num", "maxNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const REWARD_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitAwardBox.reward_num", "rewardNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

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
			if (hasBoxId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, box_id$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasBoxDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, box_desc$field);
			}
			if (hasNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, num$field);
			}
			if (hasMaxNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_num$field);
			}
			if (hasRewardNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
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
			var box_id$count:uint = 0;
			var box_desc$count:uint = 0;
			var num$count:uint = 0;
			var max_num$count:uint = 0;
			var reward_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (box_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardBox.boxId cannot be set twice.');
					}
					++box_id$count;
					this.boxId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					if (box_desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardBox.boxDesc cannot be set twice.');
					}
					++box_desc$count;
					this.boxDesc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardBox.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (max_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardBox.maxNum cannot be set twice.');
					}
					++max_num$count;
					this.maxNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (reward_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitAwardBox.rewardNum cannot be set twice.');
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
