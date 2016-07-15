package serverProto.npc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMapObstacleRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleRequest.client_id", "clientId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var clientId:uint;

		/**
		 *  @private
		 */
		public static const NPC_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleRequest.npc_type", "npcType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var npcType:uint;

		/**
		 *  @private
		 */
		public static const ROPE_DESTINATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoMapObstacleRequest.rope_destination", "ropeDestination", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var rope_destination$field:serverProto.inc.ProtoPoint;

		public function clearRopeDestination():void {
			rope_destination$field = null;
		}

		public function get hasRopeDestination():Boolean {
			return rope_destination$field != null;
		}

		public function set ropeDestination(value:serverProto.inc.ProtoPoint):void {
			rope_destination$field = value;
		}

		public function get ropeDestination():serverProto.inc.ProtoPoint {
			return rope_destination$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.clientId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.npcType);
			if (hasRopeDestination) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rope_destination$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var client_id$count:uint = 0;
			var npc_type$count:uint = 0;
			var rope_destination$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (client_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleRequest.clientId cannot be set twice.');
					}
					++client_id$count;
					this.clientId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (npc_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleRequest.npcType cannot be set twice.');
					}
					++npc_type$count;
					this.npcType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (rope_destination$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleRequest.ropeDestination cannot be set twice.');
					}
					++rope_destination$count;
					this.ropeDestination = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ropeDestination);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
