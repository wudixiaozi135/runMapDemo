package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.dungeon.ProtoDungeonRaidsInfo;
	import serverProto.dungeon.ProtoRaidsCountReward;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoImmediatelyCompleteRaidsResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoImmediatelyCompleteRaidsResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const RAIDS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoImmediatelyCompleteRaidsResponse.raids_info", "raidsInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoDungeonRaidsInfo);

		private var raids_info$field:serverProto.dungeon.ProtoDungeonRaidsInfo;

		public function clearRaidsInfo():void {
			raids_info$field = null;
		}

		public function get hasRaidsInfo():Boolean {
			return raids_info$field != null;
		}

		public function set raidsInfo(value:serverProto.dungeon.ProtoDungeonRaidsInfo):void {
			raids_info$field = value;
		}

		public function get raidsInfo():serverProto.dungeon.ProtoDungeonRaidsInfo {
			return raids_info$field;
		}

		/**
		 *  @private
		 */
		public static const RAIDS_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoImmediatelyCompleteRaidsResponse.raids_reward", "raidsReward", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoRaidsCountReward);

		[ArrayElementType("serverProto.dungeon.ProtoRaidsCountReward")]
		public var raidsReward:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasRaidsInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, raids_info$field);
			}
			for (var raidsReward$index:uint = 0; raidsReward$index < this.raidsReward.length; ++raidsReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.raidsReward[raidsReward$index]);
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
			var raids_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImmediatelyCompleteRaidsResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (raids_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImmediatelyCompleteRaidsResponse.raidsInfo cannot be set twice.');
					}
					++raids_info$count;
					this.raidsInfo = new serverProto.dungeon.ProtoDungeonRaidsInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.raidsInfo);
					break;
				case 3:
					this.raidsReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoRaidsCountReward()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
