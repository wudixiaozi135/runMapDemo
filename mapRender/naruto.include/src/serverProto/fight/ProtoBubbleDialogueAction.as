package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoBubbleDialogue;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBubbleDialogueAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BUBBLE_DIALOGUE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoBubbleDialogueAction.bubble_dialogue", "bubbleDialogue", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoBubbleDialogue);

		[ArrayElementType("serverProto.fight.ProtoBubbleDialogue")]
		public var bubbleDialogue:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var bubbleDialogue$index:uint = 0; bubbleDialogue$index < this.bubbleDialogue.length; ++bubbleDialogue$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.bubbleDialogue[bubbleDialogue$index]);
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
					this.bubbleDialogue.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoBubbleDialogue()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
