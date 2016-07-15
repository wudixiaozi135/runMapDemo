package serverProto.inc {
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
	public  final class ProtoLocationInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SCENE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.scene", "scene", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene$field:int;

		private var hasField$0:uint = 0;

		public function clearScene():void {
			hasField$0 &= 0xfffffffe;
			scene$field = new int();
		}

		public function get hasScene():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set scene(value:int):void {
			hasField$0 |= 0x1;
			scene$field = value;
		}

		public function get scene():int {
			return scene$field;
		}

		/**
		 *  @private
		 */
		public static const X:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.x", "x", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var x$field:int;

		public function clearX():void {
			hasField$0 &= 0xfffffffd;
			x$field = new int();
		}

		public function get hasX():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set x(value:int):void {
			hasField$0 |= 0x2;
			x$field = value;
		}

		public function get x():int {
			return x$field;
		}

		/**
		 *  @private
		 */
		public static const Y:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.y", "y", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var y$field:int;

		public function clearY():void {
			hasField$0 &= 0xfffffffb;
			y$field = new int();
		}

		public function get hasY():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set y(value:int):void {
			hasField$0 |= 0x4;
			y$field = value;
		}

		public function get y():int {
			return y$field;
		}

		/**
		 *  @private
		 */
		public static const FACE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.face", "face", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var face$field:int;

		public function clearFace():void {
			hasField$0 &= 0xfffffff7;
			face$field = new int();
		}

		public function get hasFace():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set face(value:int):void {
			hasField$0 |= 0x8;
			face$field = value;
		}

		public function get face():int {
			return face$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasScene) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, scene$field);
			}
			if (hasX) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, x$field);
			}
			if (hasY) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, y$field);
			}
			if (hasFace) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, face$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var scene$count:uint = 0;
			var x$count:uint = 0;
			var y$count:uint = 0;
			var face$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (scene$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLocationInfo.scene cannot be set twice.');
					}
					++scene$count;
					this.scene = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (x$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLocationInfo.x cannot be set twice.');
					}
					++x$count;
					this.x = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (y$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLocationInfo.y cannot be set twice.');
					}
					++y$count;
					this.y = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (face$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLocationInfo.face cannot be set twice.');
					}
					++face$count;
					this.face = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
