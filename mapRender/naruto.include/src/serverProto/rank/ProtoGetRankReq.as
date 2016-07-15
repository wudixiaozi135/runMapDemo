package serverProto.rank {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.rank.ProtoRoleCategoryType;
	import serverProto.rank.ProtoRankType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRankReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANK_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rank.ProtoGetRankReq.rank_type", "rankType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.rank.ProtoRankType);

		private var rank_type$field:int;

		private var hasField$0:uint = 0;

		public function clearRankType():void {
			hasField$0 &= 0xfffffffe;
			rank_type$field = new int();
		}

		public function get hasRankType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rankType(value:int):void {
			hasField$0 |= 0x1;
			rank_type$field = value;
		}

		public function get rankType():int {
			return rank_type$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rank.ProtoGetRankReq.role_category_type", "roleCategoryType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.rank.ProtoRoleCategoryType);

		private var role_category_type$field:int;

		public function clearRoleCategoryType():void {
			hasField$0 &= 0xfffffffd;
			role_category_type$field = new int();
		}

		public function get hasRoleCategoryType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roleCategoryType(value:int):void {
			hasField$0 |= 0x2;
			role_category_type$field = value;
		}

		public function get roleCategoryType():int {
			return role_category_type$field;
		}

		/**
		 *  @private
		 */
		public static const BEGIN_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rank.ProtoGetRankReq.begin_rank", "beginRank", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_rank$field:int;

		public function clearBeginRank():void {
			hasField$0 &= 0xfffffffb;
			begin_rank$field = new int();
		}

		public function get hasBeginRank():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set beginRank(value:int):void {
			hasField$0 |= 0x4;
			begin_rank$field = value;
		}

		public function get beginRank():int {
			return begin_rank$field;
		}

		/**
		 *  @private
		 */
		public static const COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rank.ProtoGetRankReq.count", "count", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var count$field:int;

		public function clearCount():void {
			hasField$0 &= 0xfffffff7;
			count$field = new int();
		}

		public function get hasCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set count(value:int):void {
			hasField$0 |= 0x8;
			count$field = value;
		}

		public function get count():int {
			return count$field;
		}

		/**
		 *  @private
		 */
		public static const MERGED_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.rank.ProtoGetRankReq.merged_rank", "mergedRank", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var merged_rank$field:Boolean;

		public function clearMergedRank():void {
			hasField$0 &= 0xffffffef;
			merged_rank$field = new Boolean();
		}

		public function get hasMergedRank():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set mergedRank(value:Boolean):void {
			hasField$0 |= 0x10;
			merged_rank$field = value;
		}

		public function get mergedRank():Boolean {
			return merged_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRankType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, rank_type$field);
			}
			if (hasRoleCategoryType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, role_category_type$field);
			}
			if (hasBeginRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, begin_rank$field);
			}
			if (hasCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, count$field);
			}
			if (hasMergedRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, merged_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rank_type$count:uint = 0;
			var role_category_type$count:uint = 0;
			var begin_rank$count:uint = 0;
			var count$count:uint = 0;
			var merged_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rank_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankReq.rankType cannot be set twice.');
					}
					++rank_type$count;
					this.rankType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (role_category_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankReq.roleCategoryType cannot be set twice.');
					}
					++role_category_type$count;
					this.roleCategoryType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (begin_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankReq.beginRank cannot be set twice.');
					}
					++begin_rank$count;
					this.beginRank = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankReq.count cannot be set twice.');
					}
					++count$count;
					this.count = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (merged_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankReq.mergedRank cannot be set twice.');
					}
					++merged_rank$count;
					this.mergedRank = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
