package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.rankBattle.ProtoBattleRivalInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMatchedRivalInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TOP_PLAYERS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoMatchedRivalInfo.top_players", "topPlayers", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoBattleRivalInfo);

		[ArrayElementType("serverProto.rankBattle.ProtoBattleRivalInfo")]
		public var topPlayers:Array = [];

		/**
		 *  @private
		 */
		public static const RIVAL_PLAYERS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoMatchedRivalInfo.rival_players", "rivalPlayers", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoBattleRivalInfo);

		[ArrayElementType("serverProto.rankBattle.ProtoBattleRivalInfo")]
		public var rivalPlayers:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var topPlayers$index:uint = 0; topPlayers$index < this.topPlayers.length; ++topPlayers$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.topPlayers[topPlayers$index]);
			}
			for (var rivalPlayers$index:uint = 0; rivalPlayers$index < this.rivalPlayers.length; ++rivalPlayers$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rivalPlayers[rivalPlayers$index]);
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
					this.topPlayers.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rankBattle.ProtoBattleRivalInfo()));
					break;
				case 2:
					this.rivalPlayers.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rankBattle.ProtoBattleRivalInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
