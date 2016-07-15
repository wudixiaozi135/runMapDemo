package serverProto.fight {
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
	public  final class ProtoBubbleDialogue extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DIALOGUE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoBubbleDialogue.dialogue", "dialogue", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var dialogue:String;

		/**
		 *  @private
		 */
		public static const EXIST_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBubbleDialogue.exist_time", "existTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var existTime:uint;

		/**
		 *  @private
		 */
		public static const LAST_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBubbleDialogue.last_time", "lastTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var lastTime:uint;

		/**
		 *  @private
		 */
		public static const POS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBubbleDialogue.pos", "pos", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var pos:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.dialogue);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.existTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.lastTime);
			for (var pos$index:uint = 0; pos$index < this.pos.length; ++pos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.pos[pos$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var dialogue$count:uint = 0;
			var exist_time$count:uint = 0;
			var last_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dialogue$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBubbleDialogue.dialogue cannot be set twice.');
					}
					++dialogue$count;
					this.dialogue = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (exist_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBubbleDialogue.existTime cannot be set twice.');
					}
					++exist_time$count;
					this.existTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (last_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBubbleDialogue.lastTime cannot be set twice.');
					}
					++last_time$count;
					this.lastTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.pos);
						break;
					}
					this.pos.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
