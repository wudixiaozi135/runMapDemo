package serverProto.formation {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.formationBase.ProtoFormationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateFormationNinjaResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoOperateFormationNinjaResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const FORMATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoOperateFormationNinjaResponse.formation", "formation", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var formation$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearFormation():void {
			formation$field = null;
		}

		public function get hasFormation():Boolean {
			return formation$field != null;
		}

		public function set formation(value:serverProto.formationBase.ProtoFormationInfo):void {
			formation$field = value;
		}

		public function get formation():serverProto.formationBase.ProtoFormationInfo {
			return formation$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_REFRESH_NINJA_PACKAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formation.ProtoOperateFormationNinjaResponse.need_refresh_ninja_package", "needRefreshNinjaPackage", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_refresh_ninja_package$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedRefreshNinjaPackage():void {
			hasField$0 &= 0xfffffffe;
			need_refresh_ninja_package$field = new int();
		}

		public function get hasNeedRefreshNinjaPackage():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needRefreshNinjaPackage(value:int):void {
			hasField$0 |= 0x1;
			need_refresh_ninja_package$field = value;
		}

		public function get needRefreshNinjaPackage():int {
			return need_refresh_ninja_package$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_REFRESH_NINJA_STORAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formation.ProtoOperateFormationNinjaResponse.need_refresh_ninja_storage", "needRefreshNinjaStorage", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_refresh_ninja_storage$field:int;

		public function clearNeedRefreshNinjaStorage():void {
			hasField$0 &= 0xfffffffd;
			need_refresh_ninja_storage$field = new int();
		}

		public function get hasNeedRefreshNinjaStorage():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set needRefreshNinjaStorage(value:int):void {
			hasField$0 |= 0x2;
			need_refresh_ninja_storage$field = value;
		}

		public function get needRefreshNinjaStorage():int {
			return need_refresh_ninja_storage$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasFormation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, formation$field);
			}
			if (hasNeedRefreshNinjaPackage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, need_refresh_ninja_package$field);
			}
			if (hasNeedRefreshNinjaStorage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, need_refresh_ninja_storage$field);
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
			var formation$count:uint = 0;
			var need_refresh_ninja_package$count:uint = 0;
			var need_refresh_ninja_storage$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (formation$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaResponse.formation cannot be set twice.');
					}
					++formation$count;
					this.formation = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formation);
					break;
				case 3:
					if (need_refresh_ninja_package$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaResponse.needRefreshNinjaPackage cannot be set twice.');
					}
					++need_refresh_ninja_package$count;
					this.needRefreshNinjaPackage = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (need_refresh_ninja_storage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaResponse.needRefreshNinjaStorage cannot be set twice.');
					}
					++need_refresh_ninja_storage$count;
					this.needRefreshNinjaStorage = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
