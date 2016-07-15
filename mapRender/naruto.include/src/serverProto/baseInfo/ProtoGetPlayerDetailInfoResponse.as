package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.baseInfo.ProtoNinjaPackage;
	import serverProto.formationBase.ProtoFormationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetPlayerDetailInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.ninja_package", "ninjaPackage", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPackage);

		private var ninja_package$field:serverProto.baseInfo.ProtoNinjaPackage;

		public function clearNinjaPackage():void {
			ninja_package$field = null;
		}

		public function get hasNinjaPackage():Boolean {
			return ninja_package$field != null;
		}

		public function set ninjaPackage(value:serverProto.baseInfo.ProtoNinjaPackage):void {
			ninja_package$field = value;
		}

		public function get ninjaPackage():serverProto.baseInfo.ProtoNinjaPackage {
			return ninja_package$field;
		}

		/**
		 *  @private
		 */
		public static const FORMATION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.formation", "formation", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		[ArrayElementType("serverProto.formationBase.ProtoFormationInfo")]
		public var formation:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_PACKAGE_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.ninja_package_ulimit", "ninjaPackageUlimit", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaPackageUlimit:uint;

		/**
		 *  @private
		 */
		public static const FORMATION_NINJA_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.formation_ninja_ulimit", "formationNinjaUlimit", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var formationNinjaUlimit:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNinjaPackage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_package$field);
			}
			for (var formation$index:uint = 0; formation$index < this.formation.length; ++formation$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.formation[formation$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaPackageUlimit);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.formationNinjaUlimit);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var ninja_package$count:uint = 0;
			var ninja_package_ulimit$count:uint = 0;
			var formation_ninja_ulimit$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerDetailInfoResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (ninja_package$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerDetailInfoResponse.ninjaPackage cannot be set twice.');
					}
					++ninja_package$count;
					this.ninjaPackage = new serverProto.baseInfo.ProtoNinjaPackage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaPackage);
					break;
				case 3:
					this.formation.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.formationBase.ProtoFormationInfo()));
					break;
				case 4:
					if (ninja_package_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerDetailInfoResponse.ninjaPackageUlimit cannot be set twice.');
					}
					++ninja_package_ulimit$count;
					this.ninjaPackageUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (formation_ninja_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerDetailInfoResponse.formationNinjaUlimit cannot be set twice.');
					}
					++formation_ninja_ulimit$count;
					this.formationNinjaUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
