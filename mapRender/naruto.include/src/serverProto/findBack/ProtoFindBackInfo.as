package serverProto.findBack {
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
	public  final class ProtoFindBackInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EVERYDAY_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_exp", "everydayTaskExp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var everyday_task_exp$field:uint;

		private var hasField$0:uint = 0;

		public function clearEverydayTaskExp():void {
			hasField$0 &= 0xfffffffe;
			everyday_task_exp$field = new uint();
		}

		public function get hasEverydayTaskExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set everydayTaskExp(value:uint):void {
			hasField$0 |= 0x1;
			everyday_task_exp$field = value;
		}

		public function get everydayTaskExp():uint {
			return everyday_task_exp$field;
		}

		/**
		 *  @private
		 */
		public static const EVERYDAY_TASK_MONEY_TONGBI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_money_tongbi", "everydayTaskMoneyTongbi", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var everyday_task_money_tongbi$field:uint;

		public function clearEverydayTaskMoneyTongbi():void {
			hasField$0 &= 0xfffffffd;
			everyday_task_money_tongbi$field = new uint();
		}

		public function get hasEverydayTaskMoneyTongbi():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set everydayTaskMoneyTongbi(value:uint):void {
			hasField$0 |= 0x2;
			everyday_task_money_tongbi$field = value;
		}

		public function get everydayTaskMoneyTongbi():uint {
			return everyday_task_money_tongbi$field;
		}

		/**
		 *  @private
		 */
		public static const EVERYDAY_TASK_MONEY_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_money_yuanbao", "everydayTaskMoneyYuanbao", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var everyday_task_money_yuanbao$field:uint;

		public function clearEverydayTaskMoneyYuanbao():void {
			hasField$0 &= 0xfffffffb;
			everyday_task_money_yuanbao$field = new uint();
		}

		public function get hasEverydayTaskMoneyYuanbao():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set everydayTaskMoneyYuanbao(value:uint):void {
			hasField$0 |= 0x4;
			everyday_task_money_yuanbao$field = value;
		}

		public function get everydayTaskMoneyYuanbao():uint {
			return everyday_task_money_yuanbao$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.reward_task_exp", "rewardTaskExp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_task_exp$field:uint;

		public function clearRewardTaskExp():void {
			hasField$0 &= 0xfffffff7;
			reward_task_exp$field = new uint();
		}

		public function get hasRewardTaskExp():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set rewardTaskExp(value:uint):void {
			hasField$0 |= 0x8;
			reward_task_exp$field = value;
		}

		public function get rewardTaskExp():uint {
			return reward_task_exp$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_TASK_EXP_TONGBI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.reward_task_exp_tongbi", "rewardTaskExpTongbi", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_task_exp_tongbi$field:uint;

		public function clearRewardTaskExpTongbi():void {
			hasField$0 &= 0xffffffef;
			reward_task_exp_tongbi$field = new uint();
		}

		public function get hasRewardTaskExpTongbi():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set rewardTaskExpTongbi(value:uint):void {
			hasField$0 |= 0x10;
			reward_task_exp_tongbi$field = value;
		}

		public function get rewardTaskExpTongbi():uint {
			return reward_task_exp_tongbi$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_TASK_EXP_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.reward_task_exp_yuanbao", "rewardTaskExpYuanbao", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reward_task_exp_yuanbao$field:uint;

		public function clearRewardTaskExpYuanbao():void {
			hasField$0 &= 0xffffffdf;
			reward_task_exp_yuanbao$field = new uint();
		}

		public function get hasRewardTaskExpYuanbao():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set rewardTaskExpYuanbao(value:uint):void {
			hasField$0 |= 0x20;
			reward_task_exp_yuanbao$field = value;
		}

		public function get rewardTaskExpYuanbao():uint {
			return reward_task_exp_yuanbao$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEverydayTaskExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, everyday_task_exp$field);
			}
			if (hasEverydayTaskMoneyTongbi) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, everyday_task_money_tongbi$field);
			}
			if (hasEverydayTaskMoneyYuanbao) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, everyday_task_money_yuanbao$field);
			}
			if (hasRewardTaskExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, reward_task_exp$field);
			}
			if (hasRewardTaskExpTongbi) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, reward_task_exp_tongbi$field);
			}
			if (hasRewardTaskExpYuanbao) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, reward_task_exp_yuanbao$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var everyday_task_exp$count:uint = 0;
			var everyday_task_money_tongbi$count:uint = 0;
			var everyday_task_money_yuanbao$count:uint = 0;
			var reward_task_exp$count:uint = 0;
			var reward_task_exp_tongbi$count:uint = 0;
			var reward_task_exp_yuanbao$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (everyday_task_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFindBackInfo.everydayTaskExp cannot be set twice.');
					}
					++everyday_task_exp$count;
					this.everydayTaskExp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (everyday_task_money_tongbi$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFindBackInfo.everydayTaskMoneyTongbi cannot be set twice.');
					}
					++everyday_task_money_tongbi$count;
					this.everydayTaskMoneyTongbi = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (everyday_task_money_yuanbao$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFindBackInfo.everydayTaskMoneyYuanbao cannot be set twice.');
					}
					++everyday_task_money_yuanbao$count;
					this.everydayTaskMoneyYuanbao = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (reward_task_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFindBackInfo.rewardTaskExp cannot be set twice.');
					}
					++reward_task_exp$count;
					this.rewardTaskExp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (reward_task_exp_tongbi$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFindBackInfo.rewardTaskExpTongbi cannot be set twice.');
					}
					++reward_task_exp_tongbi$count;
					this.rewardTaskExpTongbi = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (reward_task_exp_yuanbao$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFindBackInfo.rewardTaskExpYuanbao cannot be set twice.');
					}
					++reward_task_exp_yuanbao$count;
					this.rewardTaskExpYuanbao = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
