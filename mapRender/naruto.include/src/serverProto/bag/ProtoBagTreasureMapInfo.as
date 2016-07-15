package serverProto.bag {
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
	public  final class ProtoBagTreasureMapInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagTreasureMapInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagTreasureMapInfo.index", "index", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:int;

		/**
		 *  @private
		 */
		public static const MAP_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagTreasureMapInfo.map_id", "mapId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var map_id$field:int;

		private var hasField$0:uint = 0;

		public function clearMapId():void {
			hasField$0 &= 0xfffffffe;
			map_id$field = new int();
		}

		public function get hasMapId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set mapId(value:int):void {
			hasField$0 |= 0x1;
			map_id$field = value;
		}

		public function get mapId():int {
			return map_id$field;
		}

		/**
		 *  @private
		 */
		public static const POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagTreasureMapInfo.point", "point", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var point$field:serverProto.inc.ProtoPoint;

		public function clearPoint():void {
			point$field = null;
		}

		public function get hasPoint():Boolean {
			return point$field != null;
		}

		public function set point(value:serverProto.inc.ProtoPoint):void {
			point$field = value;
		}

		public function get point():serverProto.inc.ProtoPoint {
			return point$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.index);
			if (hasMapId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, map_id$field);
			}
			if (hasPoint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, point$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var index$count:uint = 0;
			var map_id$count:uint = 0;
			var point$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagTreasureMapInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagTreasureMapInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (map_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagTreasureMapInfo.mapId cannot be set twice.');
					}
					++map_id$count;
					this.mapId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagTreasureMapInfo.point cannot be set twice.');
					}
					++point$count;
					this.point = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.point);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
