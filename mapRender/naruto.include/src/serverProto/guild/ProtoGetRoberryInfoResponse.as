package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.guild.ProtoRoberryInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRoberryInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetRoberryInfoResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TOTAL_ROBERRY_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGetRoberryInfoResponse.total_roberry_times", "totalRoberryTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_roberry_times$field:int;

		private var hasField$0:uint = 0;

		public function clearTotalRoberryTimes():void {
			hasField$0 &= 0xfffffffe;
			total_roberry_times$field = new int();
		}

		public function get hasTotalRoberryTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalRoberryTimes(value:int):void {
			hasField$0 |= 0x1;
			total_roberry_times$field = value;
		}

		public function get totalRoberryTimes():int {
			return total_roberry_times$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_ROBERRY_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGetRoberryInfoResponse.current_roberry_times", "currentRoberryTimes", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_roberry_times$field:int;

		public function clearCurrentRoberryTimes():void {
			hasField$0 &= 0xfffffffd;
			current_roberry_times$field = new int();
		}

		public function get hasCurrentRoberryTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set currentRoberryTimes(value:int):void {
			hasField$0 |= 0x2;
			current_roberry_times$field = value;
		}

		public function get currentRoberryTimes():int {
			return current_roberry_times$field;
		}

		/**
		 *  @private
		 */
		public static const ROBERRY_INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetRoberryInfoResponse.roberry_info_list", "roberryInfoList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoRoberryInfo);

		[ArrayElementType("serverProto.guild.ProtoRoberryInfo")]
		public var roberryInfoList:Array = [];

		/**
		 *  @private
		 */
		public static const AUTO_CHOOSE_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGetRoberryInfoResponse.auto_choose_index", "autoChooseIndex", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_choose_index$field:int;

		public function clearAutoChooseIndex():void {
			hasField$0 &= 0xfffffffb;
			auto_choose_index$field = new int();
		}

		public function get hasAutoChooseIndex():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set autoChooseIndex(value:int):void {
			hasField$0 |= 0x4;
			auto_choose_index$field = value;
		}

		public function get autoChooseIndex():int {
			return auto_choose_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasTotalRoberryTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, total_roberry_times$field);
			}
			if (hasCurrentRoberryTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, current_roberry_times$field);
			}
			for (var roberryInfoList$index:uint = 0; roberryInfoList$index < this.roberryInfoList.length; ++roberryInfoList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.roberryInfoList[roberryInfoList$index]);
			}
			if (hasAutoChooseIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, auto_choose_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var total_roberry_times$count:uint = 0;
			var current_roberry_times$count:uint = 0;
			var auto_choose_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoberryInfoResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (total_roberry_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoberryInfoResponse.totalRoberryTimes cannot be set twice.');
					}
					++total_roberry_times$count;
					this.totalRoberryTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (current_roberry_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoberryInfoResponse.currentRoberryTimes cannot be set twice.');
					}
					++current_roberry_times$count;
					this.currentRoberryTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					this.roberryInfoList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoRoberryInfo()));
					break;
				case 5:
					if (auto_choose_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoberryInfoResponse.autoChooseIndex cannot be set twice.');
					}
					++auto_choose_index$count;
					this.autoChooseIndex = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
