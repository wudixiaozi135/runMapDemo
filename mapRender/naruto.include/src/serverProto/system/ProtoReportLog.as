package serverProto.system {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.system.ProtoReportLogID;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoReportLog extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LOG_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.system.ProtoReportLog.log_id", "logId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.system.ProtoReportLogID);

		private var log_id$field:int;

		private var hasField$0:uint = 0;

		public function clearLogId():void {
			hasField$0 &= 0xfffffffe;
			log_id$field = new int();
		}

		public function get hasLogId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set logId(value:int):void {
			hasField$0 |= 0x1;
			log_id$field = value;
		}

		public function get logId():int {
			return log_id$field;
		}

		/**
		 *  @private
		 */
		public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.system.ProtoReportLog.msg", "msg", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var msg$field:String;

		public function clearMsg():void {
			msg$field = null;
		}

		public function get hasMsg():Boolean {
			return msg$field != null;
		}

		public function set msg(value:String):void {
			msg$field = value;
		}

		public function get msg():String {
			return msg$field;
		}

		/**
		 *  @private
		 */
		public static const VIA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.system.ProtoReportLog.via", "via", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var via$field:String;

		public function clearVia():void {
			via$field = null;
		}

		public function get hasVia():Boolean {
			return via$field != null;
		}

		public function set via(value:String):void {
			via$field = value;
		}

		public function get via():String {
			return via$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasLogId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, log_id$field);
			}
			if (hasMsg) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, msg$field);
			}
			if (hasVia) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, via$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var log_id$count:uint = 0;
			var msg$count:uint = 0;
			var via$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (log_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoReportLog.logId cannot be set twice.');
					}
					++log_id$count;
					this.logId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (msg$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoReportLog.msg cannot be set twice.');
					}
					++msg$count;
					this.msg = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (via$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoReportLog.via cannot be set twice.');
					}
					++via$count;
					this.via = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
