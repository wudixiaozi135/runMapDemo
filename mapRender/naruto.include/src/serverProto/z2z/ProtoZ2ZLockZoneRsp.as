package serverProto.z2z {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.z2z.Z2ZLockZoneType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoZ2ZLockZoneRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.z2z.ProtoZ2ZLockZoneRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const KIP:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.z2z.ProtoZ2ZLockZoneRsp.kip", "kip", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var kip$field:String;

		public function clearKip():void {
			kip$field = null;
		}

		public function get hasKip():Boolean {
			return kip$field != null;
		}

		public function set kip(value:String):void {
			kip$field = value;
		}

		public function get kip():String {
			return kip$field;
		}

		/**
		 *  @private
		 */
		public static const PORT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.z2z.ProtoZ2ZLockZoneRsp.port", "port", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var port$field:uint;

		private var hasField$0:uint = 0;

		public function clearPort():void {
			hasField$0 &= 0xfffffffe;
			port$field = new uint();
		}

		public function get hasPort():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set port(value:uint):void {
			hasField$0 |= 0x1;
			port$field = value;
		}

		public function get port():uint {
			return port$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.z2z.ProtoZ2ZLockZoneRsp.type", "type", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.z2z.Z2ZLockZoneType);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xfffffffd;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x2;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasKip) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, kip$field);
			}
			if (hasPort) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, port$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, type$field);
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
			var kip$count:uint = 0;
			var port$count:uint = 0;
			var type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZ2ZLockZoneRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (kip$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZ2ZLockZoneRsp.kip cannot be set twice.');
					}
					++kip$count;
					this.kip = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (port$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZ2ZLockZoneRsp.port cannot be set twice.');
					}
					++port$count;
					this.port = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZ2ZLockZoneRsp.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
