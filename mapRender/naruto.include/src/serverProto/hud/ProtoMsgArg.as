package serverProto.hud {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoEquipInfo;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMsgArg extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REP_STRING:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.hud.ProtoMsgArg.rep_string", "repString", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var rep_string$field:String;

		public function clearRepString():void {
			rep_string$field = null;
		}

		public function get hasRepString():Boolean {
			return rep_string$field != null;
		}

		public function set repString(value:String):void {
			rep_string$field = value;
		}

		public function get repString():String {
			return rep_string$field;
		}

		/**
		 *  @private
		 */
		public static const REP_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoMsgArg.rep_flag", "repFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rep_flag$field:uint;

		private var hasField$0:uint = 0;

		public function clearRepFlag():void {
			hasField$0 &= 0xfffffffe;
			rep_flag$field = new uint();
		}

		public function get hasRepFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set repFlag(value:uint):void {
			hasField$0 |= 0x1;
			rep_flag$field = value;
		}

		public function get repFlag():uint {
			return rep_flag$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoMsgArg.player_key", "playerKey", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const INT_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoMsgArg.int_data", "intData", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var int_data$field:uint;

		public function clearIntData():void {
			hasField$0 &= 0xfffffffd;
			int_data$field = new uint();
		}

		public function get hasIntData():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set intData(value:uint):void {
			hasField$0 |= 0x2;
			int_data$field = value;
		}

		public function get intData():uint {
			return int_data$field;
		}

		/**
		 *  @private
		 */
		public static const STR_DATA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.hud.ProtoMsgArg.str_data", "strData", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var str_data$field:String;

		public function clearStrData():void {
			str_data$field = null;
		}

		public function get hasStrData():Boolean {
			return str_data$field != null;
		}

		public function set strData(value:String):void {
			str_data$field = value;
		}

		public function get strData():String {
			return str_data$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoMsgArg.equip_info", "equipInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

		private var equip_info$field:serverProto.bag.ProtoEquipInfo;

		public function clearEquipInfo():void {
			equip_info$field = null;
		}

		public function get hasEquipInfo():Boolean {
			return equip_info$field != null;
		}

		public function set equipInfo(value:serverProto.bag.ProtoEquipInfo):void {
			equip_info$field = value;
		}

		public function get equipInfo():serverProto.bag.ProtoEquipInfo {
			return equip_info$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_DIAMOND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoMsgArg.player_diamond", "playerDiamond", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var player_diamond$field:serverProto.inc.ProtoDiamondInfo;

		public function clearPlayerDiamond():void {
			player_diamond$field = null;
		}

		public function get hasPlayerDiamond():Boolean {
			return player_diamond$field != null;
		}

		public function set playerDiamond(value:serverProto.inc.ProtoDiamondInfo):void {
			player_diamond$field = value;
		}

		public function get playerDiamond():serverProto.inc.ProtoDiamondInfo {
			return player_diamond$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.hud.ProtoMsgArg.player_vip_level", "playerVipLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_vip_level$field:int;

		public function clearPlayerVipLevel():void {
			hasField$0 &= 0xfffffffb;
			player_vip_level$field = new int();
		}

		public function get hasPlayerVipLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set playerVipLevel(value:int):void {
			hasField$0 |= 0x4;
			player_vip_level$field = value;
		}

		public function get playerVipLevel():int {
			return player_vip_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRepString) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, rep_string$field);
			}
			if (hasRepFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rep_flag$field);
			}
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			if (hasIntData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, int_data$field);
			}
			if (hasStrData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, str_data$field);
			}
			if (hasEquipInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equip_info$field);
			}
			if (hasPlayerDiamond) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_diamond$field);
			}
			if (hasPlayerVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, player_vip_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rep_string$count:uint = 0;
			var rep_flag$count:uint = 0;
			var player_key$count:uint = 0;
			var int_data$count:uint = 0;
			var str_data$count:uint = 0;
			var equip_info$count:uint = 0;
			var player_diamond$count:uint = 0;
			var player_vip_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rep_string$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.repString cannot be set twice.');
					}
					++rep_string$count;
					this.repString = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (rep_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.repFlag cannot be set twice.');
					}
					++rep_flag$count;
					this.repFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 4:
					if (int_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.intData cannot be set twice.');
					}
					++int_data$count;
					this.intData = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (str_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.strData cannot be set twice.');
					}
					++str_data$count;
					this.strData = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (equip_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.equipInfo cannot be set twice.');
					}
					++equip_info$count;
					this.equipInfo = new serverProto.bag.ProtoEquipInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipInfo);
					break;
				case 8:
					if (player_diamond$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.playerDiamond cannot be set twice.');
					}
					++player_diamond$count;
					this.playerDiamond = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerDiamond);
					break;
				case 9:
					if (player_vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMsgArg.playerVipLevel cannot be set twice.');
					}
					++player_vip_level$count;
					this.playerVipLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
