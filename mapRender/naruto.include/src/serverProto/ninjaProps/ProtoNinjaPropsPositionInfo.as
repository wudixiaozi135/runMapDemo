package serverProto.ninjaProps {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.ninjaProps.ProtoNinjaPropsInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropsPositionInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsPositionInfo.open_level", "openLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:int;

		private var hasField$0:uint = 0;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffe;
			open_level$field = new int();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set openLevel(value:int):void {
			hasField$0 |= 0x1;
			open_level$field = value;
		}

		public function get openLevel():int {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsPositionInfo.ninja_props_info", "ninjaPropsInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaProps.ProtoNinjaPropsInfo);

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
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, open_level$field);
			}
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
			var open_level$count:uint = 0;
			var ninja_props_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsPositionInfo.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (ninja_props_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsPositionInfo.ninjaPropsInfo cannot be set twice.');
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
