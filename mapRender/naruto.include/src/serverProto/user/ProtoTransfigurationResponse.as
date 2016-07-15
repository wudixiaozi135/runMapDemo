package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.user.ProtoTransfigurationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTransfigurationResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoTransfigurationResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret_info$field:serverProto.inc.ProtoRetInfo;

		public function clearRetInfo():void {
			ret_info$field = null;
		}

		public function get hasRetInfo():Boolean {
			return ret_info$field != null;
		}

		public function set retInfo(value:serverProto.inc.ProtoRetInfo):void {
			ret_info$field = value;
		}

		public function get retInfo():serverProto.inc.ProtoRetInfo {
			return ret_info$field;
		}

		/**
		 *  @private
		 */
		public static const INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoTransfigurationResponse.info", "info", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoTransfigurationInfo);

		private var info$field:serverProto.user.ProtoTransfigurationInfo;

		public function clearInfo():void {
			info$field = null;
		}

		public function get hasInfo():Boolean {
			return info$field != null;
		}

		public function set info(value:serverProto.user.ProtoTransfigurationInfo):void {
			info$field = value;
		}

		public function get info():serverProto.user.ProtoTransfigurationInfo {
			return info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRetInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret_info$field);
			}
			if (hasInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, info$field);
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
			var info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationResponse.info cannot be set twice.');
					}
					++info$count;
					this.info = new serverProto.user.ProtoTransfigurationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.info);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
