package serverProto.tabard {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.tabard.ProtoTabardInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCommTabardInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tabard.ProtoCommTabardInfoRsp.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TABARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tabard.ProtoCommTabardInfoRsp.tabard_info", "tabardInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.tabard.ProtoTabardInfo);

		private var tabard_info$field:serverProto.tabard.ProtoTabardInfo;

		public function clearTabardInfo():void {
			tabard_info$field = null;
		}

		public function get hasTabardInfo():Boolean {
			return tabard_info$field != null;
		}

		public function set tabardInfo(value:serverProto.tabard.ProtoTabardInfo):void {
			tabard_info$field = value;
		}

		public function get tabardInfo():serverProto.tabard.ProtoTabardInfo {
			return tabard_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasTabardInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, tabard_info$field);
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
			var tabard_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommTabardInfoRsp.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (tabard_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommTabardInfoRsp.tabardInfo cannot be set twice.');
					}
					++tabard_info$count;
					this.tabardInfo = new serverProto.tabard.ProtoTabardInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.tabardInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
