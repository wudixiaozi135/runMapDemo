package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaImportantOperate extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_CARD_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.ninja_card_id", "ninjaCardId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var ninjaCardId:Array = [];

		/**
		 *  @private
		 */
		public static const STRENGTH_NINJA_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.strength_ninja_id", "strengthNinjaId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var strengthNinjaId:Array = [];

		/**
		 *  @private
		 */
		public static const AWAKE_NINJA_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.awake_ninja_id", "awakeNinjaId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var awakeNinjaId:Array = [];

		/**
		 *  @private
		 */
		public static const UPGRADE_STAR_NINJA_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.upgrade_star_ninja_id", "upgradeStarNinjaId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var upgradeStarNinjaId:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var ninjaCardId$index:uint = 0; ninjaCardId$index < this.ninjaCardId.length; ++ninjaCardId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaCardId[ninjaCardId$index]);
			}
			for (var strengthNinjaId$index:uint = 0; strengthNinjaId$index < this.strengthNinjaId.length; ++strengthNinjaId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.strengthNinjaId[strengthNinjaId$index]);
			}
			for (var awakeNinjaId$index:uint = 0; awakeNinjaId$index < this.awakeNinjaId.length; ++awakeNinjaId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.awakeNinjaId[awakeNinjaId$index]);
			}
			for (var upgradeStarNinjaId$index:uint = 0; upgradeStarNinjaId$index < this.upgradeStarNinjaId.length; ++upgradeStarNinjaId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.upgradeStarNinjaId[upgradeStarNinjaId$index]);
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
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_SINT32, this.ninjaCardId);
						break;
					}
					this.ninjaCardId.push(com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input));
					break;
				case 2:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_SINT32, this.strengthNinjaId);
						break;
					}
					this.strengthNinjaId.push(com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input));
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_SINT32, this.awakeNinjaId);
						break;
					}
					this.awakeNinjaId.push(com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input));
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_SINT32, this.upgradeStarNinjaId);
						break;
					}
					this.upgradeStarNinjaId.push(com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
