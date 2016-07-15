package serverProto.summonMonster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.summonMonster.ProtoSummonMonsterInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetSummonMonsterByIdResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterByIdResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterByIdResponse.summon_monster_info", "summonMonsterInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoSummonMonsterInfo);

		private var summon_monster_info$field:serverProto.summonMonster.ProtoSummonMonsterInfo;

		public function clearSummonMonsterInfo():void {
			summon_monster_info$field = null;
		}

		public function get hasSummonMonsterInfo():Boolean {
			return summon_monster_info$field != null;
		}

		public function set summonMonsterInfo(value:serverProto.summonMonster.ProtoSummonMonsterInfo):void {
			summon_monster_info$field = value;
		}

		public function get summonMonsterInfo():serverProto.summonMonster.ProtoSummonMonsterInfo {
			return summon_monster_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasSummonMonsterInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, summon_monster_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var summon_monster_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSummonMonsterByIdResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (summon_monster_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSummonMonsterByIdResponse.summonMonsterInfo cannot be set twice.');
					}
					++summon_monster_info$count;
					this.summonMonsterInfo = new serverProto.summonMonster.ProtoSummonMonsterInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.summonMonsterInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
