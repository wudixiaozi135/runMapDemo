package serverProto.npc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.npc.ProtoNpcLocation;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNpcLocationNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NPC_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoNpcLocationNotify.npc_list", "npcList", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.npc.ProtoNpcLocation);

		[ArrayElementType("serverProto.npc.ProtoNpcLocation")]
		public var npcList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var npcList$index:uint = 0; npcList$index < this.npcList.length; ++npcList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.npcList[npcList$index]);
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
					this.npcList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.npc.ProtoNpcLocation()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
