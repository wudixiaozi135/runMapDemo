package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activity.ProtoMergeServerBattleRank;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMergeServerBattleRankData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerBattleRankData.ranks", "ranks", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMergeServerBattleRank);

		[ArrayElementType("serverProto.activity.ProtoMergeServerBattleRank")]
		public var ranks:Array = [];

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerBattleRankData.package_boxes", "packageBoxes", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		public static const FIRST_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.first_title_id", "firstTitleId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var first_title_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearFirstTitleId():void {
			hasField$0 &= 0xfffffffe;
			first_title_id$field = new uint();
		}

		public function get hasFirstTitleId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set firstTitleId(value:uint):void {
			hasField$0 |= 0x1;
			first_title_id$field = value;
		}

		public function get firstTitleId():uint {
			return first_title_id$field;
		}

		/**
		 *  @private
		 */
		public static const FINAL_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.final_title_id", "finalTitleId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var final_title_id$field:uint;

		public function clearFinalTitleId():void {
			hasField$0 &= 0xfffffffd;
			final_title_id$field = new uint();
		}

		public function get hasFinalTitleId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set finalTitleId(value:uint):void {
			hasField$0 |= 0x2;
			final_title_id$field = value;
		}

		public function get finalTitleId():uint {
			return final_title_id$field;
		}

		/**
		 *  @private
		 */
		public static const FINAL_AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.final_award_status", "finalAwardStatus", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var final_award_status$field:uint;

		public function clearFinalAwardStatus():void {
			hasField$0 &= 0xfffffffb;
			final_award_status$field = new uint();
		}

		public function get hasFinalAwardStatus():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set finalAwardStatus(value:uint):void {
			hasField$0 |= 0x4;
			final_award_status$field = value;
		}

		public function get finalAwardStatus():uint {
			return final_award_status$field;
		}

		/**
		 *  @private
		 */
		public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.my_rank", "myRank", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var my_rank$field:uint;

		public function clearMyRank():void {
			hasField$0 &= 0xfffffff7;
			my_rank$field = new uint();
		}

		public function get hasMyRank():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set myRank(value:uint):void {
			hasField$0 |= 0x8;
			my_rank$field = value;
		}

		public function get myRank():uint {
			return my_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var ranks$index:uint = 0; ranks$index < this.ranks.length; ++ranks$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ranks[ranks$index]);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			if (hasFirstTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, first_title_id$field);
			}
			if (hasFinalTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, final_title_id$field);
			}
			if (hasFinalAwardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, final_award_status$field);
			}
			if (hasMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, my_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var first_title_id$count:uint = 0;
			var final_title_id$count:uint = 0;
			var final_award_status$count:uint = 0;
			var my_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.ranks.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoMergeServerBattleRank()));
					break;
				case 2:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 3:
					if (first_title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRankData.firstTitleId cannot be set twice.');
					}
					++first_title_id$count;
					this.firstTitleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (final_title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRankData.finalTitleId cannot be set twice.');
					}
					++final_title_id$count;
					this.finalTitleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (final_award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRankData.finalAwardStatus cannot be set twice.');
					}
					++final_award_status$count;
					this.finalAwardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRankData.myRank cannot be set twice.');
					}
					++my_rank$count;
					this.myRank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
