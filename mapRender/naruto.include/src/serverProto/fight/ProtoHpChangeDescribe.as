package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.HintType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoHpChangeDescribe extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HINT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoHpChangeDescribe.hint_type", "hintType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.HintType);

		private var hint_type$field:int;

		private var hasField$0:uint = 0;

		public function clearHintType():void {
			hasField$0 &= 0xfffffffe;
			hint_type$field = new int();
		}

		public function get hasHintType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hintType(value:int):void {
			hasField$0 |= 0x1;
			hint_type$field = value;
		}

		public function get hintType():int {
			return hint_type$field;
		}

		/**
		 *  @private
		 */
		public static const HP_CHANGE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoHpChangeDescribe.hp_change", "hpChange", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp_change$field:int;

		public function clearHpChange():void {
			hasField$0 &= 0xfffffffd;
			hp_change$field = new int();
		}

		public function get hasHpChange():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hpChange(value:int):void {
			hasField$0 |= 0x2;
			hp_change$field = value;
		}

		public function get hpChange():int {
			return hp_change$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHintType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, hint_type$field);
			}
			if (hasHpChange) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hp_change$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hint_type$count:uint = 0;
			var hp_change$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hint_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHpChangeDescribe.hintType cannot be set twice.');
					}
					++hint_type$count;
					this.hintType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (hp_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHpChangeDescribe.hpChange cannot be set twice.');
					}
					++hp_change$count;
					this.hpChange = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
