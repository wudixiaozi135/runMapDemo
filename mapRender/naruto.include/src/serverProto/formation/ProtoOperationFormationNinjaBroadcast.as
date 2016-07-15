package serverProto.formation {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.formationBase.ProtoTeamFormationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperationFormationNinjaBroadcast extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoOperationFormationNinjaBroadcast.formation_info", "formationInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoTeamFormationInfo);

		public var formationInfo:serverProto.formationBase.ProtoTeamFormationInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.formationInfo);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var formation_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (formation_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperationFormationNinjaBroadcast.formationInfo cannot be set twice.');
					}
					++formation_info$count;
					this.formationInfo = new serverProto.formationBase.ProtoTeamFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formationInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
