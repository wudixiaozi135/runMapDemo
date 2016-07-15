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
	import serverProto.ninjaSystem.ProtoAllInOneNinjaList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetAllInOneNinjaListResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetAllInOneNinjaListResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const ALL_IN_ONE_NINJA_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetAllInOneNinjaListResponse.all_in_one_ninja_list", "allInOneNinjaList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoAllInOneNinjaList);

		private var all_in_one_ninja_list$field:serverProto.ninjaSystem.ProtoAllInOneNinjaList;

		public function clearAllInOneNinjaList():void {
			all_in_one_ninja_list$field = null;
		}

		public function get hasAllInOneNinjaList():Boolean {
			return all_in_one_ninja_list$field != null;
		}

		public function set allInOneNinjaList(value:serverProto.ninjaSystem.ProtoAllInOneNinjaList):void {
			all_in_one_ninja_list$field = value;
		}

		public function get allInOneNinjaList():serverProto.ninjaSystem.ProtoAllInOneNinjaList {
			return all_in_one_ninja_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasAllInOneNinjaList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, all_in_one_ninja_list$field);
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
			var all_in_one_ninja_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetAllInOneNinjaListResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (all_in_one_ninja_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetAllInOneNinjaListResponse.allInOneNinjaList cannot be set twice.');
					}
					++all_in_one_ninja_list$count;
					this.allInOneNinjaList = new serverProto.ninjaSystem.ProtoAllInOneNinjaList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.allInOneNinjaList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
