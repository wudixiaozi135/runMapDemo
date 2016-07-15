package serverProto.zoneReport {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.zoneReport.ProtoZoneInfoReport;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerZoneInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTIVITY_ZONE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zoneReport.ProtoPlayerZoneInfo.activity_zone", "activityZone", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_zone$field:uint;

		private var hasField$0:uint = 0;

		public function clearActivityZone():void {
			hasField$0 &= 0xfffffffe;
			activity_zone$field = new uint();
		}

		public function get hasActivityZone():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set activityZone(value:uint):void {
			hasField$0 |= 0x1;
			activity_zone$field = value;
		}

		public function get activityZone():uint {
			return activity_zone$field;
		}

		/**
		 *  @private
		 */
		public static const INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.zoneReport.ProtoPlayerZoneInfo.info_list", "infoList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.zoneReport.ProtoZoneInfoReport);

		[ArrayElementType("serverProto.zoneReport.ProtoZoneInfoReport")]
		public var infoList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasActivityZone) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_zone$field);
			}
			for (var infoList$index:uint = 0; infoList$index < this.infoList.length; ++infoList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.infoList[infoList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var activity_zone$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (activity_zone$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerZoneInfo.activityZone cannot be set twice.');
					}
					++activity_zone$count;
					this.activityZone = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.infoList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.zoneReport.ProtoZoneInfoReport()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
