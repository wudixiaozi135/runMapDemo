package serverProto.battleRoyale {
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
	public  final class ProtoBattleRoyaleOverAward extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SCORE_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverAward.score_award", "scoreAward", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var scoreAward:Array = [];

		/**
		 *  @private
		 */
		public static const RANK_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverAward.rank_award", "rankAward", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var rankAward:Array = [];

		/**
		 *  @private
		 */
		public static const WIN_CAMP_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverAward.win_camp_award", "winCampAward", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var winCampAward:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var scoreAward$index:uint = 0; scoreAward$index < this.scoreAward.length; ++scoreAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.scoreAward[scoreAward$index]);
			}
			for (var rankAward$index:uint = 0; rankAward$index < this.rankAward.length; ++rankAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rankAward[rankAward$index]);
			}
			for (var winCampAward$index:uint = 0; winCampAward$index < this.winCampAward.length; ++winCampAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.winCampAward[winCampAward$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.scoreAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 2:
					this.rankAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					this.winCampAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
