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
	import serverProto.summonMonster.ProtoSummonMonsterList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetSummonMonsterResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterResponse.summon_monster_list", "summonMonsterList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoSummonMonsterList);

		private var summon_monster_list$field:serverProto.summonMonster.ProtoSummonMonsterList;

		public function clearSummonMonsterList():void {
			summon_monster_list$field = null;
		}

		public function get hasSummonMonsterList():Boolean {
			return summon_monster_list$field != null;
		}

		public function set summonMonsterList(value:serverProto.summonMonster.ProtoSummonMonsterList):void {
			summon_monster_list$field = value;
		}

		public function get summonMonsterList():serverProto.summonMonster.ProtoSummonMonsterList {
			return summon_monster_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasSummonMonsterList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, summon_monster_list$field);
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
			var summon_monster_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSummonMonsterResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (summon_monster_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSummonMonsterResponse.summonMonsterList cannot be set twice.');
					}
					++summon_monster_list$count;
					this.summonMonsterList = new serverProto.summonMonster.ProtoSummonMonsterList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.summonMonsterList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
