package serverProto.rank {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.rank.ProtoBefallDungeonRank;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBefallDungeonRankRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoBefallDungeonRankRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const MY_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoBefallDungeonRankRsp.my_rank", "myRank", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rank.ProtoBefallDungeonRank);

		private var my_rank$field:serverProto.rank.ProtoBefallDungeonRank;

		public function clearMyRank():void {
			my_rank$field = null;
		}

		public function get hasMyRank():Boolean {
			return my_rank$field != null;
		}

		public function set myRank(value:serverProto.rank.ProtoBefallDungeonRank):void {
			my_rank$field = value;
		}

		public function get myRank():serverProto.rank.ProtoBefallDungeonRank {
			return my_rank$field;
		}

		/**
		 *  @private
		 */
		public static const RANK_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoBefallDungeonRankRsp.rank_list", "rankList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rank.ProtoBefallDungeonRank);

		[ArrayElementType("serverProto.rank.ProtoBefallDungeonRank")]
		public var rankList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, my_rank$field);
			}
			for (var rankList$index:uint = 0; rankList$index < this.rankList.length; ++rankList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rankList[rankList$index]);
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
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRankRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRankRsp.myRank cannot be set twice.');
					}
					++my_rank$count;
					this.myRank = new serverProto.rank.ProtoBefallDungeonRank();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.myRank);
					break;
				case 3:
					this.rankList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rank.ProtoBefallDungeonRank()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
