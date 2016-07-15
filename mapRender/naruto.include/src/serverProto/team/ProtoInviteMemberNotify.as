package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInviteMemberNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CAPTAIN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoInviteMemberNotify.captain", "captain", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var captain:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const CAPTAIN_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoInviteMemberNotify.captain_name", "captainName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var captainName:String;

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.team.ProtoInviteMemberNotify.team_id", "teamId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:UInt64;

		/**
		 *  @private
		 */
		public static const TEAM_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoInviteMemberNotify.team_name", "teamName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var teamName:String;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.captain);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.captainName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.teamId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.teamName);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var captain$count:uint = 0;
			var captain_name$count:uint = 0;
			var team_id$count:uint = 0;
			var team_name$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (captain$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInviteMemberNotify.captain cannot be set twice.');
					}
					++captain$count;
					this.captain = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.captain);
					break;
				case 2:
					if (captain_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInviteMemberNotify.captainName cannot be set twice.');
					}
					++captain_name$count;
					this.captainName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInviteMemberNotify.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 4:
					if (team_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInviteMemberNotify.teamName cannot be set twice.');
					}
					++team_name$count;
					this.teamName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
