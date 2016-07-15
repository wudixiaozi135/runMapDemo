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
	public  final class ProtoEffectTimeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EFFECT_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoEffectTimeInfo.effect_id", "effectId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var effect_id$field:int;

		private var hasField$0:uint = 0;

		public function clearEffectId():void {
			hasField$0 &= 0xfffffffe;
			effect_id$field = new int();
		}

		public function get hasEffectId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set effectId(value:int):void {
			hasField$0 |= 0x1;
			effect_id$field = value;
		}

		public function get effectId():int {
			return effect_id$field;
		}

		/**
		 *  @private
		 */
		public static const EFFECT_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoEffectTimeInfo.effect_pos", "effectPos", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var effect_pos$field:int;

		public function clearEffectPos():void {
			hasField$0 &= 0xfffffffd;
			effect_pos$field = new int();
		}

		public function get hasEffectPos():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set effectPos(value:int):void {
			hasField$0 |= 0x2;
			effect_pos$field = value;
		}

		public function get effectPos():int {
			return effect_pos$field;
		}

		/**
		 *  @private
		 */
		public static const EFFECT_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoEffectTimeInfo.effect_frame_count", "effectFrameCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var effect_frame_count$field:int;

		public function clearEffectFrameCount():void {
			hasField$0 &= 0xfffffffb;
			effect_frame_count$field = new int();
		}

		public function get hasEffectFrameCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set effectFrameCount(value:int):void {
			hasField$0 |= 0x4;
			effect_frame_count$field = value;
		}

		public function get effectFrameCount():int {
			return effect_frame_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEffectId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, effect_id$field);
			}
			if (hasEffectPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, effect_pos$field);
			}
			if (hasEffectFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, effect_frame_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var effect_id$count:uint = 0;
			var effect_pos$count:uint = 0;
			var effect_frame_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (effect_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEffectTimeInfo.effectId cannot be set twice.');
					}
					++effect_id$count;
					this.effectId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (effect_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEffectTimeInfo.effectPos cannot be set twice.');
					}
					++effect_pos$count;
					this.effectPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (effect_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEffectTimeInfo.effectFrameCount cannot be set twice.');
					}
					++effect_frame_count$count;
					this.effectFrameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
