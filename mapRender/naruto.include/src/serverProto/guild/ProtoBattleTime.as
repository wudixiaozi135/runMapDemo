package serverProto.guild {
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
	public  final class ProtoBattleTime extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const START_HOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoBattleTime.start_hour", "startHour", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var start_hour$field:uint;

		private var hasField$0:uint = 0;

		public function clearStartHour():void {
			hasField$0 &= 0xfffffffe;
			start_hour$field = new uint();
		}

		public function get hasStartHour():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set startHour(value:uint):void {
			hasField$0 |= 0x1;
			start_hour$field = value;
		}

		public function get startHour():uint {
			return start_hour$field;
		}

		/**
		 *  @private
		 */
		public static const START_MIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoBattleTime.start_min", "startMin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var start_min$field:uint;

		public function clearStartMin():void {
			hasField$0 &= 0xfffffffd;
			start_min$field = new uint();
		}

		public function get hasStartMin():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set startMin(value:uint):void {
			hasField$0 |= 0x2;
			start_min$field = value;
		}

		public function get startMin():uint {
			return start_min$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasStartHour) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, start_hour$field);
			}
			if (hasStartMin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, start_min$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var start_hour$count:uint = 0;
			var start_min$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (start_hour$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleTime.startHour cannot be set twice.');
					}
					++start_hour$count;
					this.startHour = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (start_min$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleTime.startMin cannot be set twice.');
					}
					++start_min$count;
					this.startMin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
