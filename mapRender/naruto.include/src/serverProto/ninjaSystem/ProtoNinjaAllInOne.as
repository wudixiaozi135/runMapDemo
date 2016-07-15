package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.baseInfo.ProtoNinjaInfo;
	import serverProto.ninjaSystem.ProtoNinjaRecruitInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaAllInOne extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HAS_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoNinjaAllInOne.has_ninja", "hasNinja", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hasNinja:int;

		/**
		 *  @private
		 */
		public static const ALL_IN_ONE_NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoNinjaAllInOne.all_in_one_ninja_info", "allInOneNinjaInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		private var all_in_one_ninja_info$field:serverProto.baseInfo.ProtoNinjaInfo;

		public function clearAllInOneNinjaInfo():void {
			all_in_one_ninja_info$field = null;
		}

		public function get hasAllInOneNinjaInfo():Boolean {
			return all_in_one_ninja_info$field != null;
		}

		public function set allInOneNinjaInfo(value:serverProto.baseInfo.ProtoNinjaInfo):void {
			all_in_one_ninja_info$field = value;
		}

		public function get allInOneNinjaInfo():serverProto.baseInfo.ProtoNinjaInfo {
			return all_in_one_ninja_info$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_RECURIT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoNinjaAllInOne.ninja_recurit_info", "ninjaRecuritInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoNinjaRecruitInfo);

		private var ninja_recurit_info$field:serverProto.ninjaSystem.ProtoNinjaRecruitInfo;

		public function clearNinjaRecuritInfo():void {
			ninja_recurit_info$field = null;
		}

		public function get hasNinjaRecuritInfo():Boolean {
			return ninja_recurit_info$field != null;
		}

		public function set ninjaRecuritInfo(value:serverProto.ninjaSystem.ProtoNinjaRecruitInfo):void {
			ninja_recurit_info$field = value;
		}

		public function get ninjaRecuritInfo():serverProto.ninjaSystem.ProtoNinjaRecruitInfo {
			return ninja_recurit_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.hasNinja);
			if (hasAllInOneNinjaInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, all_in_one_ninja_info$field);
			}
			if (hasNinjaRecuritInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_recurit_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var has_ninja$count:uint = 0;
			var all_in_one_ninja_info$count:uint = 0;
			var ninja_recurit_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (has_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAllInOne.hasNinja cannot be set twice.');
					}
					++has_ninja$count;
					this.hasNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (all_in_one_ninja_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAllInOne.allInOneNinjaInfo cannot be set twice.');
					}
					++all_in_one_ninja_info$count;
					this.allInOneNinjaInfo = new serverProto.baseInfo.ProtoNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.allInOneNinjaInfo);
					break;
				case 3:
					if (ninja_recurit_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAllInOne.ninjaRecuritInfo cannot be set twice.');
					}
					++ninja_recurit_info$count;
					this.ninjaRecuritInfo = new serverProto.ninjaSystem.ProtoNinjaRecruitInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaRecuritInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
