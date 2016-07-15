package serverProto.zoneReport {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.zoneReport.ProtoPlayerZoneInfo;
	import serverProto.zoneReport.ProtoZoneInfoReport;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGlobal extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zoneReport.ProtoGlobal.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:uint;

		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zoneReport.ProtoGlobal.uin", "uin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const REPORT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zoneReport.ProtoGlobal.report", "report", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.zoneReport.ProtoZoneInfoReport);

		private var report$field:serverProto.zoneReport.ProtoZoneInfoReport;

		public function clearReport():void {
			report$field = null;
		}

		public function get hasReport():Boolean {
			return report$field != null;
		}

		public function set report(value:serverProto.zoneReport.ProtoZoneInfoReport):void {
			report$field = value;
		}

		public function get report():serverProto.zoneReport.ProtoZoneInfoReport {
			return report$field;
		}

		/**
		 *  @private
		 */
		public static const INFO_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zoneReport.ProtoGlobal.info_list", "infoList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.zoneReport.ProtoPlayerZoneInfo);

		private var info_list$field:serverProto.zoneReport.ProtoPlayerZoneInfo;

		public function clearInfoList():void {
			info_list$field = null;
		}

		public function get hasInfoList():Boolean {
			return info_list$field != null;
		}

		public function set infoList(value:serverProto.zoneReport.ProtoPlayerZoneInfo):void {
			info_list$field = value;
		}

		public function get infoList():serverProto.zoneReport.ProtoPlayerZoneInfo {
			return info_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.uin);
			if (hasReport) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, report$field);
			}
			if (hasInfoList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, info_list$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var uin$count:uint = 0;
			var report$count:uint = 0;
			var info_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGlobal.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGlobal.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (report$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGlobal.report cannot be set twice.');
					}
					++report$count;
					this.report = new serverProto.zoneReport.ProtoZoneInfoReport();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.report);
					break;
				case 4:
					if (info_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGlobal.infoList cannot be set twice.');
					}
					++info_list$count;
					this.infoList = new serverProto.zoneReport.ProtoPlayerZoneInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.infoList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
