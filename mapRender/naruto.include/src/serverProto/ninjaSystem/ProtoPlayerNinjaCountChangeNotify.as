package serverProto.ninjaSystem {
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
	public  final class ProtoPlayerNinjaCountChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const AWAKE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoPlayerNinjaCountChangeNotify.awake_ninja_count", "awakeNinjaCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awake_ninja_count$field:int;

		private var hasField$0:uint = 0;

		public function clearAwakeNinjaCount():void {
			hasField$0 &= 0xfffffffe;
			awake_ninja_count$field = new int();
		}

		public function get hasAwakeNinjaCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awakeNinjaCount(value:int):void {
			hasField$0 |= 0x1;
			awake_ninja_count$field = value;
		}

		public function get awakeNinjaCount():int {
			return awake_ninja_count$field;
		}

		/**
		 *  @private
		 */
		public static const RECRUIT_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoPlayerNinjaCountChangeNotify.recruit_ninja_count", "recruitNinjaCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recruit_ninja_count$field:int;

		public function clearRecruitNinjaCount():void {
			hasField$0 &= 0xfffffffd;
			recruit_ninja_count$field = new int();
		}

		public function get hasRecruitNinjaCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set recruitNinjaCount(value:int):void {
			hasField$0 |= 0x2;
			recruit_ninja_count$field = value;
		}

		public function get recruitNinjaCount():int {
			return recruit_ninja_count$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_STAR_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoPlayerNinjaCountChangeNotify.upgrade_star_count", "upgradeStarCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_star_count$field:int;

		public function clearUpgradeStarCount():void {
			hasField$0 &= 0xfffffffb;
			upgrade_star_count$field = new int();
		}

		public function get hasUpgradeStarCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set upgradeStarCount(value:int):void {
			hasField$0 |= 0x4;
			upgrade_star_count$field = value;
		}

		public function get upgradeStarCount():int {
			return upgrade_star_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAwakeNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, awake_ninja_count$field);
			}
			if (hasRecruitNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, recruit_ninja_count$field);
			}
			if (hasUpgradeStarCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, upgrade_star_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var awake_ninja_count$count:uint = 0;
			var recruit_ninja_count$count:uint = 0;
			var upgrade_star_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (awake_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerNinjaCountChangeNotify.awakeNinjaCount cannot be set twice.');
					}
					++awake_ninja_count$count;
					this.awakeNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (recruit_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerNinjaCountChangeNotify.recruitNinjaCount cannot be set twice.');
					}
					++recruit_ninja_count$count;
					this.recruitNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (upgrade_star_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerNinjaCountChangeNotify.upgradeStarCount cannot be set twice.');
					}
					++upgrade_star_count$count;
					this.upgradeStarCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
