package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoSecondaryPasswordType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSecondaryPasswordRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoSecondaryPasswordRequest.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ProtoSecondaryPasswordType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const PASSWD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoSecondaryPasswordRequest.passwd", "passwd", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var passwd$field:String;

		public function clearPasswd():void {
			passwd$field = null;
		}

		public function get hasPasswd():Boolean {
			return passwd$field != null;
		}

		public function set passwd(value:String):void {
			passwd$field = value;
		}

		public function get passwd():String {
			return passwd$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_PASSWD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoSecondaryPasswordRequest.old_passwd", "oldPasswd", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var old_passwd$field:String;

		public function clearOldPasswd():void {
			old_passwd$field = null;
		}

		public function get hasOldPasswd():Boolean {
			return old_passwd$field != null;
		}

		public function set oldPasswd(value:String):void {
			old_passwd$field = value;
		}

		public function get oldPasswd():String {
			return old_passwd$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasPasswd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, passwd$field);
			}
			if (hasOldPasswd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, old_passwd$field);
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
			var passwd$count:uint = 0;
			var old_passwd$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (passwd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordRequest.passwd cannot be set twice.');
					}
					++passwd$count;
					this.passwd = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (old_passwd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordRequest.oldPasswd cannot be set twice.');
					}
					++old_passwd$count;
					this.oldPasswd = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
