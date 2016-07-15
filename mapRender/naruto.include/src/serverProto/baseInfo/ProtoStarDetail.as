package serverProto.baseInfo {
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
	public  final class ProtoStarDetail extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UPGRADE_STAR_NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoStarDetail.upgrade_star_ninja_id", "upgradeStarNinjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_star_ninja_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearUpgradeStarNinjaId():void {
			hasField$0 &= 0xfffffffe;
			upgrade_star_ninja_id$field = new uint();
		}

		public function get hasUpgradeStarNinjaId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set upgradeStarNinjaId(value:uint):void {
			hasField$0 |= 0x1;
			upgrade_star_ninja_id$field = value;
		}

		public function get upgradeStarNinjaId():uint {
			return upgrade_star_ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const STAR_ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoStarDetail.star_addition", "starAddition", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var star_addition$field:uint;

		public function clearStarAddition():void {
			hasField$0 &= 0xfffffffd;
			star_addition$field = new uint();
		}

		public function get hasStarAddition():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set starAddition(value:uint):void {
			hasField$0 |= 0x2;
			star_addition$field = value;
		}

		public function get starAddition():uint {
			return star_addition$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasUpgradeStarNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, upgrade_star_ninja_id$field);
			}
			if (hasStarAddition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, star_addition$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var upgrade_star_ninja_id$count:uint = 0;
			var star_addition$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (upgrade_star_ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStarDetail.upgradeStarNinjaId cannot be set twice.');
					}
					++upgrade_star_ninja_id$count;
					this.upgradeStarNinjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (star_addition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStarDetail.starAddition cannot be set twice.');
					}
					++star_addition$count;
					this.starAddition = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
