package serverProto.baseInfo {
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
	public  final class ProtoNinjaPackage extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPackage.ninja_info", "ninjaInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		[ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
		public var ninjaInfo:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_PACKAGE_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaPackage.ninja_package_ulimit", "ninjaPackageUlimit", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_package_ulimit$field:uint;

		private var hasField$0:uint = 0;

		public function clearNinjaPackageUlimit():void {
			hasField$0 &= 0xfffffffe;
			ninja_package_ulimit$field = new uint();
		}

		public function get hasNinjaPackageUlimit():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaPackageUlimit(value:uint):void {
			hasField$0 |= 0x1;
			ninja_package_ulimit$field = value;
		}

		public function get ninjaPackageUlimit():uint {
			return ninja_package_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_OPEN_PACKAGE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaPackage.next_open_package_level", "nextOpenPackageLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_open_package_level$field:uint;

		public function clearNextOpenPackageLevel():void {
			hasField$0 &= 0xfffffffd;
			next_open_package_level$field = new uint();
		}

		public function get hasNextOpenPackageLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set nextOpenPackageLevel(value:uint):void {
			hasField$0 |= 0x2;
			next_open_package_level$field = value;
		}

		public function get nextOpenPackageLevel():uint {
			return next_open_package_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var ninjaInfo$index:uint = 0; ninjaInfo$index < this.ninjaInfo.length; ++ninjaInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaInfo[ninjaInfo$index]);
			}
			if (hasNinjaPackageUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_package_ulimit$field);
			}
			if (hasNextOpenPackageLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_open_package_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_package_ulimit$count:uint = 0;
			var next_open_package_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.ninjaInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoNinjaInfo()));
					break;
				case 2:
					if (ninja_package_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPackage.ninjaPackageUlimit cannot be set twice.');
					}
					++ninja_package_ulimit$count;
					this.ninjaPackageUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (next_open_package_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPackage.nextOpenPackageLevel cannot be set twice.');
					}
					++next_open_package_level$count;
					this.nextOpenPackageLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
