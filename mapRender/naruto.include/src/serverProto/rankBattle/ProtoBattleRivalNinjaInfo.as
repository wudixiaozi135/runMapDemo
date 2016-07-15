package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoNinjaSimpleInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBattleRivalNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MID_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoBattleRivalNinjaInfo.mid_ninja_tips", "midNinjaTips", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNinjaSimpleInfo);

		[ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
		public var midNinjaTips:Array = [];

		/**
		 *  @private
		 */
		public static const UP_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoBattleRivalNinjaInfo.up_ninja_tips", "upNinjaTips", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNinjaSimpleInfo);

		[ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
		public var upNinjaTips:Array = [];

		/**
		 *  @private
		 */
		public static const DOWN_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoBattleRivalNinjaInfo.down_ninja_tips", "downNinjaTips", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNinjaSimpleInfo);

		[ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
		public var downNinjaTips:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var midNinjaTips$index:uint = 0; midNinjaTips$index < this.midNinjaTips.length; ++midNinjaTips$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.midNinjaTips[midNinjaTips$index]);
			}
			for (var upNinjaTips$index:uint = 0; upNinjaTips$index < this.upNinjaTips.length; ++upNinjaTips$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.upNinjaTips[upNinjaTips$index]);
			}
			for (var downNinjaTips$index:uint = 0; downNinjaTips$index < this.downNinjaTips.length; ++downNinjaTips$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.downNinjaTips[downNinjaTips$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.midNinjaTips.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoNinjaSimpleInfo()));
					break;
				case 2:
					this.upNinjaTips.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoNinjaSimpleInfo()));
					break;
				case 3:
					this.downNinjaTips.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoNinjaSimpleInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
