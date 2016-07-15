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
	import serverProto.ninjaProps.ProtoNinjaPropsInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetNinjaPorpsTipsInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoGetNinjaPorpsTipsInfoResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoGetNinjaPorpsTipsInfoResponse.ninja_props_info", "ninjaPropsInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaProps.ProtoNinjaPropsInfo);

		private var ninja_props_info$field:serverProto.ninjaProps.ProtoNinjaPropsInfo;

		public function clearNinjaPropsInfo():void {
			ninja_props_info$field = null;
		}

		public function get hasNinjaPropsInfo():Boolean {
			return ninja_props_info$field != null;
		}

		public function set ninjaPropsInfo(value:serverProto.ninjaProps.ProtoNinjaPropsInfo):void {
			ninja_props_info$field = value;
		}

		public function get ninjaPropsInfo():serverProto.ninjaProps.ProtoNinjaPropsInfo {
			return ninja_props_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasNinjaPropsInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_props_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var ninja_props_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPorpsTipsInfoResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (ninja_props_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPorpsTipsInfoResponse.ninjaPropsInfo cannot be set twice.');
					}
					++ninja_props_info$count;
					this.ninjaPropsInfo = new serverProto.ninjaProps.ProtoNinjaPropsInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaPropsInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
