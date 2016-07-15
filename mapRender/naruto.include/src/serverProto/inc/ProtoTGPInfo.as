package serverProto.inc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTGPInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TGP_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.tgp_flag", "tgpFlag", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tgp_flag$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearTgpFlag():void {
			hasField$0 &= 0xfffffffe;
			tgp_flag$field = new Boolean();
		}

		public function get hasTgpFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set tgpFlag(value:Boolean):void {
			hasField$0 |= 0x1;
			tgp_flag$field = value;
		}

		public function get tgpFlag():Boolean {
			return tgp_flag$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_LAUNCH_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.auto_launch_flag", "autoLaunchFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_launch_flag$field:Boolean;

		public function clearAutoLaunchFlag():void {
			hasField$0 &= 0xfffffffd;
			auto_launch_flag$field = new Boolean();
		}

		public function get hasAutoLaunchFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set autoLaunchFlag(value:Boolean):void {
			hasField$0 |= 0x2;
			auto_launch_flag$field = value;
		}

		public function get autoLaunchFlag():Boolean {
			return auto_launch_flag$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_LAUNCH_WITH_STARTUP_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.auto_launch_with_startup_flag", "autoLaunchWithStartupFlag", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_launch_with_startup_flag$field:Boolean;

		public function clearAutoLaunchWithStartupFlag():void {
			hasField$0 &= 0xfffffffb;
			auto_launch_with_startup_flag$field = new Boolean();
		}

		public function get hasAutoLaunchWithStartupFlag():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set autoLaunchWithStartupFlag(value:Boolean):void {
			hasField$0 |= 0x4;
			auto_launch_with_startup_flag$field = value;
		}

		public function get autoLaunchWithStartupFlag():Boolean {
			return auto_launch_with_startup_flag$field;
		}

		/**
		 *  @private
		 */
		public static const TGP_BOX_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.tgp_box_flag", "tgpBoxFlag", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tgp_box_flag$field:Boolean;

		public function clearTgpBoxFlag():void {
			hasField$0 &= 0xfffffff7;
			tgp_box_flag$field = new Boolean();
		}

		public function get hasTgpBoxFlag():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set tgpBoxFlag(value:Boolean):void {
			hasField$0 |= 0x8;
			tgp_box_flag$field = value;
		}

		public function get tgpBoxFlag():Boolean {
			return tgp_box_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTgpFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, tgp_flag$field);
			}
			if (hasAutoLaunchFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_launch_flag$field);
			}
			if (hasAutoLaunchWithStartupFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_launch_with_startup_flag$field);
			}
			if (hasTgpBoxFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, tgp_box_flag$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var tgp_flag$count:uint = 0;
			var auto_launch_flag$count:uint = 0;
			var auto_launch_with_startup_flag$count:uint = 0;
			var tgp_box_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (tgp_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTGPInfo.tgpFlag cannot be set twice.');
					}
					++tgp_flag$count;
					this.tgpFlag = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 2:
					if (auto_launch_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTGPInfo.autoLaunchFlag cannot be set twice.');
					}
					++auto_launch_flag$count;
					this.autoLaunchFlag = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (auto_launch_with_startup_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTGPInfo.autoLaunchWithStartupFlag cannot be set twice.');
					}
					++auto_launch_with_startup_flag$count;
					this.autoLaunchWithStartupFlag = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					if (tgp_box_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTGPInfo.tgpBoxFlag cannot be set twice.');
					}
					++tgp_box_flag$count;
					this.tgpBoxFlag = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
