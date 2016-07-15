package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.guild.ProtoGvGBattleRound;
	import serverProto.guild.ProtoFenpeiRecord;
	import serverProto.guild.ProtoGvGBattleStatus;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.guild.ProtoGvGGuildCell;
	import serverProto.guild.ProtoGvGFinalResult;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGMainUIQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGMainUIQueryRsp.status", "status", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.guild.ProtoGvGBattleStatus);

		private var status$field:int;

		private var hasField$0:uint = 0;

		public function clearStatus():void {
			hasField$0 &= 0xfffffffe;
			status$field = new int();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set status(value:int):void {
			hasField$0 |= 0x1;
			status$field = value;
		}

		public function get status():int {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const ROUND:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGMainUIQueryRsp.round", "round", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.guild.ProtoGvGBattleRound);

		private var round$field:int;

		public function clearRound():void {
			hasField$0 &= 0xfffffffd;
			round$field = new int();
		}

		public function get hasRound():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set round(value:int):void {
			hasField$0 |= 0x2;
			round$field = value;
		}

		public function get round():int {
			return round$field;
		}

		/**
		 *  @private
		 */
		public static const FENPEI_PACKAGE_BOX:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.fenpei_package_box", "fenpeiPackageBox", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var fenpeiPackageBox:Array = [];

		/**
		 *  @private
		 */
		public static const FENPEI_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.fenpei_record", "fenpeiRecord", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoFenpeiRecord);

		[ArrayElementType("serverProto.guild.ProtoFenpeiRecord")]
		public var fenpeiRecord:Array = [];

		/**
		 *  @private
		 */
		public static const PRIMARY_BATTLE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.primary_battle_end_time", "primaryBattleEndTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var primary_battle_end_time$field:uint;

		public function clearPrimaryBattleEndTime():void {
			hasField$0 &= 0xfffffffb;
			primary_battle_end_time$field = new uint();
		}

		public function get hasPrimaryBattleEndTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set primaryBattleEndTime(value:uint):void {
			hasField$0 |= 0x4;
			primary_battle_end_time$field = value;
		}

		public function get primaryBattleEndTime():uint {
			return primary_battle_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const PRIMARY_BATTLE_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.primary_battle_rank", "primaryBattleRank", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		[ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
		public var primaryBattleRank:Array = [];

		/**
		 *  @private
		 */
		public static const FINAL_BATTLE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.final_battle_end_time", "finalBattleEndTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var final_battle_end_time$field:uint;

		public function clearFinalBattleEndTime():void {
			hasField$0 &= 0xfffffff7;
			final_battle_end_time$field = new uint();
		}

		public function get hasFinalBattleEndTime():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set finalBattleEndTime(value:uint):void {
			hasField$0 |= 0x8;
			final_battle_end_time$field = value;
		}

		public function get finalBattleEndTime():uint {
			return final_battle_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const FINAL_BATTLE_RESULT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.final_battle_result", "finalBattleResult", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGFinalResult);

		private var final_battle_result$field:serverProto.guild.ProtoGvGFinalResult;

		public function clearFinalBattleResult():void {
			final_battle_result$field = null;
		}

		public function get hasFinalBattleResult():Boolean {
			return final_battle_result$field != null;
		}

		public function set finalBattleResult(value:serverProto.guild.ProtoGvGFinalResult):void {
			final_battle_result$field = value;
		}

		public function get finalBattleResult():serverProto.guild.ProtoGvGFinalResult {
			return final_battle_result$field;
		}

		/**
		 *  @private
		 */
		public static const SIGN_UP_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.sign_up_flag", "signUpFlag", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sign_up_flag$field:uint;

		public function clearSignUpFlag():void {
			hasField$0 &= 0xffffffef;
			sign_up_flag$field = new uint();
		}

		public function get hasSignUpFlag():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set signUpFlag(value:uint):void {
			hasField$0 |= 0x10;
			sign_up_flag$field = value;
		}

		public function get signUpFlag():uint {
			return sign_up_flag$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_ENTER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.can_enter", "canEnter", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_enter$field:uint;

		public function clearCanEnter():void {
			hasField$0 &= 0xffffffdf;
			can_enter$field = new uint();
		}

		public function get hasCanEnter():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set canEnter(value:uint):void {
			hasField$0 |= 0x20;
			can_enter$field = value;
		}

		public function get canEnter():uint {
			return can_enter$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.remain_time", "remainTime", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xffffffbf;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x40;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, status$field);
			}
			if (hasRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, round$field);
			}
			for (var fenpeiPackageBox$index:uint = 0; fenpeiPackageBox$index < this.fenpeiPackageBox.length; ++fenpeiPackageBox$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.fenpeiPackageBox[fenpeiPackageBox$index]);
			}
			for (var fenpeiRecord$index:uint = 0; fenpeiRecord$index < this.fenpeiRecord.length; ++fenpeiRecord$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.fenpeiRecord[fenpeiRecord$index]);
			}
			if (hasPrimaryBattleEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, primary_battle_end_time$field);
			}
			for (var primaryBattleRank$index:uint = 0; primaryBattleRank$index < this.primaryBattleRank.length; ++primaryBattleRank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.primaryBattleRank[primaryBattleRank$index]);
			}
			if (hasFinalBattleEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, final_battle_end_time$field);
			}
			if (hasFinalBattleResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, final_battle_result$field);
			}
			if (hasSignUpFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, sign_up_flag$field);
			}
			if (hasCanEnter) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_enter$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
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
			var status$count:uint = 0;
			var round$count:uint = 0;
			var primary_battle_end_time$count:uint = 0;
			var final_battle_end_time$count:uint = 0;
			var final_battle_result$count:uint = 0;
			var sign_up_flag$count:uint = 0;
			var can_enter$count:uint = 0;
			var remain_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.round cannot be set twice.');
					}
					++round$count;
					this.round = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					this.fenpeiPackageBox.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 5:
					this.fenpeiRecord.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoFenpeiRecord()));
					break;
				case 6:
					if (primary_battle_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.primaryBattleEndTime cannot be set twice.');
					}
					++primary_battle_end_time$count;
					this.primaryBattleEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					this.primaryBattleRank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGvGGuildCell()));
					break;
				case 8:
					if (final_battle_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.finalBattleEndTime cannot be set twice.');
					}
					++final_battle_end_time$count;
					this.finalBattleEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (final_battle_result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.finalBattleResult cannot be set twice.');
					}
					++final_battle_result$count;
					this.finalBattleResult = new serverProto.guild.ProtoGvGFinalResult();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.finalBattleResult);
					break;
				case 10:
					if (sign_up_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.signUpFlag cannot be set twice.');
					}
					++sign_up_flag$count;
					this.signUpFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (can_enter$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.canEnter cannot be set twice.');
					}
					++can_enter$count;
					this.canEnter = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMainUIQueryRsp.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
