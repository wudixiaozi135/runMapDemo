package serverProto.huntlife {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.huntlife.ProtoChakraBlankInfo;
	import serverProto.huntlife.ProtoNpcInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoHuntLifeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.free_count", "freeCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var freeCount:uint;

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.score", "score", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var score:uint;

		/**
		 *  @private
		 */
		public static const VIP4_FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.vip4_free_count", "vip4FreeCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip4_free_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearVip4FreeCount():void {
			hasField$0 &= 0xfffffffe;
			vip4_free_count$field = new uint();
		}

		public function get hasVip4FreeCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set vip4FreeCount(value:uint):void {
			hasField$0 |= 0x1;
			vip4_free_count$field = value;
		}

		public function get vip4FreeCount():uint {
			return vip4_free_count$field;
		}

		/**
		 *  @private
		 */
		public static const BLANK_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifeInfo.blank_info", "blankInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoChakraBlankInfo);

		[ArrayElementType("serverProto.huntlife.ProtoChakraBlankInfo")]
		public var blankInfo:Array = [];

		/**
		 *  @private
		 */
		public static const NPC_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifeInfo.npc_info", "npcInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoNpcInfo);

		[ArrayElementType("serverProto.huntlife.ProtoNpcInfo")]
		public var npcInfo:Array = [];

		/**
		 *  @private
		 */
		public static const CALL_NPC_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.call_npc_cost", "callNpcCost", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var call_npc_cost$field:uint;

		public function clearCallNpcCost():void {
			hasField$0 &= 0xfffffffd;
			call_npc_cost$field = new uint();
		}

		public function get hasCallNpcCost():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set callNpcCost(value:uint):void {
			hasField$0 |= 0x2;
			call_npc_cost$field = value;
		}

		public function get callNpcCost():uint {
			return call_npc_cost$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.freeCount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.score);
			if (hasVip4FreeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip4_free_count$field);
			}
			for (var blankInfo$index:uint = 0; blankInfo$index < this.blankInfo.length; ++blankInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.blankInfo[blankInfo$index]);
			}
			for (var npcInfo$index:uint = 0; npcInfo$index < this.npcInfo.length; ++npcInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.npcInfo[npcInfo$index]);
			}
			if (hasCallNpcCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, call_npc_cost$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var free_count$count:uint = 0;
			var score$count:uint = 0;
			var vip4_free_count$count:uint = 0;
			var call_npc_cost$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (free_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHuntLifeInfo.freeCount cannot be set twice.');
					}
					++free_count$count;
					this.freeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHuntLifeInfo.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (vip4_free_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHuntLifeInfo.vip4FreeCount cannot be set twice.');
					}
					++vip4_free_count$count;
					this.vip4FreeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.blankInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.huntlife.ProtoChakraBlankInfo()));
					break;
				case 5:
					this.npcInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.huntlife.ProtoNpcInfo()));
					break;
				case 6:
					if (call_npc_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHuntLifeInfo.callNpcCost cannot be set twice.');
					}
					++call_npc_cost$count;
					this.callNpcCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
