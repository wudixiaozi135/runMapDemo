package serverProto.fight {
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
	public  final class FightBackgroundRes extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BACKGROUND_MAP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.FightBackgroundRes.background_map", "backgroundMap", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var background_map$field:uint;

		private var hasField$0:uint = 0;

		public function clearBackgroundMap():void {
			hasField$0 &= 0xfffffffe;
			background_map$field = new uint();
		}

		public function get hasBackgroundMap():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set backgroundMap(value:uint):void {
			hasField$0 |= 0x1;
			background_map$field = value;
		}

		public function get backgroundMap():uint {
			return background_map$field;
		}

		/**
		 *  @private
		 */
		public static const BGM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.FightBackgroundRes.bgm", "bgm", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bgm$field:uint;

		public function clearBgm():void {
			hasField$0 &= 0xfffffffd;
			bgm$field = new uint();
		}

		public function get hasBgm():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set bgm(value:uint):void {
			hasField$0 |= 0x2;
			bgm$field = value;
		}

		public function get bgm():uint {
			return bgm$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBackgroundMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, background_map$field);
			}
			if (hasBgm) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, bgm$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var background_map$count:uint = 0;
			var bgm$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (background_map$count != 0) {
						throw new flash.errors.IOError('Bad data format: FightBackgroundRes.backgroundMap cannot be set twice.');
					}
					++background_map$count;
					this.backgroundMap = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (bgm$count != 0) {
						throw new flash.errors.IOError('Bad data format: FightBackgroundRes.bgm cannot be set twice.');
					}
					++bgm$count;
					this.bgm = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
