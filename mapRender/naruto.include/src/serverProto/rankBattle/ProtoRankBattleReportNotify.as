package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.rankBattle.ProtoRankBattleReportInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRankBattleReportNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleReportNotify.report_list", "reportList", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoRankBattleReportInfo);

		[ArrayElementType("serverProto.rankBattle.ProtoRankBattleReportInfo")]
		public var reportList:Array = [];

		/**
		 *  @private
		 */
		public static const IS_GLOBAL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.rankBattle.ProtoRankBattleReportNotify.is_global", "isGlobal", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_global$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsGlobal():void {
			hasField$0 &= 0xfffffffe;
			is_global$field = new Boolean();
		}

		public function get hasIsGlobal():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isGlobal(value:Boolean):void {
			hasField$0 |= 0x1;
			is_global$field = value;
		}

		public function get isGlobal():Boolean {
			return is_global$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var reportList$index:uint = 0; reportList$index < this.reportList.length; ++reportList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.reportList[reportList$index]);
			}
			if (hasIsGlobal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_global$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var is_global$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.reportList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rankBattle.ProtoRankBattleReportInfo()));
					break;
				case 2:
					if (is_global$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleReportNotify.isGlobal cannot be set twice.');
					}
					++is_global$count;
					this.isGlobal = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
