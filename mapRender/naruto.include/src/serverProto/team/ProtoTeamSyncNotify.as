package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoTeamSyncType;
	import serverProto.team.ProtoTeamMemberSyncStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamSyncNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamSyncNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamSyncType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const MEMBER_STATUS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamSyncNotify.member_status", "memberStatus", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.team.ProtoTeamMemberSyncStatus);

		[ArrayElementType("serverProto.team.ProtoTeamMemberSyncStatus")]
		public var memberStatus:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			for (var memberStatus$index:uint = 0; memberStatus$index < this.memberStatus.length; ++memberStatus$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.memberStatus[memberStatus$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamSyncNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					this.memberStatus.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.team.ProtoTeamMemberSyncStatus()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
