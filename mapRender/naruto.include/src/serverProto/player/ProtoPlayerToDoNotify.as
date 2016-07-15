package serverProto.player {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoLocationInfo;
	import serverProto.player.ProtoPlayerToDoType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerToDoNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerToDoNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.player.ProtoPlayerToDoType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerToDoNotify.location", "location", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoLocationInfo);

		private var location$field:serverProto.inc.ProtoLocationInfo;

		public function clearLocation():void {
			location$field = null;
		}

		public function get hasLocation():Boolean {
			return location$field != null;
		}

		public function set location(value:serverProto.inc.ProtoLocationInfo):void {
			location$field = value;
		}

		public function get location():serverProto.inc.ProtoLocationInfo {
			return location$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
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
			var type$count:uint = 0;
			var location$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerToDoNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerToDoNotify.location cannot be set twice.');
					}
					++location$count;
					this.location = new serverProto.inc.ProtoLocationInfo();
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
