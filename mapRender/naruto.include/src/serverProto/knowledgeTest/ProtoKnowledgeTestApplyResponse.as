package serverProto.knowledgeTest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.knowledgeTest.ProtoKnowledgeTestUserState;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKnowledgeTestApplyResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestApplyResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.knowledgeTest.ProtoKnowledgeTestApplyResponse.state", "state", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.knowledgeTest.ProtoKnowledgeTestUserState);

		private var state$field:int;

		private var hasField$0:uint = 0;

		public function clearState():void {
			hasField$0 &= 0xfffffffe;
			state$field = new int();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set state(value:int):void {
			hasField$0 |= 0x1;
			state$field = value;
		}

		public function get state():int {
			return state$field;
		}

		/**
		 *  @private
		 */
		public static const ENTER_RAMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestApplyResponse.enter_ramin_time", "enterRaminTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter_ramin_time$field:uint;

		public function clearEnterRaminTime():void {
			hasField$0 &= 0xfffffffd;
			enter_ramin_time$field = new uint();
		}

		public function get hasEnterRaminTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set enterRaminTime(value:uint):void {
			hasField$0 |= 0x2;
			enter_ramin_time$field = value;
		}

		public function get enterRaminTime():uint {
			return enter_ramin_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, state$field);
			}
			if (hasEnterRaminTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, enter_ramin_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var state$count:uint = 0;
			var enter_ramin_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestApplyResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestApplyResponse.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (enter_ramin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKnowledgeTestApplyResponse.enterRaminTime cannot be set twice.');
					}
					++enter_ramin_time$count;
					this.enterRaminTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
