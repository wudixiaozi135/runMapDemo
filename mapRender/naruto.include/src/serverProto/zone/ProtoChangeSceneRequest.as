package serverProto.zone {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChangeSceneRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHANGE_SCENE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zone.ProtoChangeSceneRequest.change_scene_type", "changeSceneType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var changeSceneType:uint;

		/**
		 *  @private
		 */
		public static const PORTAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zone.ProtoChangeSceneRequest.portal_id", "portalId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var portal_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearPortalId():void {
			hasField$0 &= 0xfffffffe;
			portal_id$field = new uint();
		}

		public function get hasPortalId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set portalId(value:uint):void {
			hasField$0 |= 0x1;
			portal_id$field = value;
		}

		public function get portalId():uint {
			return portal_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.changeSceneType);
			if (hasPortalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, portal_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var change_scene_type$count:uint = 0;
			var portal_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (change_scene_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChangeSceneRequest.changeSceneType cannot be set twice.');
					}
					++change_scene_type$count;
					this.changeSceneType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (portal_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChangeSceneRequest.portalId cannot be set twice.');
					}
					++portal_id$count;
					this.portalId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
