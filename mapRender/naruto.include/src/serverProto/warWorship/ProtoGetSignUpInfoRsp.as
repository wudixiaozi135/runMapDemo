package serverProto.warWorship {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.warWorship.ProtoWarWorshipnNinjaListInfo;
	import serverProto.warWorship.WarWorshipStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetSignUpInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoGetSignUpInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const IS_REG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.is_reg", "isReg", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_reg$field:uint;

		private var hasField$0:uint = 0;

		public function clearIsReg():void {
			hasField$0 &= 0xfffffffe;
			is_reg$field = new uint();
		}

		public function get hasIsReg():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isReg(value:uint):void {
			hasField$0 |= 0x1;
			is_reg$field = value;
		}

		public function get isReg():uint {
			return is_reg$field;
		}

		/**
		 *  @private
		 */
		public static const INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoGetSignUpInfoRsp.info", "info", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.warWorship.ProtoWarWorshipnNinjaListInfo);

		private var info$field:serverProto.warWorship.ProtoWarWorshipnNinjaListInfo;

		public function clearInfo():void {
			info$field = null;
		}

		public function get hasInfo():Boolean {
			return info$field != null;
		}

		public function set info(value:serverProto.warWorship.ProtoWarWorshipnNinjaListInfo):void {
			info$field = value;
		}

		public function get info():serverProto.warWorship.ProtoWarWorshipnNinjaListInfo {
			return info$field;
		}

		/**
		 *  @private
		 */
		public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.now", "now", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var now$field:UInt64;

		public function clearNow():void {
			now$field = null;
		}

		public function get hasNow():Boolean {
			return now$field != null;
		}

		public function set now(value:UInt64):void {
			now$field = value;
		}

		public function get now():UInt64 {
			return now$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.open_time", "openTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_time$field:UInt64;

		public function clearOpenTime():void {
			open_time$field = null;
		}

		public function get hasOpenTime():Boolean {
			return open_time$field != null;
		}

		public function set openTime(value:UInt64):void {
			open_time$field = value;
		}

		public function get openTime():UInt64 {
			return open_time$field;
		}

		/**
		 *  @private
		 */
		public static const FIGHT_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.fight_time", "fightTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fight_time$field:UInt64;

		public function clearFightTime():void {
			fight_time$field = null;
		}

		public function get hasFightTime():Boolean {
			return fight_time$field != null;
		}

		public function set fightTime(value:UInt64):void {
			fight_time$field = value;
		}

		public function get fightTime():UInt64 {
			return fight_time$field;
		}

		/**
		 *  @private
		 */
		public static const OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.over_time", "overTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var over_time$field:UInt64;

		public function clearOverTime():void {
			over_time$field = null;
		}

		public function get hasOverTime():Boolean {
			return over_time$field != null;
		}

		public function set overTime(value:UInt64):void {
			over_time$field = value;
		}

		public function get overTime():UInt64 {
			return over_time$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_ENTER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.can_enter", "canEnter", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_enter$field:uint;

		public function clearCanEnter():void {
			hasField$0 &= 0xfffffffd;
			can_enter$field = new uint();
		}

		public function get hasCanEnter():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set canEnter(value:uint):void {
			hasField$0 |= 0x2;
			can_enter$field = value;
		}

		public function get canEnter():uint {
			return can_enter$field;
		}

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.warWorship.ProtoGetSignUpInfoRsp.state", "state", (9 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.warWorship.WarWorshipStatus);

		private var state$field:int;

		public function clearState():void {
			hasField$0 &= 0xfffffffb;
			state$field = new int();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set state(value:int):void {
			hasField$0 |= 0x4;
			state$field = value;
		}

		public function get state():int {
			return state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasIsReg) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, is_reg$field);
			}
			if (hasInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, info$field);
			}
			if (hasNow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, now$field);
			}
			if (hasOpenTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, open_time$field);
			}
			if (hasFightTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, fight_time$field);
			}
			if (hasOverTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, over_time$field);
			}
			if (hasCanEnter) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_enter$field);
			}
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, state$field);
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
			var is_reg$count:uint = 0;
			var info$count:uint = 0;
			var now$count:uint = 0;
			var open_time$count:uint = 0;
			var fight_time$count:uint = 0;
			var over_time$count:uint = 0;
			var can_enter$count:uint = 0;
			var state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (is_reg$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.isReg cannot be set twice.');
					}
					++is_reg$count;
					this.isReg = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.info cannot be set twice.');
					}
					++info$count;
					this.info = new serverProto.warWorship.ProtoWarWorshipnNinjaListInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.info);
					break;
				case 4:
					if (now$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.now cannot be set twice.');
					}
					++now$count;
					this.now = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 5:
					if (open_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.openTime cannot be set twice.');
					}
					++open_time$count;
					this.openTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if (fight_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.fightTime cannot be set twice.');
					}
					++fight_time$count;
					this.fightTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 7:
					if (over_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.overTime cannot be set twice.');
					}
					++over_time$count;
					this.overTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 8:
					if (can_enter$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.canEnter cannot be set twice.');
					}
					++can_enter$count;
					this.canEnter = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSignUpInfoRsp.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
