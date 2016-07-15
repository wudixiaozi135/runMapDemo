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
	public  final class ProtoGuildUpgradeReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UPGRADE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeReq.upgrade_type", "upgradeType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearUpgradeType():void {
			hasField$0 &= 0xfffffffe;
			upgrade_type$field = new uint();
		}

		public function get hasUpgradeType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set upgradeType(value:uint):void {
			hasField$0 |= 0x1;
			upgrade_type$field = value;
		}

		public function get upgradeType():uint {
			return upgrade_type$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasUpgradeType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, upgrade_type$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var upgrade_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (upgrade_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildUpgradeReq.upgradeType cannot be set twice.');
					}
					++upgrade_type$count;
					this.upgradeType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
