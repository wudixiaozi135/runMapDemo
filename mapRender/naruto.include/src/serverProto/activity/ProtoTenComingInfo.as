package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activity.ProtoTenComingGrid;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTenComingInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GRID:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTenComingInfo.grid", "grid", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoTenComingGrid);

		[ArrayElementType("serverProto.activity.ProtoTenComingGrid")]
		public var grid:Array = [];

		/**
		 *  @private
		 */
		public static const BALL:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingInfo.ball", "ball", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var ball:Array = [];

		/**
		 *  @private
		 */
		public static const FIRST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingInfo.first", "first", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var first$field:uint;

		private var hasField$0:uint = 0;

		public function clearFirst():void {
			hasField$0 &= 0xfffffffe;
			first$field = new uint();
		}

		public function get hasFirst():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set first(value:uint):void {
			hasField$0 |= 0x1;
			first$field = value;
		}

		public function get first():uint {
			return first$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingInfo.award", "award", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const TEN:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingInfo.ten", "ten", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var ten:Array = [];

		/**
		 *  @private
		 */
		public static const RESET_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingInfo.reset_times", "resetTimes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reset_times$field:uint;

		public function clearResetTimes():void {
			hasField$0 &= 0xfffffffd;
			reset_times$field = new uint();
		}

		public function get hasResetTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set resetTimes(value:uint):void {
			hasField$0 |= 0x2;
			reset_times$field = value;
		}

		public function get resetTimes():uint {
			return reset_times$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var grid$index:uint = 0; grid$index < this.grid.length; ++grid$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.grid[grid$index]);
			}
			for (var ball$index:uint = 0; ball$index < this.ball.length; ++ball$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ball[ball$index]);
			}
			if (hasFirst) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, first$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.award[award$index]);
			}
			for (var ten$index:uint = 0; ten$index < this.ten.length; ++ten$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ten[ten$index]);
			}
			if (hasResetTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, reset_times$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var first$count:uint = 0;
			var reset_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.grid.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoTenComingGrid()));
					break;
				case 2:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.ball);
						break;
					}
					this.ball.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 3:
					if (first$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTenComingInfo.first cannot be set twice.');
					}
					++first$count;
					this.first = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.award);
						break;
					}
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.ten);
						break;
					}
					this.ten.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (reset_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTenComingInfo.resetTimes cannot be set twice.');
					}
					++reset_times$count;
					this.resetTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
