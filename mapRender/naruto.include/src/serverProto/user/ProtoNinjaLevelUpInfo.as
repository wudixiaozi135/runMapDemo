package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoNarutoProperty;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaLevelUpInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PROTPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpInfo.protperty", "protperty", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNarutoProperty);

		public var protperty:serverProto.inc.ProtoNarutoProperty;

		/**
		 *  @private
		 */
		public static const LEADSHIP_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpInfo.leadship_ulimit", "leadshipUlimit", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var leadship_ulimit$field:int;

		private var hasField$0:uint = 0;

		public function clearLeadshipUlimit():void {
			hasField$0 &= 0xfffffffe;
			leadship_ulimit$field = new int();
		}

		public function get hasLeadshipUlimit():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set leadshipUlimit(value:int):void {
			hasField$0 |= 0x1;
			leadship_ulimit$field = value;
		}

		public function get leadshipUlimit():int {
			return leadship_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_NINJA_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpInfo.package_ninja_ulimit", "packageNinjaUlimit", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var package_ninja_ulimit$field:int;

		public function clearPackageNinjaUlimit():void {
			hasField$0 &= 0xfffffffd;
			package_ninja_ulimit$field = new int();
		}

		public function get hasPackageNinjaUlimit():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set packageNinjaUlimit(value:int):void {
			hasField$0 |= 0x2;
			package_ninja_ulimit$field = value;
		}

		public function get packageNinjaUlimit():int {
			return package_ninja_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpInfo.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.protperty);
			if (hasLeadshipUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, leadship_ulimit$field);
			}
			if (hasPackageNinjaUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, package_ninja_ulimit$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var protperty$count:uint = 0;
			var leadship_ulimit$count:uint = 0;
			var package_ninja_ulimit$count:uint = 0;
			var level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (protperty$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpInfo.protperty cannot be set twice.');
					}
					++protperty$count;
					this.protperty = new serverProto.inc.ProtoNarutoProperty();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.protperty);
					break;
				case 2:
					if (leadship_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpInfo.leadshipUlimit cannot be set twice.');
					}
					++leadship_ulimit$count;
					this.leadshipUlimit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (package_ninja_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpInfo.packageNinjaUlimit cannot be set twice.');
					}
					++package_ninja_ulimit$count;
					this.packageNinjaUlimit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
