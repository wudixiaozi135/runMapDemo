package serverProto.ninjaProps {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropsLevelUpRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DEST_NINJA_PROPS_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpRequest.dest_ninja_props_index", "destNinjaPropsIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var destNinjaPropsIndex:uint;

		/**
		 *  @private
		 */
		public static const USE_NINJA_PROPS_INDEX:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpRequest.use_ninja_props_index", "useNinjaPropsIndex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var useNinjaPropsIndex:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.destNinjaPropsIndex);
			for (var useNinjaPropsIndex$index:uint = 0; useNinjaPropsIndex$index < this.useNinjaPropsIndex.length; ++useNinjaPropsIndex$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.useNinjaPropsIndex[useNinjaPropsIndex$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var dest_ninja_props_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					if (dest_ninja_props_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsLevelUpRequest.destNinjaPropsIndex cannot be set twice.');
					}
					++dest_ninja_props_index$count;
					this.destNinjaPropsIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.useNinjaPropsIndex);
						break;
					}
					this.useNinjaPropsIndex.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
