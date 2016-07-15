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
	import serverProto.activity.BlessTreeAwardInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBlessTreeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBlessTreeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const TREE_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeRsp.tree_lvl", "treeLvl", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tree_lvl$field:uint;

		private var hasField$0:uint = 0;

		public function clearTreeLvl():void {
			hasField$0 &= 0xfffffffe;
			tree_lvl$field = new uint();
		}

		public function get hasTreeLvl():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set treeLvl(value:uint):void {
			hasField$0 |= 0x1;
			tree_lvl$field = value;
		}

		public function get treeLvl():uint {
			return tree_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeRsp.total_score", "totalScore", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_score$field:uint;

		public function clearTotalScore():void {
			hasField$0 &= 0xfffffffd;
			total_score$field = new uint();
		}

		public function get hasTotalScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set totalScore(value:uint):void {
			hasField$0 |= 0x2;
			total_score$field = value;
		}

		public function get totalScore():uint {
			return total_score$field;
		}

		/**
		 *  @private
		 */
		public static const PKG_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBlessTreeRsp.pkg_ary", "pkgAry", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.BlessTreeAwardInfo);

		[ArrayElementType("serverProto.activity.BlessTreeAwardInfo")]
		public var pkgAry:Array = [];

		/**
		 *  @private
		 */
		public static const NEED_SCORE_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeRsp.need_score_ary", "needScoreAry", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var needScoreAry:Array = [];

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeRsp.begin_time", "beginTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffb;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x4;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeRsp.end_time", "endTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffff7;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x8;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_NEED_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeRsp.upgrade_need_score", "upgradeNeedScore", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_need_score$field:uint;

		public function clearUpgradeNeedScore():void {
			hasField$0 &= 0xffffffef;
			upgrade_need_score$field = new uint();
		}

		public function get hasUpgradeNeedScore():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set upgradeNeedScore(value:uint):void {
			hasField$0 |= 0x10;
			upgrade_need_score$field = value;
		}

		public function get upgradeNeedScore():uint {
			return upgrade_need_score$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_ITEM_ID:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBlessTreeRsp.award_item_id", "awardItemId", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var awardItemId:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasTreeLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, tree_lvl$field);
			}
			if (hasTotalScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_score$field);
			}
			for (var pkgAry$index:uint = 0; pkgAry$index < this.pkgAry.length; ++pkgAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.pkgAry[pkgAry$index]);
			}
			for (var needScoreAry$index:uint = 0; needScoreAry$index < this.needScoreAry.length; ++needScoreAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.needScoreAry[needScoreAry$index]);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			if (hasUpgradeNeedScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, upgrade_need_score$field);
			}
			for (var awardItemId$index:uint = 0; awardItemId$index < this.awardItemId.length; ++awardItemId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardItemId[awardItemId$index]);
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
			var tree_lvl$count:uint = 0;
			var total_score$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var upgrade_need_score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (tree_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeRsp.treeLvl cannot be set twice.');
					}
					++tree_lvl$count;
					this.treeLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (total_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeRsp.totalScore cannot be set twice.');
					}
					++total_score$count;
					this.totalScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.pkgAry.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.BlessTreeAwardInfo()));
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.needScoreAry);
						break;
					}
					this.needScoreAry.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (upgrade_need_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeRsp.upgradeNeedScore cannot be set twice.');
					}
					++upgrade_need_score$count;
					this.upgradeNeedScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.awardItemId.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
