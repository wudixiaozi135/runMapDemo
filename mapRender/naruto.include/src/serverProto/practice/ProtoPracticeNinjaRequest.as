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
	public  final class ProtoPracticeNinjaRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeNinjaRequest.ninja_seq", "ninjaSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:int;

		/**
		 *  @private
		 */
		public static const TIME_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeNinjaRequest.time_type", "timeType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var time_type$field:int;

		private var hasField$0:uint = 0;

		public function clearTimeType():void {
			hasField$0 &= 0xfffffffe;
			time_type$field = new int();
		}

		public function get hasTimeType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set timeType(value:int):void {
			hasField$0 |= 0x1;
			time_type$field = value;
		}

		public function get timeType():int {
			return time_type$field;
		}

		/**
		 *  @private
		 */
		public static const PAY_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeNinjaRequest.pay_type", "payType", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_type$field:int;

		public function clearPayType():void {
			hasField$0 &= 0xfffffffd;
			pay_type$field = new int();
		}

		public function get hasPayType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set payType(value:int):void {
			hasField$0 |= 0x2;
			pay_type$field = value;
		}

		public function get payType():int {
			return pay_type$field;
		}

		/**
		 *  @private
		 */
		public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticeNinjaRequest.friend", "friend", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
			if (hasTimeType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, time_type$field);
			}
			if (hasPayType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, pay_type$field);
			}
			if (hasFriend) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
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
			var time_type$count:uint = 0;
			var pay_type$count:uint = 0;
			var friend$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeNinjaRequest.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (time_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeNinjaRequest.timeType cannot be set twice.');
					}
					++time_type$count;
					this.timeType = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (pay_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeNinjaRequest.payType cannot be set twice.');
					}
					++pay_type$count;
					this.payType = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (friend$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeNinjaRequest.friend cannot be set twice.');
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
