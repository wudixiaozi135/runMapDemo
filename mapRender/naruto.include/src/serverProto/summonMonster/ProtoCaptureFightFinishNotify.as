package serverProto.summonMonster {
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
	public  final class ProtoCaptureFightFinishNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoCaptureFightFinishNotify.summon_monster_id", "summonMonsterId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var summon_monster_id$field:int;

		private var hasField$0:uint = 0;

		public function clearSummonMonsterId():void {
			hasField$0 &= 0xfffffffe;
			summon_monster_id$field = new int();
		}

		public function get hasSummonMonsterId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set summonMonsterId(value:int):void {
			hasField$0 |= 0x1;
			summon_monster_id$field = value;
		}

		public function get summonMonsterId():int {
			return summon_monster_id$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoCaptureFightFinishNotify.reward_list", "rewardList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var rewardList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSummonMonsterId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, summon_monster_id$field);
			}
			for (var rewardList$index:uint = 0; rewardList$index < this.rewardList.length; ++rewardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rewardList[rewardList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var summon_monster_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (summon_monster_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCaptureFightFinishNotify.summonMonsterId cannot be set twice.');
					}
					++summon_monster_id$count;
					this.summonMonsterId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					this.rewardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
