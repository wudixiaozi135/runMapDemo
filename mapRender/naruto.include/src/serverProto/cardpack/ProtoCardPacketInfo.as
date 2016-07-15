package serverProto.cardpack {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.cardpack.ProtoCardInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCardPacketInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.status", "status", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var status$field:uint;

		private var hasField$0:uint = 0;

		public function clearStatus():void {
			hasField$0 &= 0xfffffffe;
			status$field = new uint();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set status(value:uint):void {
			hasField$0 |= 0x1;
			status$field = value;
		}

		public function get status():uint {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const COUNTDOWN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.countdown", "countdown", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var countdown$field:uint;

		public function clearCountdown():void {
			hasField$0 &= 0xfffffffd;
			countdown$field = new uint();
		}

		public function get hasCountdown():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set countdown(value:uint):void {
			hasField$0 |= 0x2;
			countdown$field = value;
		}

		public function get countdown():uint {
			return countdown$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.type", "type", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:uint;

		public function clearType():void {
			hasField$0 &= 0xfffffffb;
			type$field = new uint();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set type(value:uint):void {
			hasField$0 |= 0x4;
			type$field = value;
		}

		public function get type():uint {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const OVER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.over_time", "overTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var over_time$field:uint;

		public function clearOverTime():void {
			hasField$0 &= 0xfffffff7;
			over_time$field = new uint();
		}

		public function get hasOverTime():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set overTime(value:uint):void {
			hasField$0 |= 0x8;
			over_time$field = value;
		}

		public function get overTime():uint {
			return over_time$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.free_count", "freeCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_count$field:uint;

		public function clearFreeCount():void {
			hasField$0 &= 0xffffffef;
			free_count$field = new uint();
		}

		public function get hasFreeCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set freeCount(value:uint):void {
			hasField$0 |= 0x10;
			free_count$field = value;
		}

		public function get freeCount():uint {
			return free_count$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.free_time", "freeTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_time$field:uint;

		public function clearFreeTime():void {
			hasField$0 &= 0xffffffdf;
			free_time$field = new uint();
		}

		public function get hasFreeTime():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set freeTime(value:uint):void {
			hasField$0 |= 0x20;
			free_time$field = value;
		}

		public function get freeTime():uint {
			return free_time$field;
		}

		/**
		 *  @private
		 */
		public static const CARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoCardPacketInfo.card_info", "cardInfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoCardInfo);

		[ArrayElementType("serverProto.cardpack.ProtoCardInfo")]
		public var cardInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, status$field);
			}
			if (hasCountdown) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, countdown$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type$field);
			}
			if (hasOverTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, over_time$field);
			}
			if (hasFreeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_count$field);
			}
			if (hasFreeTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_time$field);
			}
			for (var cardInfo$index:uint = 0; cardInfo$index < this.cardInfo.length; ++cardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.cardInfo[cardInfo$index]);
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
			var status$count:uint = 0;
			var countdown$count:uint = 0;
			var type$count:uint = 0;
			var over_time$count:uint = 0;
			var free_count$count:uint = 0;
			var free_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (countdown$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.countdown cannot be set twice.');
					}
					++countdown$count;
					this.countdown = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (over_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.overTime cannot be set twice.');
					}
					++over_time$count;
					this.overTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (free_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.freeCount cannot be set twice.');
					}
					++free_count$count;
					this.freeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (free_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPacketInfo.freeTime cannot be set twice.');
					}
					++free_time$count;
					this.freeTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					this.cardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.cardpack.ProtoCardInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
