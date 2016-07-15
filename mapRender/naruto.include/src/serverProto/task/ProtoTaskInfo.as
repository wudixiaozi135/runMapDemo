package serverProto.task {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.task.ProtoConditionInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTaskInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:uint;

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.state", "state", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var state:uint;

		/**
		 *  @private
		 */
		public static const IS_NEW:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.is_new", "isNew", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isNew:uint;

		/**
		 *  @private
		 */
		public static const CONDITIONS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfo.conditions", "conditions", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoConditionInfo);

		[ArrayElementType("serverProto.task.ProtoConditionInfo")]
		public var conditions:Array = [];

		/**
		 *  @private
		 */
		public static const ACCEPT_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.accept_time", "acceptTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var accept_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearAcceptTime():void {
			hasField$0 &= 0xfffffffe;
			accept_time$field = new uint();
		}

		public function get hasAcceptTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set acceptTime(value:uint):void {
			hasField$0 |= 0x1;
			accept_time$field = value;
		}

		public function get acceptTime():uint {
			return accept_time$field;
		}

		/**
		 *  @private
		 */
		public static const COND_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.cond_state", "condState", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cond_state$field:uint;

		public function clearCondState():void {
			hasField$0 &= 0xfffffffd;
			cond_state$field = new uint();
		}

		public function get hasCondState():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set condState(value:uint):void {
			hasField$0 |= 0x2;
			cond_state$field = value;
		}

		public function get condState():uint {
			return cond_state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.state);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.isNew);
			for (var conditions$index:uint = 0; conditions$index < this.conditions.length; ++conditions$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.conditions[conditions$index]);
			}
			if (hasAcceptTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, accept_time$field);
			}
			if (hasCondState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cond_state$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var type$count:uint = 0;
			var state$count:uint = 0;
			var is_new$count:uint = 0;
			var accept_time$count:uint = 0;
			var cond_state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfo.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (is_new$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfo.isNew cannot be set twice.');
					}
					++is_new$count;
					this.isNew = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.conditions.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.task.ProtoConditionInfo()));
					break;
				case 6:
					if (accept_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfo.acceptTime cannot be set twice.');
					}
					++accept_time$count;
					this.acceptTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (cond_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfo.condState cannot be set twice.');
					}
					++cond_state$count;
					this.condState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
