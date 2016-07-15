package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.baseInfo.ProtoNinjaPackage;
	import serverProto.formationBase.ProtoFormationInfo;
	import serverProto.ninjaSystem.ProtoNinjStorage;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetPlayerNinjaTroopResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.ninja_package", "ninjaPackage", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPackage);

		private var ninja_package$field:serverProto.baseInfo.ProtoNinjaPackage;

		public function clearNinjaPackage():void {
			ninja_package$field = null;
		}

		public function get hasNinjaPackage():Boolean {
			return ninja_package$field != null;
		}

		public function set ninjaPackage(value:serverProto.baseInfo.ProtoNinjaPackage):void {
			ninja_package$field = value;
		}

		public function get ninjaPackage():serverProto.baseInfo.ProtoNinjaPackage {
			return ninja_package$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_STORAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.ninja_storage", "ninjaStorage", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoNinjStorage);

		private var ninja_storage$field:serverProto.ninjaSystem.ProtoNinjStorage;

		public function clearNinjaStorage():void {
			ninja_storage$field = null;
		}

		public function get hasNinjaStorage():Boolean {
			return ninja_storage$field != null;
		}

		public function set ninjaStorage(value:serverProto.ninjaSystem.ProtoNinjStorage):void {
			ninja_storage$field = value;
		}

		public function get ninjaStorage():serverProto.ninjaSystem.ProtoNinjStorage {
			return ninja_storage$field;
		}

		/**
		 *  @private
		 */
		public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.formation_info", "formationInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var formation_info$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearFormationInfo():void {
			formation_info$field = null;
		}

		public function get hasFormationInfo():Boolean {
			return formation_info$field != null;
		}

		public function set formationInfo(value:serverProto.formationBase.ProtoFormationInfo):void {
			formation_info$field = value;
		}

		public function get formationInfo():serverProto.formationBase.ProtoFormationInfo {
			return formation_info$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.awake_ninja_count", "awakeNinjaCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const RECRUIT_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.recruit_ninja_count", "recruitNinjaCount", (7 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const UPGRADE_STAR_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.upgrade_star_count", "upgradeStarCount", (8 << 3) | com.netease.protobuf.WireType.VARINT);

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
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNinjaPackage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_package$field);
			}
			if (hasNinjaStorage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_storage$field);
			}
			if (hasFormationInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, formation_info$field);
			}
			if (hasAwakeNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, awake_ninja_count$field);
			}
			if (hasRecruitNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, recruit_ninja_count$field);
			}
			if (hasUpgradeStarCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
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
			var ret$count:uint = 0;
			var ninja_package$count:uint = 0;
			var ninja_storage$count:uint = 0;
			var formation_info$count:uint = 0;
			var awake_ninja_count$count:uint = 0;
			var recruit_ninja_count$count:uint = 0;
			var upgrade_star_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (ninja_package$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.ninjaPackage cannot be set twice.');
					}
					++ninja_package$count;
					this.ninjaPackage = new serverProto.baseInfo.ProtoNinjaPackage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaPackage);
					break;
				case 3:
					if (ninja_storage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.ninjaStorage cannot be set twice.');
					}
					++ninja_storage$count;
					this.ninjaStorage = new serverProto.ninjaSystem.ProtoNinjStorage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaStorage);
					break;
				case 4:
					if (formation_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.formationInfo cannot be set twice.');
					}
					++formation_info$count;
					this.formationInfo = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formationInfo);
					break;
				case 5:
					if (awake_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.awakeNinjaCount cannot be set twice.');
					}
					++awake_ninja_count$count;
					this.awakeNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (recruit_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.recruitNinjaCount cannot be set twice.');
					}
					++recruit_ninja_count$count;
					this.recruitNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (upgrade_star_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerNinjaTroopResponse.upgradeStarCount cannot be set twice.');
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
