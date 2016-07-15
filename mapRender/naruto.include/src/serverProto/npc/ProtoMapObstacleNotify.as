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
	public  final class ProtoMapObstacleNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleNotify.uin", "uin", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleNotify.ninjia", "ninjia", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjia:uint;

		/**
		 *  @private
		 */
		public static const OBSTACLE_CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleNotify.obstacle_client_id", "obstacleClientId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var obstacleClientId:uint;

		/**
		 *  @private
		 */
		public static const DESTINATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoMapObstacleNotify.destination", "destination", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var destination$field:serverProto.inc.ProtoPoint;

		public function clearDestination():void {
			destination$field = null;
		}

		public function get hasDestination():Boolean {
			return destination$field != null;
		}

		public function set destination(value:serverProto.inc.ProtoPoint):void {
			destination$field = value;
		}

		public function get destination():serverProto.inc.ProtoPoint {
			return destination$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.uin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjia);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.obstacleClientId);
			if (hasDestination) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, destination$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var uin$count:uint = 0;
			var ninjia$count:uint = 0;
			var obstacle_client_id$count:uint = 0;
			var destination$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleNotify.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninjia$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleNotify.ninjia cannot be set twice.');
					}
					++ninjia$count;
					this.ninjia = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (obstacle_client_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleNotify.obstacleClientId cannot be set twice.');
					}
					++obstacle_client_id$count;
					this.obstacleClientId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (destination$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapObstacleNotify.destination cannot be set twice.');
					}
					++destination$count;
					this.destination = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.destination);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
