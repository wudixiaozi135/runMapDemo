package serverProto.huntlife {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.huntlife.ProtoChakraBlankInfo;
	import serverProto.huntlife.ProtoNpcInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoHuntLifePracticeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BLANK_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifePracticeInfo.blank_info", "blankInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoChakraBlankInfo);

		private var blank_info$field:serverProto.huntlife.ProtoChakraBlankInfo;

		public function clearBlankInfo():void {
			blank_info$field = null;
		}

		public function get hasBlankInfo():Boolean {
			return blank_info$field != null;
		}

		public function set blankInfo(value:serverProto.huntlife.ProtoChakraBlankInfo):void {
			blank_info$field = value;
		}

		public function get blankInfo():serverProto.huntlife.ProtoChakraBlankInfo {
			return blank_info$field;
		}

		/**
		 *  @private
		 */
		public static const NPC_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifePracticeInfo.npc_info", "npcInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoNpcInfo);

		[ArrayElementType("serverProto.huntlife.ProtoNpcInfo")]
		public var npcInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBlankInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, blank_info$field);
			}
			for (var npcInfo$index:uint = 0; npcInfo$index < this.npcInfo.length; ++npcInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.npcInfo[npcInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var blank_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (blank_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHuntLifePracticeInfo.blankInfo cannot be set twice.');
					}
					++blank_info$count;
					this.blankInfo = new serverProto.huntlife.ProtoChakraBlankInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.blankInfo);
					break;
				case 2:
					this.npcInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.huntlife.ProtoNpcInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
