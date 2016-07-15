package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDailyUseGoldInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyUseGoldInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const USE_GOLD_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.use_gold_state", "useGoldState", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var use_gold_state$field:uint;

		private var hasField$0:uint = 0;

		public function clearUseGoldState():void {
			hasField$0 &= 0xfffffffe;
			use_gold_state$field = new uint();
		}

		public function get hasUseGoldState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set useGoldState(value:uint):void {
			hasField$0 |= 0x1;
			use_gold_state$field = value;
		}

		public function get useGoldState():uint {
			return use_gold_state$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.award_state", "awardState", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_state$field:uint;

		public function clearAwardState():void {
			hasField$0 &= 0xfffffffd;
			award_state$field = new uint();
		}

		public function get hasAwardState():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardState(value:uint):void {
			hasField$0 |= 0x2;
			award_state$field = value;
		}

		public function get awardState():uint {
			return award_state$field;
		}

		/**
		 *  @private
		 */
		public static const BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyUseGoldInfoRsp.boxes", "boxes", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var boxes:Array = [];

		/**
		 *  @private
		 */
		public static const AWARD_BOX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.award_box", "awardBox", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_box$field:uint;

		public function clearAwardBox():void {
			hasField$0 &= 0xfffffffb;
			award_box$field = new uint();
		}

		public function get hasAwardBox():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set awardBox(value:uint):void {
			hasField$0 |= 0x4;
			award_box$field = value;
		}

		public function get awardBox():uint {
			return award_box$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyUseGoldInfoRsp.award", "award", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.times", "times", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var times$field:uint;

		public function clearTimes():void {
			hasField$0 &= 0xfffffff7;
			times$field = new uint();
		}

		public function get hasTimes():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set times(value:uint):void {
			hasField$0 |= 0x8;
			times$field = value;
		}

		public function get times():uint {
			return times$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasUseGoldState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, use_gold_state$field);
			}
			if (hasAwardState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_state$field);
			}
			for (var boxes$index:uint = 0; boxes$index < this.boxes.length; ++boxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.boxes[boxes$index]);
			}
			if (hasAwardBox) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_box$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, times$field);
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
			var use_gold_state$count:uint = 0;
			var award_state$count:uint = 0;
			var award_box$count:uint = 0;
			var times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyUseGoldInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (use_gold_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyUseGoldInfoRsp.useGoldState cannot be set twice.');
					}
					++use_gold_state$count;
					this.useGoldState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (award_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyUseGoldInfoRsp.awardState cannot be set twice.');
					}
					++award_state$count;
					this.awardState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.boxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 5:
					if (award_box$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyUseGoldInfoRsp.awardBox cannot be set twice.');
					}
					++award_box$count;
					this.awardBox = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 7:
					if (times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyUseGoldInfoRsp.times cannot be set twice.');
					}
					++times$count;
					this.times = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
