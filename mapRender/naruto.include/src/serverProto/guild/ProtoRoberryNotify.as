package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGuildActivityPlayerInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRoberryNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ROBBER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoRoberryNotify.robber", "robber", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildActivityPlayerInfo);

		public var robber:serverProto.guild.ProtoGuildActivityPlayerInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.robber);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var robber$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (robber$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoberryNotify.robber cannot be set twice.');
					}
					++robber$count;
					this.robber = new serverProto.guild.ProtoGuildActivityPlayerInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.robber);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
