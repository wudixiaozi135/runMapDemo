package serverProto.worldBoss {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWorldBossSceneResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossSceneResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossSceneResponse.scene_id", "sceneId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossSceneResponse.location", "location", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var location$field:serverProto.inc.ProtoPoint;

		public function clearLocation():void {
			location$field = null;
		}

		public function get hasLocation():Boolean {
			return location$field != null;
		}

		public function set location(value:serverProto.inc.ProtoPoint):void {
			location$field = value;
		}

		public function get location():serverProto.inc.ProtoPoint {
			return location$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasSceneId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, scene_id$field);
			}
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, location$field);
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
			var scene_id$count:uint = 0;
			var location$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossSceneResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (scene_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossSceneResponse.sceneId cannot be set twice.');
					}
					++scene_id$count;
					this.sceneId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossSceneResponse.location cannot be set twice.');
					}
					++location$count;
					this.location = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.location);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
