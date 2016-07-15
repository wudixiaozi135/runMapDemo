package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMergeServerConsumeData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CONSUME_GOLDINGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerConsumeData.consume_goldingot", "consumeGoldingot", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_goldingot$field:uint;

		private var hasField$0:uint = 0;

		public function clearConsumeGoldingot():void {
			hasField$0 &= 0xfffffffe;
			consume_goldingot$field = new uint();
		}

		public function get hasConsumeGoldingot():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set consumeGoldingot(value:uint):void {
			hasField$0 |= 0x1;
			consume_goldingot$field = value;
		}

		public function get consumeGoldingot():uint {
			return consume_goldingot$field;
		}

		/**
		 *  @private
		 */
		public static const BOX_GOLDINGOT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerConsumeData.box_goldingot", "boxGoldingot", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var boxGoldingot:Array = [];

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerConsumeData.package_boxes", "packageBoxes", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasConsumeGoldingot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_goldingot$field);
			}
			for (var boxGoldingot$index:uint = 0; boxGoldingot$index < this.boxGoldingot.length; ++boxGoldingot$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.boxGoldingot[boxGoldingot$index]);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var consume_goldingot$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (consume_goldingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerConsumeData.consumeGoldingot cannot be set twice.');
					}
					++consume_goldingot$count;
					this.consumeGoldingot = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.boxGoldingot);
						break;
					}
					this.boxGoldingot.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 3:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
