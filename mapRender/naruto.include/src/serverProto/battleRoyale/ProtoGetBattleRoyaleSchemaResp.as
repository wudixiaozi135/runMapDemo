package serverProto.battleRoyale {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.battleRoyale.ProtoBattleRoyaleTimeStatus;
	import serverProto.battleRoyale.ProtoBattleRoyaleFieldCampState;
	import serverProto.battleRoyale.ProtoBattleRoyalePlayerState;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetBattleRoyaleSchemaResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.status", "status", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.battleRoyale.ProtoBattleRoyaleTimeStatus);

		public var status:int;

		/**
		 *  @private
		 */
		public static const PLAYER_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.player_state", "playerState", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.battleRoyale.ProtoBattleRoyalePlayerState);

		public var playerState:int;

		/**
		 *  @private
		 */
		public static const FIELD_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.field_state", "fieldState", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.battleRoyale.ProtoBattleRoyaleFieldCampState);

		private var field_state$field:int;

		private var hasField$0:uint = 0;

		public function clearFieldState():void {
			hasField$0 &= 0xfffffffe;
			field_state$field = new int();
		}

		public function get hasFieldState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set fieldState(value:int):void {
			hasField$0 |= 0x1;
			field_state$field = value;
		}

		public function get fieldState():int {
			return field_state$field;
		}

		/**
		 *  @private
		 */
		public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.now", "now", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const SIGN_UP_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.sign_up_time", "signUpTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sign_up_time$field:UInt64;

		public function clearSignUpTime():void {
			sign_up_time$field = null;
		}

		public function get hasSignUpTime():Boolean {
			return sign_up_time$field != null;
		}

		public function set signUpTime(value:UInt64):void {
			sign_up_time$field = value;
		}

		public function get signUpTime():UInt64 {
			return sign_up_time$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_OPEN_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.next_open_time", "nextOpenTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_open_time$field:UInt64;

		public function clearNextOpenTime():void {
			next_open_time$field = null;
		}

		public function get hasNextOpenTime():Boolean {
			return next_open_time$field != null;
		}

		public function set nextOpenTime(value:UInt64):void {
			next_open_time$field = value;
		}

		public function get nextOpenTime():UInt64 {
			return next_open_time$field;
		}

		/**
		 *  @private
		 */
		public static const ENTER_END_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.enter_end_time", "enterEndTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter_end_time$field:UInt64;

		public function clearEnterEndTime():void {
			enter_end_time$field = null;
		}

		public function get hasEnterEndTime():Boolean {
			return enter_end_time$field != null;
		}

		public function set enterEndTime(value:UInt64):void {
			enter_end_time$field = value;
		}

		public function get enterEndTime():UInt64 {
			return enter_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.activity_over_time", "activityOverTime", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_over_time$field:UInt64;

		public function clearActivityOverTime():void {
			activity_over_time$field = null;
		}

		public function get hasActivityOverTime():Boolean {
			return activity_over_time$field != null;
		}

		public function set activityOverTime(value:UInt64):void {
			activity_over_time$field = value;
		}

		public function get activityOverTime():UInt64 {
			return activity_over_time$field;
		}

		/**
		 *  @private
		 */
		public static const RECONNECT_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.reconnect_times", "reconnectTimes", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reconnect_times$field:int;

		public function clearReconnectTimes():void {
			hasField$0 &= 0xfffffffd;
			reconnect_times$field = new int();
		}

		public function get hasReconnectTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set reconnectTimes(value:int):void {
			hasField$0 |= 0x2;
			reconnect_times$field = value;
		}

		public function get reconnectTimes():int {
			return reconnect_times$field;
		}

		/**
		 *  @private
		 */
		public static const RECONNECT_TOO_LATE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.reconnect_too_late", "reconnectTooLate", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reconnect_too_late$field:Boolean;

		public function clearReconnectTooLate():void {
			hasField$0 &= 0xfffffffb;
			reconnect_too_late$field = new Boolean();
		}

		public function get hasReconnectTooLate():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set reconnectTooLate(value:Boolean):void {
			hasField$0 |= 0x4;
			reconnect_too_late$field = value;
		}

		public function get reconnectTooLate():Boolean {
			return reconnect_too_late$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_POLL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.auto_poll", "autoPoll", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_poll$field:Boolean;

		public function clearAutoPoll():void {
			hasField$0 &= 0xfffffff7;
			auto_poll$field = new Boolean();
		}

		public function get hasAutoPoll():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set autoPoll(value:Boolean):void {
			hasField$0 |= 0x8;
			auto_poll$field = value;
		}

		public function get autoPoll():Boolean {
			return auto_poll$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.status);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.playerState);
			if (hasFieldState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, field_state$field);
			}
			if (hasNow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, now$field);
			}
			if (hasSignUpTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, sign_up_time$field);
			}
			if (hasNextOpenTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, next_open_time$field);
			}
			if (hasEnterEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, enter_end_time$field);
			}
			if (hasActivityOverTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, activity_over_time$field);
			}
			if (hasReconnectTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, reconnect_times$field);
			}
			if (hasReconnectTooLate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, reconnect_too_late$field);
			}
			if (hasAutoPoll) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_poll$field);
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
			var player_state$count:uint = 0;
			var field_state$count:uint = 0;
			var now$count:uint = 0;
			var sign_up_time$count:uint = 0;
			var next_open_time$count:uint = 0;
			var enter_end_time$count:uint = 0;
			var activity_over_time$count:uint = 0;
			var reconnect_times$count:uint = 0;
			var reconnect_too_late$count:uint = 0;
			var auto_poll$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (player_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.playerState cannot be set twice.');
					}
					++player_state$count;
					this.playerState = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (field_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.fieldState cannot be set twice.');
					}
					++field_state$count;
					this.fieldState = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 5:
					if (now$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.now cannot be set twice.');
					}
					++now$count;
					this.now = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if (sign_up_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.signUpTime cannot be set twice.');
					}
					++sign_up_time$count;
					this.signUpTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 7:
					if (next_open_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.nextOpenTime cannot be set twice.');
					}
					++next_open_time$count;
					this.nextOpenTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 8:
					if (enter_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.enterEndTime cannot be set twice.');
					}
					++enter_end_time$count;
					this.enterEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 9:
					if (activity_over_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.activityOverTime cannot be set twice.');
					}
					++activity_over_time$count;
					this.activityOverTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 10:
					if (reconnect_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.reconnectTimes cannot be set twice.');
					}
					++reconnect_times$count;
					this.reconnectTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (reconnect_too_late$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.reconnectTooLate cannot be set twice.');
					}
					++reconnect_too_late$count;
					this.reconnectTooLate = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 12:
					if (auto_poll$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleSchemaResp.autoPoll cannot be set twice.');
					}
					++auto_poll$count;
					this.autoPoll = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
