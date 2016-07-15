package serverProto.guild {
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
	public  final class ProtoRoberryResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoRoberryResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const IS_FIRST_GVG_FINAL_BATTLE_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoRoberryResponse.is_first_gvg_final_battle_rank", "isFirstGvgFinalBattleRank", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_first_gvg_final_battle_rank$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsFirstGvgFinalBattleRank():void {
			hasField$0 &= 0xfffffffe;
			is_first_gvg_final_battle_rank$field = new Boolean();
		}

		public function get hasIsFirstGvgFinalBattleRank():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isFirstGvgFinalBattleRank(value:Boolean):void {
			hasField$0 |= 0x1;
			is_first_gvg_final_battle_rank$field = value;
		}

		public function get isFirstGvgFinalBattleRank():Boolean {
			return is_first_gvg_final_battle_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasIsFirstGvgFinalBattleRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_first_gvg_final_battle_rank$field);
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
			var is_first_gvg_final_battle_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoberryResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (is_first_gvg_final_battle_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoberryResponse.isFirstGvgFinalBattleRank cannot be set twice.');
					}
					++is_first_gvg_final_battle_rank$count;
					this.isFirstGvgFinalBattleRank = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
