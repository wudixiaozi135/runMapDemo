package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.team.ProtoTeamMemberStatus;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamMemberInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamMemberInfo.player", "player", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var player:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const IS_CAPTAIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoTeamMemberInfo.is_captain", "isCaptain", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_captain$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsCaptain():void {
			hasField$0 &= 0xfffffffe;
			is_captain$field = new Boolean();
		}

		public function get hasIsCaptain():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isCaptain(value:Boolean):void {
			hasField$0 |= 0x1;
			is_captain$field = value;
		}

		public function get isCaptain():Boolean {
			return is_captain$field;
		}

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.index", "index", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var index$field:int;

		public function clearIndex():void {
			hasField$0 &= 0xfffffffd;
			index$field = new int();
		}

		public function get hasIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set index(value:int):void {
			hasField$0 |= 0x2;
			index$field = value;
		}

		public function get index():int {
			return index$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.ninja", "ninja", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja$field:int;

		public function clearNinja():void {
			hasField$0 &= 0xfffffffb;
			ninja$field = new int();
		}

		public function get hasNinja():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ninja(value:int):void {
			hasField$0 |= 0x4;
			ninja$field = value;
		}

		public function get ninja():int {
			return ninja$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoTeamMemberInfo.name", "name", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamMemberInfo.status", "status", (6 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamMemberStatus);

		private var status$field:int;

		public function clearStatus():void {
			hasField$0 &= 0xfffffff7;
			status$field = new int();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set status(value:int):void {
			hasField$0 |= 0x8;
			status$field = value;
		}

		public function get status():int {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.level", "level", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xffffffef;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x10;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.current_hp", "currentHp", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_hp$field:int;

		public function clearCurrentHp():void {
			hasField$0 &= 0xffffffdf;
			current_hp$field = new int();
		}

		public function get hasCurrentHp():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set currentHp(value:int):void {
			hasField$0 |= 0x20;
			current_hp$field = value;
		}

		public function get currentHp():int {
			return current_hp$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.max_hp", "maxHp", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:int;

		public function clearMaxHp():void {
			hasField$0 &= 0xffffffbf;
			max_hp$field = new int();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set maxHp(value:int):void {
			hasField$0 |= 0x40;
			max_hp$field = value;
		}

		public function get maxHp():int {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const FORMATION_NINJAI_LIST:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.formation_ninjai_list", "formationNinjaiList", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var formationNinjaiList:Array = [];

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamMemberInfo.vip_level", "vipLevel", (11 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xffffff7f;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x80;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamMemberInfo.diamond_info", "diamondInfo", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var diamond_info$field:serverProto.inc.ProtoDiamondInfo;

		public function clearDiamondInfo():void {
			diamond_info$field = null;
		}

		public function get hasDiamondInfo():Boolean {
			return diamond_info$field != null;
		}

		public function set diamondInfo(value:serverProto.inc.ProtoDiamondInfo):void {
			diamond_info$field = value;
		}

		public function get diamondInfo():serverProto.inc.ProtoDiamondInfo {
			return diamond_info$field;
		}

		/**
		 *  @private
		 */
		public static const SHOW_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.show_ninja", "showNinja", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_ninja$field:int;

		public function clearShowNinja():void {
			hasField$0 &= 0xfffffeff;
			show_ninja$field = new int();
		}

		public function get hasShowNinja():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set showNinja(value:int):void {
			hasField$0 |= 0x100;
			show_ninja$field = value;
		}

		public function get showNinja():int {
			return show_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.fashion_ninja", "fashionNinja", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fashion_ninja$field:int;

		public function clearFashionNinja():void {
			hasField$0 &= 0xfffffdff;
			fashion_ninja$field = new int();
		}

		public function get hasFashionNinja():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set fashionNinja(value:int):void {
			hasField$0 |= 0x200;
			fashion_ninja$field = value;
		}

		public function get fashionNinja():int {
			return fashion_ninja$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.player);
			if (hasIsCaptain) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_captain$field);
			}
			if (hasIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, index$field);
			}
			if (hasNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, status$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			if (hasCurrentHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_hp$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_hp$field);
			}
			for (var formationNinjaiList$index:uint = 0; formationNinjaiList$index < this.formationNinjaiList.length; ++formationNinjaiList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.formationNinjaiList[formationNinjaiList$index]);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasShowNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_ninja$field);
			}
			if (hasFashionNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, fashion_ninja$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player$count:uint = 0;
			var is_captain$count:uint = 0;
			var index$count:uint = 0;
			var ninja$count:uint = 0;
			var name$count:uint = 0;
			var status$count:uint = 0;
			var level$count:uint = 0;
			var current_hp$count:uint = 0;
			var max_hp$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			var show_ninja$count:uint = 0;
			var fashion_ninja$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.player cannot be set twice.');
					}
					++player$count;
					this.player = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.player);
					break;
				case 2:
					if (is_captain$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.isCaptain cannot be set twice.');
					}
					++is_captain$count;
					this.isCaptain = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.ninja cannot be set twice.');
					}
					++ninja$count;
					this.ninja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 7:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (current_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.currentHp cannot be set twice.');
					}
					++current_hp$count;
					this.currentHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.formationNinjaiList);
						break;
					}
					this.formationNinjaiList.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 11:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 12:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 15:
					if (show_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.showNinja cannot be set twice.');
					}
					++show_ninja$count;
					this.showNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (fashion_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberInfo.fashionNinja cannot be set twice.');
					}
					++fashion_ninja$count;
					this.fashionNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
