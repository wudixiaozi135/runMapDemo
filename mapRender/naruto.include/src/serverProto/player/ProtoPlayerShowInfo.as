package serverProto.player {
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
	import serverProto.player.ProtoMoveNotifyType;
	import serverProto.user.ProtoTaskSign;
	import serverProto.inc.ProtoPoint;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerShowInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.player_key", "playerKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerKey():void {
			player_key$field = null;
		}

		public function get hasPlayerKey():Boolean {
			return player_key$field != null;
		}

		public function set playerKey(value:serverProto.inc.ProtoPlayerKey):void {
			player_key$field = value;
		}

		public function get playerKey():serverProto.inc.ProtoPlayerKey {
			return player_key$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.ninja", "ninja", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja$field:int;

		private var hasField$0:uint = 0;

		public function clearNinja():void {
			hasField$0 &= 0xfffffffe;
			ninja$field = new int();
		}

		public function get hasNinja():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninja(value:int):void {
			hasField$0 |= 0x1;
			ninja$field = value;
		}

		public function get ninja():int {
			return ninja$field;
		}

		/**
		 *  @private
		 */
		public static const NOTIFY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerShowInfo.notify_type", "notifyType", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.player.ProtoMoveNotifyType);

		private var notify_type$field:int;

		public function clearNotifyType():void {
			hasField$0 &= 0xfffffffd;
			notify_type$field = new int();
		}

		public function get hasNotifyType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set notifyType(value:int):void {
			hasField$0 |= 0x2;
			notify_type$field = value;
		}

		public function get notifyType():int {
			return notify_type$field;
		}

		/**
		 *  @private
		 */
		public static const POINTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.points", "points", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		[ArrayElementType("serverProto.inc.ProtoPoint")]
		public var points:Array = [];

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.player.ProtoPlayerShowInfo.name", "name", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const IS_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.player.ProtoPlayerShowInfo.is_fight", "isFight", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_fight$field:Boolean;

		public function clearIsFight():void {
			hasField$0 &= 0xfffffffb;
			is_fight$field = new Boolean();
		}

		public function get hasIsFight():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set isFight(value:Boolean):void {
			hasField$0 |= 0x4;
			is_fight$field = value;
		}

		public function get isFight():Boolean {
			return is_fight$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerShowInfo.vip_level", "vipLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffff7;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x8;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.level", "level", (8 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.player.ProtoPlayerShowInfo.title_id", "titleId", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var title_id$field:uint;

		public function clearTitleId():void {
			hasField$0 &= 0xffffffdf;
			title_id$field = new uint();
		}

		public function get hasTitleId():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set titleId(value:uint):void {
			hasField$0 |= 0x20;
			title_id$field = value;
		}

		public function get titleId():uint {
			return title_id$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.diamond_info", "diamondInfo", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
		public static const TASK_SIGN:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerShowInfo.task_sign", "taskSign", (11 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ProtoTaskSign);

		private var task_sign$field:int;

		public function clearTaskSign():void {
			hasField$0 &= 0xffffffbf;
			task_sign$field = new int();
		}

		public function get hasTaskSign():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set taskSign(value:int):void {
			hasField$0 |= 0x40;
			task_sign$field = value;
		}

		public function get taskSign():int {
			return task_sign$field;
		}

		/**
		 *  @private
		 */
		public static const SHOW_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.show_ninja", "showNinja", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_ninja$field:int;

		public function clearShowNinja():void {
			hasField$0 &= 0xffffff7f;
			show_ninja$field = new int();
		}

		public function get hasShowNinja():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set showNinja(value:int):void {
			hasField$0 |= 0x80;
			show_ninja$field = value;
		}

		public function get showNinja():int {
			return show_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.fashion_ninja", "fashionNinja", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fashion_ninja$field:int;

		public function clearFashionNinja():void {
			hasField$0 &= 0xfffffeff;
			fashion_ninja$field = new int();
		}

		public function get hasFashionNinja():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set fashionNinja(value:int):void {
			hasField$0 |= 0x100;
			fashion_ninja$field = value;
		}

		public function get fashionNinja():int {
			return fashion_ninja$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			if (hasNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja$field);
			}
			if (hasNotifyType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, notify_type$field);
			}
			for (var points$index:uint = 0; points$index < this.points.length; ++points$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.points[points$index]);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasIsFight) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_fight$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			if (hasTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, title_id$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasTaskSign) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, task_sign$field);
			}
			if (hasShowNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_ninja$field);
			}
			if (hasFashionNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
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
			var player_key$count:uint = 0;
			var ninja$count:uint = 0;
			var notify_type$count:uint = 0;
			var name$count:uint = 0;
			var is_fight$count:uint = 0;
			var vip_level$count:uint = 0;
			var level$count:uint = 0;
			var title_id$count:uint = 0;
			var diamond_info$count:uint = 0;
			var task_sign$count:uint = 0;
			var show_ninja$count:uint = 0;
			var fashion_ninja$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 2:
					if (ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.ninja cannot be set twice.');
					}
					++ninja$count;
					this.ninja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (notify_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.notifyType cannot be set twice.');
					}
					++notify_type$count;
					this.notifyType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					this.points.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoPoint()));
					break;
				case 5:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (is_fight$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.isFight cannot be set twice.');
					}
					++is_fight$count;
					this.isFight = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 7:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 8:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.titleId cannot be set twice.');
					}
					++title_id$count;
					this.titleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 11:
					if (task_sign$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.taskSign cannot be set twice.');
					}
					++task_sign$count;
					this.taskSign = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 12:
					if (show_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.showNinja cannot be set twice.');
					}
					++show_ninja$count;
					this.showNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (fashion_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfo.fashionNinja cannot be set twice.');
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
