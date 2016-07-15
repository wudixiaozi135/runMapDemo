package serverProto.npc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInteractingNpcResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoInteractingNpcResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const REMAINDER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoInteractingNpcResponse.remainder", "remainder", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var remainder:int;

		/**
		 *  @private
		 */
		public static const COOLDOWN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoInteractingNpcResponse.cooldown_time", "cooldownTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cooldownTime:uint;

		/**
		 *  @private
		 */
		public static const AWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoInteractingNpcResponse.award_info", "awardInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var awardInfo:Array = [];

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoInteractingNpcResponse.hp", "hp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:int;

		private var hasField$0:uint = 0;

		public function clearHp():void {
			hasField$0 &= 0xfffffffe;
			hp$field = new int();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hp(value:int):void {
			hasField$0 |= 0x1;
			hp$field = value;
		}

		public function get hp():int {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const CHAKRA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoInteractingNpcResponse.chakra", "chakra", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chakra$field:int;

		public function clearChakra():void {
			hasField$0 &= 0xfffffffd;
			chakra$field = new int();
		}

		public function get hasChakra():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set chakra(value:int):void {
			hasField$0 |= 0x2;
			chakra$field = value;
		}

		public function get chakra():int {
			return chakra$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.remainder);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.cooldownTime);
			for (var awardInfo$index:uint = 0; awardInfo$index < this.awardInfo.length; ++awardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardInfo[awardInfo$index]);
			}
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hp$field);
			}
			if (hasChakra) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, chakra$field);
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
			var remainder$count:uint = 0;
			var cooldown_time$count:uint = 0;
			var hp$count:uint = 0;
			var chakra$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInteractingNpcResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (remainder$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInteractingNpcResponse.remainder cannot be set twice.');
					}
					++remainder$count;
					this.remainder = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (cooldown_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInteractingNpcResponse.cooldownTime cannot be set twice.');
					}
					++cooldown_time$count;
					this.cooldownTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.awardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 5:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInteractingNpcResponse.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (chakra$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInteractingNpcResponse.chakra cannot be set twice.');
					}
					++chakra$count;
					this.chakra = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
