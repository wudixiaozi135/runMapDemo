package serverProto.talent {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.talent.OperateTalentPageCmd;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpTalentPageRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.talent.ProtoOpTalentPageRequest.cmd", "cmd", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.talent.OperateTalentPageCmd);

		public var cmd:int;

		/**
		 *  @private
		 */
		public static const PAGE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoOpTalentPageRequest.page_index", "pageIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var page_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearPageIndex():void {
			hasField$0 &= 0xfffffffe;
			page_index$field = new uint();
		}

		public function get hasPageIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set pageIndex(value:uint):void {
			hasField$0 |= 0x1;
			page_index$field = value;
		}

		public function get pageIndex():uint {
			return page_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmd);
			if (hasPageIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, page_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd$count:uint = 0;
			var page_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpTalentPageRequest.cmd cannot be set twice.');
					}
					++cmd$count;
					this.cmd = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (page_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpTalentPageRequest.pageIndex cannot be set twice.');
					}
					++page_index$count;
					this.pageIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
