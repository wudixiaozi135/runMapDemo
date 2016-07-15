package serverProto.ninjaSystem {
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
	public  final class ProtoEatExpItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpItemInfo.num", "num", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var num$field:int;

		private var hasField$0:uint = 0;

		public function clearNum():void {
			hasField$0 &= 0xfffffffe;
			num$field = new int();
		}

		public function get hasNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set num(value:int):void {
			hasField$0 |= 0x1;
			num$field = value;
		}

		public function get num():int {
			return num$field;
		}

		/**
		 *  @private
		 */
		public static const REACH_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpItemInfo.reach_level", "reachLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reach_level$field:int;

		public function clearReachLevel():void {
			hasField$0 &= 0xfffffffd;
			reach_level$field = new int();
		}

		public function get hasReachLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set reachLevel(value:int):void {
			hasField$0 |= 0x2;
			reach_level$field = value;
		}

		public function get reachLevel():int {
			return reach_level$field;
		}

		/**
		 *  @private
		 */
		public static const ADD_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpItemInfo.add_exp", "addExp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var add_exp$field:int;

		public function clearAddExp():void {
			hasField$0 &= 0xfffffffb;
			add_exp$field = new int();
		}

		public function get hasAddExp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set addExp(value:int):void {
			hasField$0 |= 0x4;
			add_exp$field = value;
		}

		public function get addExp():int {
			return add_exp$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, num$field);
			}
			if (hasReachLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, reach_level$field);
			}
			if (hasAddExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, add_exp$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var num$count:uint = 0;
			var reach_level$count:uint = 0;
			var add_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEatExpItemInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (reach_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEatExpItemInfo.reachLevel cannot be set twice.');
					}
					++reach_level$count;
					this.reachLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (add_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEatExpItemInfo.addExp cannot be set twice.');
					}
					++add_exp$count;
					this.addExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
