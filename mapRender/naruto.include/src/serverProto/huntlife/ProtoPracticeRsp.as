package serverProto.huntlife {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.huntlife.ProtoHuntLifeInfo;
	import serverProto.huntlife.ProtoHuntLifePracticeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPracticeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoPracticeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PRACTICE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoPracticeRsp.practice_info", "practiceInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoHuntLifePracticeInfo);

		[ArrayElementType("serverProto.huntlife.ProtoHuntLifePracticeInfo")]
		public var practiceInfo:Array = [];

		/**
		 *  @private
		 */
		public static const HUNT_LIFE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoPracticeRsp.hunt_life_info", "huntLifeInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoHuntLifeInfo);

		private var hunt_life_info$field:serverProto.huntlife.ProtoHuntLifeInfo;

		public function clearHuntLifeInfo():void {
			hunt_life_info$field = null;
		}

		public function get hasHuntLifeInfo():Boolean {
			return hunt_life_info$field != null;
		}

		public function set huntLifeInfo(value:serverProto.huntlife.ProtoHuntLifeInfo):void {
			hunt_life_info$field = value;
		}

		public function get huntLifeInfo():serverProto.huntlife.ProtoHuntLifeInfo {
			return hunt_life_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var practiceInfo$index:uint = 0; practiceInfo$index < this.practiceInfo.length; ++practiceInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.practiceInfo[practiceInfo$index]);
			}
			if (hasHuntLifeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, hunt_life_info$field);
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
			var hunt_life_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.practiceInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.huntlife.ProtoHuntLifePracticeInfo()));
					break;
				case 3:
					if (hunt_life_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeRsp.huntLifeInfo cannot be set twice.');
					}
					++hunt_life_info$count;
					this.huntLifeInfo = new serverProto.huntlife.ProtoHuntLifeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.huntLifeInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
