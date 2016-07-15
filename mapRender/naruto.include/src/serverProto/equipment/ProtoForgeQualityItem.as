package serverProto.equipment {
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
	public  final class ProtoForgeQualityItem extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FORGE_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoForgeQualityItem.forge_percent", "forgePercent", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_percent$field:int;

		private var hasField$0:uint = 0;

		public function clearForgePercent():void {
			hasField$0 &= 0xfffffffe;
			forge_percent$field = new int();
		}

		public function get hasForgePercent():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set forgePercent(value:int):void {
			hasField$0 |= 0x1;
			forge_percent$field = value;
		}

		public function get forgePercent():int {
			return forge_percent$field;
		}

		/**
		 *  @private
		 */
		public static const FORGE_ADDITION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoForgeQualityItem.forge_addition", "forgeAddition", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var forge_addition$field:int;

		public function clearForgeAddition():void {
			hasField$0 &= 0xfffffffd;
			forge_addition$field = new int();
		}

		public function get hasForgeAddition():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set forgeAddition(value:int):void {
			hasField$0 |= 0x2;
			forge_addition$field = value;
		}

		public function get forgeAddition():int {
			return forge_addition$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasForgePercent) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, forge_percent$field);
			}
			if (hasForgeAddition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, forge_addition$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var forge_percent$count:uint = 0;
			var forge_addition$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (forge_percent$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoForgeQualityItem.forgePercent cannot be set twice.');
					}
					++forge_percent$count;
					this.forgePercent = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (forge_addition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoForgeQualityItem.forgeAddition cannot be set twice.');
					}
					++forge_addition$count;
					this.forgeAddition = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
