package serverProto.innerActivity {
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
	public  final class ProtoInnerActivityToolsReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTIVITY_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.activity_id", "activityId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearActivityId():void {
			hasField$0 &= 0xfffffffe;
			activity_id$field = new uint();
		}

		public function get hasActivityId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set activityId(value:uint):void {
			hasField$0 |= 0x1;
			activity_id$field = value;
		}

		public function get activityId():uint {
			return activity_id$field;
		}

		/**
		 *  @private
		 */
		public static const CMD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.cmd", "cmd", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cmd$field:uint;

		public function clearCmd():void {
			hasField$0 &= 0xfffffffd;
			cmd$field = new uint();
		}

		public function get hasCmd():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set cmd(value:uint):void {
			hasField$0 |= 0x2;
			cmd$field = value;
		}

		public function get cmd():uint {
			return cmd$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.type", "type", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const DATA1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.data1", "data1", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data1$field:int;

		public function clearData1():void {
			hasField$0 &= 0xfffffff7;
			data1$field = new int();
		}

		public function get hasData1():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set data1(value:int):void {
			hasField$0 |= 0x8;
			data1$field = value;
		}

		public function get data1():int {
			return data1$field;
		}

		/**
		 *  @private
		 */
		public static const DATA2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.data2", "data2", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data2$field:int;

		public function clearData2():void {
			hasField$0 &= 0xffffffef;
			data2$field = new int();
		}

		public function get hasData2():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set data2(value:int):void {
			hasField$0 |= 0x10;
			data2$field = value;
		}

		public function get data2():int {
			return data2$field;
		}

		/**
		 *  @private
		 */
		public static const DATA3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerActivityToolsReq.data3", "data3", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data3$field:int;

		public function clearData3():void {
			hasField$0 &= 0xffffffdf;
			data3$field = new int();
		}

		public function get hasData3():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set data3(value:int):void {
			hasField$0 |= 0x20;
			data3$field = value;
		}

		public function get data3():int {
			return data3$field;
		}

		/**
		 *  @private
		 */
		public static const XML_DATA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerActivityToolsReq.xml_data", "xmlData", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var xml_data$field:String;

		public function clearXmlData():void {
			xml_data$field = null;
		}

		public function get hasXmlData():Boolean {
			return xml_data$field != null;
		}

		public function set xmlData(value:String):void {
			xml_data$field = value;
		}

		public function get xmlData():String {
			return xml_data$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasActivityId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_id$field);
			}
			if (hasCmd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cmd$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type$field);
			}
			if (hasData1) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, data1$field);
			}
			if (hasData2) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, data2$field);
			}
			if (hasData3) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, data3$field);
			}
			if (hasXmlData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, xml_data$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var activity_id$count:uint = 0;
			var cmd$count:uint = 0;
			var type$count:uint = 0;
			var data1$count:uint = 0;
			var data2$count:uint = 0;
			var data3$count:uint = 0;
			var xml_data$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (activity_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.activityId cannot be set twice.');
					}
					++activity_id$count;
					this.activityId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (cmd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.cmd cannot be set twice.');
					}
					++cmd$count;
					this.cmd = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (data1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.data1 cannot be set twice.');
					}
					++data1$count;
					this.data1 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (data2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.data2 cannot be set twice.');
					}
					++data2$count;
					this.data2 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (data3$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.data3 cannot be set twice.');
					}
					++data3$count;
					this.data3 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (xml_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerActivityToolsReq.xmlData cannot be set twice.');
					}
					++xml_data$count;
					this.xmlData = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
