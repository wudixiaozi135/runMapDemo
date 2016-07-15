package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoNinjaLevelUpInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaLevelUpNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpNotify.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:int;

		/**
		 *  @private
		 */
		public static const BEFORE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpNotify.before_info", "beforeInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaLevelUpInfo);

		private var before_info$field:serverProto.user.ProtoNinjaLevelUpInfo;

		public function clearBeforeInfo():void {
			before_info$field = null;
		}

		public function get hasBeforeInfo():Boolean {
			return before_info$field != null;
		}

		public function set beforeInfo(value:serverProto.user.ProtoNinjaLevelUpInfo):void {
			before_info$field = value;
		}

		public function get beforeInfo():serverProto.user.ProtoNinjaLevelUpInfo {
			return before_info$field;
		}

		/**
		 *  @private
		 */
		public static const AFTER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpNotify.after_info", "afterInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaLevelUpInfo);

		private var after_info$field:serverProto.user.ProtoNinjaLevelUpInfo;

		public function clearAfterInfo():void {
			after_info$field = null;
		}

		public function get hasAfterInfo():Boolean {
			return after_info$field != null;
		}

		public function set afterInfo(value:serverProto.user.ProtoNinjaLevelUpInfo):void {
			after_info$field = value;
		}

		public function get afterInfo():serverProto.user.ProtoNinjaLevelUpInfo {
			return after_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.ninjaId);
			if (hasBeforeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, before_info$field);
			}
			if (hasAfterInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, after_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_id$count:uint = 0;
			var before_info$count:uint = 0;
			var after_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpNotify.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (before_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpNotify.beforeInfo cannot be set twice.');
					}
					++before_info$count;
					this.beforeInfo = new serverProto.user.ProtoNinjaLevelUpInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.beforeInfo);
					break;
				case 3:
					if (after_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaLevelUpNotify.afterInfo cannot be set twice.');
					}
					++after_info$count;
					this.afterInfo = new serverProto.user.ProtoNinjaLevelUpInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.afterInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
