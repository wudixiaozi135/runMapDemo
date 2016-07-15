package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.ninjaSystem.ProtoPlayerNinjaBookList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetNinjaBookResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaBookResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_BOOK_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaBookResponse.ninja_book_list", "ninjaBookList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoPlayerNinjaBookList);

		private var ninja_book_list$field:serverProto.ninjaSystem.ProtoPlayerNinjaBookList;

		public function clearNinjaBookList():void {
			ninja_book_list$field = null;
		}

		public function get hasNinjaBookList():Boolean {
			return ninja_book_list$field != null;
		}

		public function set ninjaBookList(value:serverProto.ninjaSystem.ProtoPlayerNinjaBookList):void {
			ninja_book_list$field = value;
		}

		public function get ninjaBookList():serverProto.ninjaSystem.ProtoPlayerNinjaBookList {
			return ninja_book_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNinjaBookList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_book_list$field);
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
			var ninja_book_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaBookResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (ninja_book_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaBookResponse.ninjaBookList cannot be set twice.');
					}
					++ninja_book_list$count;
					this.ninjaBookList = new serverProto.ninjaSystem.ProtoPlayerNinjaBookList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaBookList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
