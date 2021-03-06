package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.ninjaSystem.ProtoNinjaAllInOne;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAllInOneNinjaList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ALL_IN_ONE_NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoAllInOneNinjaList.all_in_one_ninja_info", "allInOneNinjaInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoNinjaAllInOne);

		[ArrayElementType("serverProto.ninjaSystem.ProtoNinjaAllInOne")]
		public var allInOneNinjaInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var allInOneNinjaInfo$index:uint = 0; allInOneNinjaInfo$index < this.allInOneNinjaInfo.length; ++allInOneNinjaInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.allInOneNinjaInfo[allInOneNinjaInfo$index]);
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
					this.allInOneNinjaInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.ninjaSystem.ProtoNinjaAllInOne()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
