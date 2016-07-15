package serverProto.hud {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.hud.ProtoPluginTetred;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCommonAutorunPluginNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLUGIN_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoCommonAutorunPluginNotify.plugin_list", "pluginList", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.hud.ProtoPluginTetred);

		[ArrayElementType("serverProto.hud.ProtoPluginTetred")]
		public var pluginList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var pluginList$index:uint = 0; pluginList$index < this.pluginList.length; ++pluginList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.pluginList[pluginList$index]);
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
					this.pluginList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.hud.ProtoPluginTetred()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
