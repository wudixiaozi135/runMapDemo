package serverProto.quiz {
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
	public  final class ProtoQuizAnswerRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const QUESTION_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuizAnswerRequest.question_index", "questionIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var questionIndex:int;

		/**
		 *  @private
		 */
		public static const ANSWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuizAnswerRequest.answer", "answer", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var answer:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.questionIndex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.answer);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var question_index$count:uint = 0;
			var answer$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (question_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuizAnswerRequest.questionIndex cannot be set twice.');
					}
					++question_index$count;
					this.questionIndex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (answer$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuizAnswerRequest.answer cannot be set twice.');
					}
					++answer$count;
					this.answer = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
