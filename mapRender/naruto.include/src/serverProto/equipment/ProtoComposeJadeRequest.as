package serverProto.equipment {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoItemIndex;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoComposeJadeRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EQUIPMENT_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoComposeJadeRequest.equipment_sequence", "equipmentSequence", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var equipmentSequence:UInt64;

		/**
		 *  @private
		 */
		public static const MAIN_JADE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoComposeJadeRequest.main_jade_index", "mainJadeIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var mainJadeIndex:uint;

		/**
		 *  @private
		 */
		public static const JADE_INDEX:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeRequest.jade_index", "jadeIndex", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoItemIndex);

		[ArrayElementType("serverProto.bag.ProtoItemIndex")]
		public var jadeIndex:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.equipmentSequence);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.mainJadeIndex);
			for (var jadeIndex$index:uint = 0; jadeIndex$index < this.jadeIndex.length; ++jadeIndex$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.jadeIndex[jadeIndex$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var equipment_sequence$count:uint = 0;
			var main_jade_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (equipment_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeRequest.equipmentSequence cannot be set twice.');
					}
					++equipment_sequence$count;
					this.equipmentSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (main_jade_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComposeJadeRequest.mainJadeIndex cannot be set twice.');
					}
					++main_jade_index$count;
					this.mainJadeIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.jadeIndex.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoItemIndex()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
