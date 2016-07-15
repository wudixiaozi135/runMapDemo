package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoPlayerTeamPos;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChangeFormationResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_TEAM:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoChangeFormationResponse.player_team", "playerTeam", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoPlayerTeamPos);

		public var playerTeam:serverProto.fight.ProtoPlayerTeamPos;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerTeam);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_team$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_team$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChangeFormationResponse.playerTeam cannot be set twice.');
					}
					++player_team$count;
					this.playerTeam = new serverProto.fight.ProtoPlayerTeamPos();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerTeam);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
