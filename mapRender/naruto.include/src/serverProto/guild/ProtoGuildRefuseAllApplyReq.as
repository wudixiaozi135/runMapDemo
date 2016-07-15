package serverProto.guild {
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
	public  final class ProtoGuildRefuseAllApplyReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const YES_OR_NO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRefuseAllApplyReq.yes_or_no", "yesOrNo", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var yes_or_no$field:uint;

		private var hasField$0:uint = 0;

		public function clearYesOrNo():void {
			hasField$0 &= 0xfffffffe;
			yes_or_no$field = new uint();
		}

		public function get hasYesOrNo():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set yesOrNo(value:uint):void {
			hasField$0 |= 0x1;
			yes_or_no$field = value;
		}

		public function get yesOrNo():uint {
			return yes_or_no$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasYesOrNo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, yes_or_no$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var yes_or_no$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					if (yes_or_no$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRefuseAllApplyReq.yesOrNo cannot be set twice.');
					}
					++yes_or_no$count;
					this.yesOrNo = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
