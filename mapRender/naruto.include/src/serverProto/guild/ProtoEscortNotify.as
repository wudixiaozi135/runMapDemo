package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoEscortInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoEscortNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ESCORT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoEscortNotify.escort_info", "escortInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoEscortInfo);

		private var escort_info$field:serverProto.guild.ProtoEscortInfo;

		public function clearEscortInfo():void {
			escort_info$field = null;
		}

		public function get hasEscortInfo():Boolean {
			return escort_info$field != null;
		}

		public function set escortInfo(value:serverProto.guild.ProtoEscortInfo):void {
			escort_info$field = value;
		}

		public function get escortInfo():serverProto.guild.ProtoEscortInfo {
			return escort_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEscortInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, escort_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var escort_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					if (escort_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEscortNotify.escortInfo cannot be set twice.');
					}
					++escort_info$count;
					this.escortInfo = new serverProto.guild.ProtoEscortInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.escortInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
