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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInnerGetMergeServerBattleRankRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInnerGetMergeServerBattleRankRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ret$field:uint;

		private var hasField$0:uint = 0;

		public function clearRet():void {
			hasField$0 &= 0xfffffffe;
			ret$field = new uint();
		}

		public function get hasRet():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ret(value:uint):void {
			hasField$0 |= 0x1;
			ret$field = value;
		}

		public function get ret():uint {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInnerGetMergeServerBattleRankRsp.my_rank", "myRank", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var my_rank$field:uint;

		public function clearMyRank():void {
			hasField$0 &= 0xfffffffd;
			my_rank$field = new uint();
		}

		public function get hasMyRank():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set myRank(value:uint):void {
			hasField$0 |= 0x2;
			my_rank$field = value;
		}

		public function get myRank():uint {
			return my_rank$field;
		}

		/**
		 *  @private
		 */
		public static const RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoInnerGetMergeServerBattleRankRsp.ranks", "ranks", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMergeServerBattleRank);

		[ArrayElementType("serverProto.activity.ProtoMergeServerBattleRank")]
		public var ranks:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ret$field);
			}
			if (hasMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, my_rank$field);
			}
			for (var ranks$index:uint = 0; ranks$index < this.ranks.length; ++ranks$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ranks[ranks$index]);
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
			var my_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetMergeServerBattleRankRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetMergeServerBattleRankRsp.myRank cannot be set twice.');
					}
					++my_rank$count;
					this.myRank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.ranks.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoMergeServerBattleRank()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
