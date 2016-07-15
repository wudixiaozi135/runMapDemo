package serverProto.npc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.npc.NpcType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNpcRewardNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoNpcRewardNotify.scene_id", "sceneId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene_id$field:int;

		private var hasField$0:uint = 0;

		public function clearSceneId():void {
			hasField$0 &= 0xfffffffe;
			scene_id$field = new int();
		}

		public function get hasSceneId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set sceneId(value:int):void {
			hasField$0 |= 0x1;
			scene_id$field = value;
		}

		public function get sceneId():int {
			return scene_id$field;
		}

		/**
		 *  @private
		 */
		public static const CLIENT_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoNpcRewardNotify.client_id", "clientId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var client_id$field:int;

		public function clearClientId():void {
			hasField$0 &= 0xfffffffd;
			client_id$field = new int();
		}

		public function get hasClientId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set clientId(value:int):void {
			hasField$0 |= 0x2;
			client_id$field = value;
		}

		public function get clientId():int {
			return client_id$field;
		}

		/**
		 *  @private
		 */
		public static const NPC_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.npc.ProtoNpcRewardNotify.npc_type", "npcType", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.npc.NpcType);

		private var npc_type$field:int;

		public function clearNpcType():void {
			hasField$0 &= 0xfffffffb;
			npc_type$field = new int();
		}

		public function get hasNpcType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set npcType(value:int):void {
			hasField$0 |= 0x4;
			npc_type$field = value;
		}

		public function get npcType():int {
			return npc_type$field;
		}

		/**
		 *  @private
		 */
		public static const REWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoNpcRewardNotify.reward_info", "rewardInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var rewardInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSceneId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, scene_id$field);
			}
			if (hasClientId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, client_id$field);
			}
			if (hasNpcType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, npc_type$field);
			}
			for (var rewardInfo$index:uint = 0; rewardInfo$index < this.rewardInfo.length; ++rewardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rewardInfo[rewardInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var scene_id$count:uint = 0;
			var client_id$count:uint = 0;
			var npc_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (scene_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcRewardNotify.sceneId cannot be set twice.');
					}
					++scene_id$count;
					this.sceneId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (client_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcRewardNotify.clientId cannot be set twice.');
					}
					++client_id$count;
					this.clientId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (npc_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcRewardNotify.npcType cannot be set twice.');
					}
					++npc_type$count;
					this.npcType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					this.rewardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
