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
	public  final class ProtoGuildActivityData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TODAY_LUCKY_WHEEL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.today_lucky_wheel_count", "todayLuckyWheelCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var today_lucky_wheel_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearTodayLuckyWheelCount():void {
			hasField$0 &= 0xfffffffe;
			today_lucky_wheel_count$field = new uint();
		}

		public function get hasTodayLuckyWheelCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set todayLuckyWheelCount(value:uint):void {
			hasField$0 |= 0x1;
			today_lucky_wheel_count$field = value;
		}

		public function get todayLuckyWheelCount():uint {
			return today_lucky_wheel_count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_LUCKY_WHEEL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.max_lucky_wheel_count", "maxLuckyWheelCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_lucky_wheel_count$field:uint;

		public function clearMaxLuckyWheelCount():void {
			hasField$0 &= 0xfffffffd;
			max_lucky_wheel_count$field = new uint();
		}

		public function get hasMaxLuckyWheelCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set maxLuckyWheelCount(value:uint):void {
			hasField$0 |= 0x2;
			max_lucky_wheel_count$field = value;
		}

		public function get maxLuckyWheelCount():uint {
			return max_lucky_wheel_count$field;
		}

		/**
		 *  @private
		 */
		public static const TODAY_ESCORT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.today_escort_count", "todayEscortCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var today_escort_count$field:uint;

		public function clearTodayEscortCount():void {
			hasField$0 &= 0xfffffffb;
			today_escort_count$field = new uint();
		}

		public function get hasTodayEscortCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set todayEscortCount(value:uint):void {
			hasField$0 |= 0x4;
			today_escort_count$field = value;
		}

		public function get todayEscortCount():uint {
			return today_escort_count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_ESCORT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.max_escort_count", "maxEscortCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_escort_count$field:uint;

		public function clearMaxEscortCount():void {
			hasField$0 &= 0xfffffff7;
			max_escort_count$field = new uint();
		}

		public function get hasMaxEscortCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set maxEscortCount(value:uint):void {
			hasField$0 |= 0x8;
			max_escort_count$field = value;
		}

		public function get maxEscortCount():uint {
			return max_escort_count$field;
		}

		/**
		 *  @private
		 */
		public static const TODAY_PLUNDER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.today_plunder_count", "todayPlunderCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var today_plunder_count$field:uint;

		public function clearTodayPlunderCount():void {
			hasField$0 &= 0xffffffef;
			today_plunder_count$field = new uint();
		}

		public function get hasTodayPlunderCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set todayPlunderCount(value:uint):void {
			hasField$0 |= 0x10;
			today_plunder_count$field = value;
		}

		public function get todayPlunderCount():uint {
			return today_plunder_count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_PLUNDER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.max_plunder_count", "maxPlunderCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_plunder_count$field:uint;

		public function clearMaxPlunderCount():void {
			hasField$0 &= 0xffffffdf;
			max_plunder_count$field = new uint();
		}

		public function get hasMaxPlunderCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set maxPlunderCount(value:uint):void {
			hasField$0 |= 0x20;
			max_plunder_count$field = value;
		}

		public function get maxPlunderCount():uint {
			return max_plunder_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTodayLuckyWheelCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, today_lucky_wheel_count$field);
			}
			if (hasMaxLuckyWheelCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_lucky_wheel_count$field);
			}
			if (hasTodayEscortCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, today_escort_count$field);
			}
			if (hasMaxEscortCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_escort_count$field);
			}
			if (hasTodayPlunderCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, today_plunder_count$field);
			}
			if (hasMaxPlunderCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_plunder_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var today_lucky_wheel_count$count:uint = 0;
			var max_lucky_wheel_count$count:uint = 0;
			var today_escort_count$count:uint = 0;
			var max_escort_count$count:uint = 0;
			var today_plunder_count$count:uint = 0;
			var max_plunder_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (today_lucky_wheel_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityData.todayLuckyWheelCount cannot be set twice.');
					}
					++today_lucky_wheel_count$count;
					this.todayLuckyWheelCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (max_lucky_wheel_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityData.maxLuckyWheelCount cannot be set twice.');
					}
					++max_lucky_wheel_count$count;
					this.maxLuckyWheelCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (today_escort_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityData.todayEscortCount cannot be set twice.');
					}
					++today_escort_count$count;
					this.todayEscortCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (max_escort_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityData.maxEscortCount cannot be set twice.');
					}
					++max_escort_count$count;
					this.maxEscortCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (today_plunder_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityData.todayPlunderCount cannot be set twice.');
					}
					++today_plunder_count$count;
					this.todayPlunderCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (max_plunder_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityData.maxPlunderCount cannot be set twice.');
					}
					++max_plunder_count$count;
					this.maxPlunderCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
