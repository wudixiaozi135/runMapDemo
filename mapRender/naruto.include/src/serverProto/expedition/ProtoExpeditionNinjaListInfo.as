package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.baseInfo.ProtoNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoExpeditionNinjaListInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CARRY_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionNinjaListInfo.carry_ninja_list", "carryNinjaList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		[ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
		public var carryNinjaList:Array = [];

		/**
		 *  @private
		 */
		public static const RESERVE_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionNinjaListInfo.reserve_ninja_list", "reserveNinjaList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		[ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
		public var reserveNinjaList:Array = [];

		/**
		 *  @private
		 */
		public static const MAX_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionNinjaListInfo.max_ninja_count", "maxNinjaCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_ninja_count$field:int;

		private var hasField$0:uint = 0;

		public function clearMaxNinjaCount():void {
			hasField$0 &= 0xfffffffe;
			max_ninja_count$field = new int();
		}

		public function get hasMaxNinjaCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set maxNinjaCount(value:int):void {
			hasField$0 |= 0x1;
			max_ninja_count$field = value;
		}

		public function get maxNinjaCount():int {
			return max_ninja_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var carryNinjaList$index:uint = 0; carryNinjaList$index < this.carryNinjaList.length; ++carryNinjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.carryNinjaList[carryNinjaList$index]);
			}
			for (var reserveNinjaList$index:uint = 0; reserveNinjaList$index < this.reserveNinjaList.length; ++reserveNinjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.reserveNinjaList[reserveNinjaList$index]);
			}
			if (hasMaxNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, max_ninja_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var max_ninja_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					this.carryNinjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoNinjaInfo()));
					break;
				case 3:
					this.reserveNinjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoNinjaInfo()));
					break;
				case 4:
					if (max_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionNinjaListInfo.maxNinjaCount cannot be set twice.');
					}
					++max_ninja_count$count;
					this.maxNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
