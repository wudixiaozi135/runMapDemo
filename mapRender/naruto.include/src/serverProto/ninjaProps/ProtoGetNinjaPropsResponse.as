package serverProto.ninjaProps {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.ninjaProps.ProtoNinjaPropsPositionInfo;
	import serverProto.ninjaProps.ProtoNinjaPropsInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetNinjaPropsResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoGetNinjaPropsResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_POSITON:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoGetNinjaPropsResponse.ninja_props_positon", "ninjaPropsPositon", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaProps.ProtoNinjaPropsPositionInfo);

		[ArrayElementType("serverProto.ninjaProps.ProtoNinjaPropsPositionInfo")]
		public var ninjaPropsPositon:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoGetNinjaPropsResponse.ninja_props_list", "ninjaPropsList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaProps.ProtoNinjaPropsInfo);

		[ArrayElementType("serverProto.ninjaProps.ProtoNinjaPropsInfo")]
		public var ninjaPropsList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var ninjaPropsPositon$index:uint = 0; ninjaPropsPositon$index < this.ninjaPropsPositon.length; ++ninjaPropsPositon$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaPropsPositon[ninjaPropsPositon$index]);
			}
			for (var ninjaPropsList$index:uint = 0; ninjaPropsList$index < this.ninjaPropsList.length; ++ninjaPropsList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaPropsList[ninjaPropsList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPropsResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.ninjaPropsPositon.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.ninjaProps.ProtoNinjaPropsPositionInfo()));
					break;
				case 3:
					this.ninjaPropsList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.ninjaProps.ProtoNinjaPropsInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
