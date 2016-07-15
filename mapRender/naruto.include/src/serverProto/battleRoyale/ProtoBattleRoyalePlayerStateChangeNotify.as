package serverProto.battleRoyale {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.battleRoyale.ProtoBattleRoyaleCampInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBattleRoyalePlayerStateChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHANGED_CAMP_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyalePlayerStateChangeNotify.changed_camp_info", "changedCampInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.battleRoyale.ProtoBattleRoyaleCampInfo);

		[ArrayElementType("serverProto.battleRoyale.ProtoBattleRoyaleCampInfo")]
		public var changedCampInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var changedCampInfo$index:uint = 0; changedCampInfo$index < this.changedCampInfo.length; ++changedCampInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.changedCampInfo[changedCampInfo$index]);
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
					this.changedCampInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.battleRoyale.ProtoBattleRoyaleCampInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
