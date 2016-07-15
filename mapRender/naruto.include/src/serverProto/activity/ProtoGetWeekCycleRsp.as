package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.weekCycle.ProtoModId;
	import serverProto.weekCycle.ProtoModAdditionInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetWeekCycleRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGetWeekCycleRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_MOD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activity.ProtoGetWeekCycleRsp.activity_mod_id", "activityModId", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.weekCycle.ProtoModId);

		private var activity_mod_id$field:int;

		private var hasField$0:uint = 0;

		public function clearActivityModId():void {
			hasField$0 &= 0xfffffffe;
			activity_mod_id$field = new int();
		}

		public function get hasActivityModId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set activityModId(value:int):void {
			hasField$0 |= 0x1;
			activity_mod_id$field = value;
		}

		public function get activityModId():int {
			return activity_mod_id$field;
		}

		/**
		 *  @private
		 */
		public static const MOD_ADDITION_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGetWeekCycleRsp.mod_addition_info", "modAdditionInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.weekCycle.ProtoModAdditionInfo);

		[ArrayElementType("serverProto.weekCycle.ProtoModAdditionInfo")]
		public var modAdditionInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasActivityModId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, activity_mod_id$field);
			}
			for (var modAdditionInfo$index:uint = 0; modAdditionInfo$index < this.modAdditionInfo.length; ++modAdditionInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.modAdditionInfo[modAdditionInfo$index]);
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
			var activity_mod_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWeekCycleRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_mod_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWeekCycleRsp.activityModId cannot be set twice.');
					}
					++activity_mod_id$count;
					this.activityModId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					this.modAdditionInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.weekCycle.ProtoModAdditionInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
