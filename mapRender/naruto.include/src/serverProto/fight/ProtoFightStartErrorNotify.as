package serverProto.fight {
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
	public  final class ProtoFightStartErrorNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ERROR_CODE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightStartErrorNotify.error_code", "errorCode", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var errorCode:uint;

		/**
		 *  @private
		 */
		public static const ERROR_MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoFightStartErrorNotify.error_msg", "errorMsg", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var error_msg$field:String;

		public function clearErrorMsg():void {
			error_msg$field = null;
		}

		public function get hasErrorMsg():Boolean {
			return error_msg$field != null;
		}

		public function set errorMsg(value:String):void {
			error_msg$field = value;
		}

		public function get errorMsg():String {
			return error_msg$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.errorCode);
			if (hasErrorMsg) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, error_msg$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var error_code$count:uint = 0;
			var error_msg$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (error_code$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartErrorNotify.errorCode cannot be set twice.');
					}
					++error_code$count;
					this.errorCode = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (error_msg$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartErrorNotify.errorMsg cannot be set twice.');
					}
					++error_msg$count;
					this.errorMsg = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
