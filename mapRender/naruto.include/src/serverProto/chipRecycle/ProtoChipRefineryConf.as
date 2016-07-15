package serverProto.chipRecycle {
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
	public  final class ProtoChipRefineryConf extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NEED_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryConf.need_exp", "needExp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_exp$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedExp():void {
			hasField$0 &= 0xfffffffe;
			need_exp$field = new int();
		}

		public function get hasNeedExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needExp(value:int):void {
			hasField$0 |= 0x1;
			need_exp$field = value;
		}

		public function get needExp():int {
			return need_exp$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_ID:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryConf.package_id", "packageId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var packageId:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNeedExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_exp$field);
			}
			for (var packageId$index:uint = 0; packageId$index < this.packageId.length; ++packageId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.packageId[packageId$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var need_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (need_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChipRefineryConf.needExp cannot be set twice.');
					}
					++need_exp$count;
					this.needExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.packageId);
						break;
					}
					this.packageId.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
