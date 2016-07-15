package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTenComingGrid extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GRID_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingGrid.grid_index", "gridIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var grid_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearGridIndex():void {
			hasField$0 &= 0xfffffffe;
			grid_index$field = new uint();
		}

		public function get hasGridIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set gridIndex(value:uint):void {
			hasField$0 |= 0x1;
			grid_index$field = value;
		}

		public function get gridIndex():uint {
			return grid_index$field;
		}

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTenComingGrid.state", "state", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var state$field:uint;

		public function clearState():void {
			hasField$0 &= 0xfffffffd;
			state$field = new uint();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set state(value:uint):void {
			hasField$0 |= 0x2;
			state$field = value;
		}

		public function get state():uint {
			return state$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTenComingGrid.award", "award", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGridIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, grid_index$field);
			}
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, state$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var grid_index$count:uint = 0;
			var state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (grid_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTenComingGrid.gridIndex cannot be set twice.');
					}
					++grid_index$count;
					this.gridIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTenComingGrid.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
