package serverProto.player {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.player.ProtoRewardType;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.player.ProtoBefallDungeonScoreInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRewardNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoRewardNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.player.ProtoRewardType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const REWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoRewardNotify.reward_list", "rewardList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var rewardList:Array = [];

		/**
		 *  @private
		 */
		public static const SCORE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoRewardNotify.score_info", "scoreInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoBefallDungeonScoreInfo);

		private var score_info$field:serverProto.player.ProtoBefallDungeonScoreInfo;

		public function clearScoreInfo():void {
			score_info$field = null;
		}

		public function get hasScoreInfo():Boolean {
			return score_info$field != null;
		}

		public function set scoreInfo(value:serverProto.player.ProtoBefallDungeonScoreInfo):void {
			score_info$field = value;
		}

		public function get scoreInfo():serverProto.player.ProtoBefallDungeonScoreInfo {
			return score_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			for (var rewardList$index:uint = 0; rewardList$index < this.rewardList.length; ++rewardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rewardList[rewardList$index]);
			}
			if (hasScoreInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, score_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var score_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRewardNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					this.rewardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					if (score_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRewardNotify.scoreInfo cannot be set twice.');
					}
					++score_info$count;
					this.scoreInfo = new serverProto.player.ProtoBefallDungeonScoreInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.scoreInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
