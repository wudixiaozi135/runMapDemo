package serverProto.ninjaexam {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.ninjaexam.ProtoExamStageItemInfo;
	import serverProto.ninjaexam.ProtoNinjaExamInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaExamFightNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EXAMINFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoNinjaExamFightNotify.examinfo", "examinfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaexam.ProtoNinjaExamInfo);

		public var examinfo:serverProto.ninjaexam.ProtoNinjaExamInfo;

		/**
		 *  @private
		 */
		public static const CURR_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoNinjaExamFightNotify.curr_item_info", "currItemInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaexam.ProtoExamStageItemInfo);

		private var curr_item_info$field:serverProto.ninjaexam.ProtoExamStageItemInfo;

		public function clearCurrItemInfo():void {
			curr_item_info$field = null;
		}

		public function get hasCurrItemInfo():Boolean {
			return curr_item_info$field != null;
		}

		public function set currItemInfo(value:serverProto.ninjaexam.ProtoExamStageItemInfo):void {
			curr_item_info$field = value;
		}

		public function get currItemInfo():serverProto.ninjaexam.ProtoExamStageItemInfo {
			return curr_item_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.examinfo);
			if (hasCurrItemInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, curr_item_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var examinfo$count:uint = 0;
			var curr_item_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (examinfo$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamFightNotify.examinfo cannot be set twice.');
					}
					++examinfo$count;
					this.examinfo = new serverProto.ninjaexam.ProtoNinjaExamInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.examinfo);
					break;
				case 2:
					if (curr_item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaExamFightNotify.currItemInfo cannot be set twice.');
					}
					++curr_item_info$count;
					this.currItemInfo = new serverProto.ninjaexam.ProtoExamStageItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.currItemInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
