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
	public  final class ProtoBaseDefenseInformation extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ATTACKER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_name", "attackerName", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var attacker_name$field:String;

		public function clearAttackerName():void {
			attacker_name$field = null;
		}

		public function get hasAttackerName():Boolean {
			return attacker_name$field != null;
		}

		public function set attackerName(value:String):void {
			attacker_name$field = value;
		}

		public function get attackerName():String {
			return attacker_name$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACKER_UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_uin", "attackerUin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attacker_uin$field:uint;

		private var hasField$0:uint = 0;

		public function clearAttackerUin():void {
			hasField$0 &= 0xfffffffe;
			attacker_uin$field = new uint();
		}

		public function get hasAttackerUin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set attackerUin(value:uint):void {
			hasField$0 |= 0x1;
			attacker_uin$field = value;
		}

		public function get attackerUin():uint {
			return attacker_uin$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACKER_SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_svr_id", "attackerSvrId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attacker_svr_id$field:uint;

		public function clearAttackerSvrId():void {
			hasField$0 &= 0xfffffffd;
			attacker_svr_id$field = new uint();
		}

		public function get hasAttackerSvrId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set attackerSvrId(value:uint):void {
			hasField$0 |= 0x2;
			attacker_svr_id$field = value;
		}

		public function get attackerSvrId():uint {
			return attacker_svr_id$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACKER_ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_role_id", "attackerRoleId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attacker_role_id$field:uint;

		public function clearAttackerRoleId():void {
			hasField$0 &= 0xfffffffb;
			attacker_role_id$field = new uint();
		}

		public function get hasAttackerRoleId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set attackerRoleId(value:uint):void {
			hasField$0 |= 0x4;
			attacker_role_id$field = value;
		}

		public function get attackerRoleId():uint {
			return attacker_role_id$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACKER_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_power", "attackerPower", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attacker_power$field:uint;

		public function clearAttackerPower():void {
			hasField$0 &= 0xfffffff7;
			attacker_power$field = new uint();
		}

		public function get hasAttackerPower():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set attackerPower(value:uint):void {
			hasField$0 |= 0x8;
			attacker_power$field = value;
		}

		public function get attackerPower():uint {
			return attacker_power$field;
		}

		/**
		 *  @private
		 */
		public static const RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.result", "result", (6 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const LOST_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.lost_power", "lostPower", (7 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const LOST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.lost_money", "lostMoney", (8 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const DESTORY_BASE_MAIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.destory_base_main", "destoryBaseMain", (9 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const DESTORY_BASE_ROSHAN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.destory_base_roshan", "destoryBaseRoshan", (10 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const DESTORY_BASE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.destory_base_money", "destoryBaseMoney", (11 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const ATTACKER_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_ninja_list", "attackerNinjaList", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseNinjaInfo);

		[ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
		public var attackerNinjaList:Array = [];

		/**
		 *  @private
		 */
		public static const ROLE_NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.role_ninja_id", "roleNinjaId", (13 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.time", "time", (14 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const CAN_ATTACK_BACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.can_attack_back", "canAttackBack", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_attack_back$field:uint;

		public function clearCanAttackBack():void {
			hasField$0 &= 0xffffefff;
			can_attack_back$field = new uint();
		}

		public function get hasCanAttackBack():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set canAttackBack(value:uint):void {
			hasField$0 |= 0x1000;
			can_attack_back$field = value;
		}

		public function get canAttackBack():uint {
			return can_attack_back$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAttackerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, attacker_name$field);
			}
			if (hasAttackerUin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attacker_uin$field);
			}
			if (hasAttackerSvrId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attacker_svr_id$field);
			}
			if (hasAttackerRoleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attacker_role_id$field);
			}
			if (hasAttackerPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attacker_power$field);
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
			for (var attackerNinjaList$index:uint = 0; attackerNinjaList$index < this.attackerNinjaList.length; ++attackerNinjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.attackerNinjaList[attackerNinjaList$index]);
			}
			if (hasRoleNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_ninja_id$field);
			}
			if (hasTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, time$field);
			}
			if (hasCanAttackBack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_attack_back$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var attacker_name$count:uint = 0;
			var attacker_uin$count:uint = 0;
			var attacker_svr_id$count:uint = 0;
			var attacker_role_id$count:uint = 0;
			var attacker_power$count:uint = 0;
			var result$count:uint = 0;
			var lost_power$count:uint = 0;
			var lost_money$count:uint = 0;
			var destory_base_main$count:uint = 0;
			var destory_base_roshan$count:uint = 0;
			var destory_base_money$count:uint = 0;
			var role_ninja_id$count:uint = 0;
			var time$count:uint = 0;
			var can_attack_back$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (attacker_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.attackerName cannot be set twice.');
					}
					++attacker_name$count;
					this.attackerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (attacker_uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.attackerUin cannot be set twice.');
					}
					++attacker_uin$count;
					this.attackerUin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (attacker_svr_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.attackerSvrId cannot be set twice.');
					}
					++attacker_svr_id$count;
					this.attackerSvrId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (attacker_role_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.attackerRoleId cannot be set twice.');
					}
					++attacker_role_id$count;
					this.attackerRoleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (attacker_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.attackerPower cannot be set twice.');
					}
					++attacker_power$count;
					this.attackerPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.result cannot be set twice.');
					}
					++result$count;
					this.result = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (lost_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.lostPower cannot be set twice.');
					}
					++lost_power$count;
					this.lostPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (lost_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.lostMoney cannot be set twice.');
					}
					++lost_money$count;
					this.lostMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (destory_base_main$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.destoryBaseMain cannot be set twice.');
					}
					++destory_base_main$count;
					this.destoryBaseMain = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (destory_base_roshan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.destoryBaseRoshan cannot be set twice.');
					}
					++destory_base_roshan$count;
					this.destoryBaseRoshan = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (destory_base_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.destoryBaseMoney cannot be set twice.');
					}
					++destory_base_money$count;
					this.destoryBaseMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					this.attackerNinjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.basePvp.ProtoBaseNinjaInfo()));
					break;
				case 13:
					if (role_ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.roleNinjaId cannot be set twice.');
					}
					++role_ninja_id$count;
					this.roleNinjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.time cannot be set twice.');
					}
					++time$count;
					this.time = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 15:
					if (can_attack_back$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseDefenseInformation.canAttackBack cannot be set twice.');
					}
					++can_attack_back$count;
					this.canAttackBack = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
