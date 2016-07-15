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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateNinjaPropsResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoOperateNinjaPropsResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_POSITON:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoOperateNinjaPropsResponse.ninja_props_positon", "ninjaPropsPositon", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaProps.ProtoNinjaPropsPositionInfo);

		private var ninja_props_positon$field:serverProto.ninjaProps.ProtoNinjaPropsPositionInfo;

		public function clearNinjaPropsPositon():void {
			ninja_props_positon$field = null;
		}

		public function get hasNinjaPropsPositon():Boolean {
			return ninja_props_positon$field != null;
		}

		public function set ninjaPropsPositon(value:serverProto.ninjaProps.ProtoNinjaPropsPositionInfo):void {
			ninja_props_positon$field = value;
		}

		public function get ninjaPropsPositon():serverProto.ninjaProps.ProtoNinjaPropsPositionInfo {
			return ninja_props_positon$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNinjaPropsPositon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_props_positon$field);
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
			var ninja_props_positon$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateNinjaPropsResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (ninja_props_positon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateNinjaPropsResponse.ninjaPropsPositon cannot be set twice.');
					}
					++ninja_props_positon$count;
					this.ninjaPropsPositon = new serverProto.ninjaProps.ProtoNinjaPropsPositionInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaPropsPositon);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
