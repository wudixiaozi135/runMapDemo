package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.basePvp.ProtoBaseNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseAttackInformation extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DEFENDER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseAttackInformation.defender_name", "defenderName", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var defender_name$field:String;

		public function clearDefenderName():void {
			defender_name$field = null;
		}

		public function get hasDefenderName():Boolean {
			return defender_name$field != null;
		}

		public function set defenderName(value:String):void {
			defender_name$field = value;
		}

		public function get defenderName():String {
			return defender_name$field;
		}

		/**
		 *  @private
		 */
		public static const DEFENDER_UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.defender_uin", "defenderUin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var defender_uin$field:uint;

		private var hasField$0:uint = 0;

		public function clearDefenderUin():void {
			hasField$0 &= 0xfffffffe;
			defender_uin$field = new uint();
		}

		public function get hasDefenderUin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set defenderUin(value:uint):void {
			hasField$0 |= 0x1;
			defender_uin$field = value;
		}

		public function get defenderUin():uint {
			return defender_uin$field;
		}

		/**
		 *  @private
		 */
		public static const DEFENDER_SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.defender_svr_id", "defenderSvrId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var defender_svr_id$field:uint;

		public function clearDefenderSvrId():void {
			hasField$0 &= 0xfffffffd;
			defender_svr_id$field = new uint();
		}

		public function get hasDefenderSvrId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set defenderSvrId(value:uint):void {
			hasField$0 |= 0x2;
			defender_svr_id$field = value;
		}

		public function get defenderSvrId():uint {
			return defender_svr_id$field;
		}

		/**
		 *  @private
		 */
		public static const DEFENDER_ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.defender_role_id", "defenderRoleId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var defender_role_id$field:uint;

		public function clearDefenderRoleId():void {
			hasField$0 &= 0xfffffffb;
			defender_role_id$field = new uint();
		}

		public function get hasDefenderRoleId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set defenderRoleId(value:uint):void {
			hasField$0 |= 0x4;
			defender_role_id$field = value;
		}

		public function get defenderRoleId():uint {
			return defender_role_id$field;
		}

		/**
		 *  @private
		 */
		public static const DEFENDER_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.defender_power", "defenderPower", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var defender_power$field:uint;

		public function clearDefenderPower():void {
			hasField$0 &= 0xfffffff7;
			defender_power$field = new uint();
		}

		public function get hasDefenderPower():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set defenderPower(value:uint):void {
			hasField$0 |= 0x8;
			defender_power$field = value;
		}

		public function get defenderPower():uint {
			return defender_power$field;
		}

		/**
		 *  @private
		 */
		public static const RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.result", "result", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var result$field:uint;

		public function clearResult():void {
			hasField$0 &= 0xffffffef;
			result$field = new uint();
		}

		public function get hasResult():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set result(value:uint):void {
			hasField$0 |= 0x10;
			result$field = value;
		}

		public function get result():uint {
			return result$field;
		}

		/**
		 *  @private
		 */
		public static const LOST_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackInformation.lost_power", "lostPower", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lost_power$field:int;

		public function clearLostPower():void {
			hasField$0 &= 0xffffffdf;
			lost_power$field = new int();
		}

		public function get hasLostPower():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set lostPower(value:int):void {
			hasField$0 |= 0x20;
			lost_power$field = value;
		}

		public function get lostPower():int {
			return lost_power$field;
		}

		/**
		 *  @private
		 */
		public static const LOST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackInformation.lost_money", "lostMoney", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lost_money$field:int;

		public function clearLostMoney():void {
			hasField$0 &= 0xffffffbf;
			lost_money$field = new int();
		}

		public function get hasLostMoney():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set lostMoney(value:int):void {
			hasField$0 |= 0x40;
			lost_money$field = value;
		}

		public function get lostMoney():int {
			return lost_money$field;
		}

		/**
		 *  @private
		 */
		public static const DESTORY_BASE_MAIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackInformation.destory_base_main", "destoryBaseMain", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var destory_base_main$field:int;

		public function clearDestoryBaseMain():void {
			hasField$0 &= 0xffffff7f;
			destory_base_main$field = new int();
		}

		public function get hasDestoryBaseMain():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set destoryBaseMain(value:int):void {
			hasField$0 |= 0x80;
			destory_base_main$field = value;
		}

		public function get destoryBaseMain():int {
			return destory_base_main$field;
		}

		/**
		 *  @private
		 */
		public static const DESTORY_BASE_ROSHAN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackInformation.destory_base_roshan", "destoryBaseRoshan", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var destory_base_roshan$field:int;

		public function clearDestoryBaseRoshan():void {
			hasField$0 &= 0xfffffeff;
			destory_base_roshan$field = new int();
		}

		public function get hasDestoryBaseRoshan():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set destoryBaseRoshan(value:int):void {
			hasField$0 |= 0x100;
			destory_base_roshan$field = value;
		}

		public function get destoryBaseRoshan():int {
			return destory_base_roshan$field;
		}

		/**
		 *  @private
		 */
		public static const DESTORY_BASE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackInformation.destory_base_money", "destoryBaseMoney", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var destory_base_money$field:int;

		public function clearDestoryBaseMoney():void {
			hasField$0 &= 0xfffffdff;
			destory_base_money$field = new int();
		}

		public function get hasDestoryBaseMoney():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set destoryBaseMoney(value:int):void {
			hasField$0 |= 0x200;
			destory_base_money$field = value;
		}

		public function get destoryBaseMoney():int {
			return destory_base_money$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseAttackInformation.ninja_list", "ninjaList", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseNinjaInfo);

		[ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
		public var ninjaList:Array = [];

		/**
		 *  @private
		 */
		public static const ROLE_NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.role_ninja_id", "roleNinjaId", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_ninja_id$field:uint;

		public function clearRoleNinjaId():void {
			hasField$0 &= 0xfffffbff;
			role_ninja_id$field = new uint();
		}

		public function get hasRoleNinjaId():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set roleNinjaId(value:uint):void {
			hasField$0 |= 0x400;
			role_ninja_id$field = value;
		}

		public function get roleNinjaId():uint {
			return role_ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseAttackInformation.time", "time", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var time$field:uint;

		public function clearTime():void {
			hasField$0 &= 0xfffff7ff;
			time$field = new uint();
		}

		public function get hasTime():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set time(value:uint):void {
			hasField$0 |= 0x800;
			time$field = value;
		}

		public function get time():uint {
			return time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasDefenderName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, defender_name$field);
			}
			if (hasDefenderUin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, defender_uin$field);
			}
			if (hasDefenderSvrId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, defender_svr_id$field);
			}
			if (hasDefenderRoleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, defender_role_id$field);
			}
			if (hasDefenderPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, defender_power$field);
			}
			if (hasResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, result$field);
			}
			if (hasLostPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, lost_power$field);
			}
			if (hasLostMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, lost_money$field);
			}
			if (hasDestoryBaseMain) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, destory_base_main$field);
			}
			if (hasDestoryBaseRoshan) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, destory_base_roshan$field);
			}
			if (hasDestoryBaseMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, destory_base_money$field);
			}
			for (var ninjaList$index:uint = 0; ninjaList$index < this.ninjaList.length; ++ninjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaList[ninjaList$index]);
			}
			if (hasRoleNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_ninja_id$field);
			}
			if (hasTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var defender_name$count:uint = 0;
			var defender_uin$count:uint = 0;
			var defender_svr_id$count:uint = 0;
			var defender_role_id$count:uint = 0;
			var defender_power$count:uint = 0;
			var result$count:uint = 0;
			var lost_power$count:uint = 0;
			var lost_money$count:uint = 0;
			var destory_base_main$count:uint = 0;
			var destory_base_roshan$count:uint = 0;
			var destory_base_money$count:uint = 0;
			var role_ninja_id$count:uint = 0;
			var time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (defender_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.defenderName cannot be set twice.');
					}
					++defender_name$count;
					this.defenderName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (defender_uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.defenderUin cannot be set twice.');
					}
					++defender_uin$count;
					this.defenderUin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (defender_svr_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.defenderSvrId cannot be set twice.');
					}
					++defender_svr_id$count;
					this.defenderSvrId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (defender_role_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.defenderRoleId cannot be set twice.');
					}
					++defender_role_id$count;
					this.defenderRoleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (defender_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.defenderPower cannot be set twice.');
					}
					++defender_power$count;
					this.defenderPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.result cannot be set twice.');
					}
					++result$count;
					this.result = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (lost_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.lostPower cannot be set twice.');
					}
					++lost_power$count;
					this.lostPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (lost_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.lostMoney cannot be set twice.');
					}
					++lost_money$count;
					this.lostMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (destory_base_main$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.destoryBaseMain cannot be set twice.');
					}
					++destory_base_main$count;
					this.destoryBaseMain = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (destory_base_roshan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.destoryBaseRoshan cannot be set twice.');
					}
					++destory_base_roshan$count;
					this.destoryBaseRoshan = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (destory_base_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.destoryBaseMoney cannot be set twice.');
					}
					++destory_base_money$count;
					this.destoryBaseMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					this.ninjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.basePvp.ProtoBaseNinjaInfo()));
					break;
				case 13:
					if (role_ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.roleNinjaId cannot be set twice.');
					}
					++role_ninja_id$count;
					this.roleNinjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackInformation.time cannot be set twice.');
					}
					++time$count;
					this.time = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
