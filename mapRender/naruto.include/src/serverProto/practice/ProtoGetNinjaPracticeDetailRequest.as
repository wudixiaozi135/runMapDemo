package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetNinjaPracticeDetailRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoGetNinjaPracticeDetailRequest.ninja_seq", "ninjaSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:int;

		/**
		 *  @private
		 */
		public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailRequest.friend", "friend", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var friend$field:serverProto.inc.ProtoPlayerKey;

		public function clearFriend():void {
			friend$field = null;
		}

		public function get hasFriend():Boolean {
			return friend$field != null;
		}

		public function set friend(value:serverProto.inc.ProtoPlayerKey):void {
			friend$field = value;
		}

		public function get friend():serverProto.inc.ProtoPlayerKey {
			return friend$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaSeq);
			if (hasFriend) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_seq$count:uint = 0;
			var friend$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPracticeDetailRequest.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (friend$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPracticeDetailRequest.friend cannot be set twice.');
					}
					++friend$count;
					this.friend = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friend);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
