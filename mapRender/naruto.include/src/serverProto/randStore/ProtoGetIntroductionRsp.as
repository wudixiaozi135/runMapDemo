package serverProto.randStore {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.randStore.ProtoRandStoreIntroduction;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetIntroductionRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoGetIntroductionRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const STORE_INTRODUCTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoGetIntroductionRsp.store_introduction", "storeIntroduction", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.randStore.ProtoRandStoreIntroduction);

		private var store_introduction$field:serverProto.randStore.ProtoRandStoreIntroduction;

		public function clearStoreIntroduction():void {
			store_introduction$field = null;
		}

		public function get hasStoreIntroduction():Boolean {
			return store_introduction$field != null;
		}

		public function set storeIntroduction(value:serverProto.randStore.ProtoRandStoreIntroduction):void {
			store_introduction$field = value;
		}

		public function get storeIntroduction():serverProto.randStore.ProtoRandStoreIntroduction {
			return store_introduction$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasStoreIntroduction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, store_introduction$field);
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
			var store_introduction$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetIntroductionRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (store_introduction$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetIntroductionRsp.storeIntroduction cannot be set twice.');
					}
					++store_introduction$count;
					this.storeIntroduction = new serverProto.randStore.ProtoRandStoreIntroduction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.storeIntroduction);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
