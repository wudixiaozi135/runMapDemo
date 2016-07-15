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
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoYellowDiamondQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoYellowDiamondQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const DAILY_LEVEL_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoYellowDiamondQueryRsp.daily_level_awards", "dailyLevelAwards", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var dailyLevelAwards:Array = [];

		/**
		 *  @private
		 */
		public static const DAILY_EXTRA_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoYellowDiamondQueryRsp.daily_extra_awards", "dailyExtraAwards", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var dailyExtraAwards:Array = [];

		/**
		 *  @private
		 */
		public static const FRESHMAN_ONCE_AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoYellowDiamondQueryRsp.freshman_once_award", "freshmanOnceAward", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		private var freshman_once_award$field:serverProto.activity.ProtoAwardPackageBox;

		public function clearFreshmanOnceAward():void {
			freshman_once_award$field = null;
		}

		public function get hasFreshmanOnceAward():Boolean {
			return freshman_once_award$field != null;
		}

		public function set freshmanOnceAward(value:serverProto.activity.ProtoAwardPackageBox):void {
			freshman_once_award$field = value;
		}

		public function get freshmanOnceAward():serverProto.activity.ProtoAwardPackageBox {
			return freshman_once_award$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoYellowDiamondQueryRsp.upgrade_awards", "upgradeAwards", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var upgradeAwards:Array = [];

		/**
		 *  @private
		 */
		public static const AWARD_LEVELS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoYellowDiamondQueryRsp.award_levels", "awardLevels", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var awardLevels:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			for (var dailyLevelAwards$index:uint = 0; dailyLevelAwards$index < this.dailyLevelAwards.length; ++dailyLevelAwards$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.dailyLevelAwards[dailyLevelAwards$index]);
			}
			for (var dailyExtraAwards$index:uint = 0; dailyExtraAwards$index < this.dailyExtraAwards.length; ++dailyExtraAwards$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.dailyExtraAwards[dailyExtraAwards$index]);
			}
			if (hasFreshmanOnceAward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, freshman_once_award$field);
			}
			for (var upgradeAwards$index:uint = 0; upgradeAwards$index < this.upgradeAwards.length; ++upgradeAwards$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.upgradeAwards[upgradeAwards$index]);
			}
			for (var awardLevels$index:uint = 0; awardLevels$index < this.awardLevels.length; ++awardLevels$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.awardLevels[awardLevels$index]);
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
			var freshman_once_award$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoYellowDiamondQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.dailyLevelAwards.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 3:
					this.dailyExtraAwards.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 4:
					if (freshman_once_award$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoYellowDiamondQueryRsp.freshmanOnceAward cannot be set twice.');
					}
					++freshman_once_award$count;
					this.freshmanOnceAward = new serverProto.activity.ProtoAwardPackageBox();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.freshmanOnceAward);
					break;
				case 5:
					this.upgradeAwards.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.awardLevels);
						break;
					}
					this.awardLevels.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
