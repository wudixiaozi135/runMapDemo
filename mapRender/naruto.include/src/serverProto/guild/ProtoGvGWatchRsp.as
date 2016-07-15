package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.guild.ProtoGvGBattleFieldInfoNotify;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGWatchRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGWatchRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const CHEER_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGWatchRsp.cheer_status", "cheerStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cheer_status$field:uint;

		private var hasField$0:uint = 0;

		public function clearCheerStatus():void {
			hasField$0 &= 0xfffffffe;
			cheer_status$field = new uint();
		}

		public function get hasCheerStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set cheerStatus(value:uint):void {
			hasField$0 |= 0x1;
			cheer_status$field = value;
		}

		public function get cheerStatus():uint {
			return cheer_status$field;
		}

		/**
		 *  @private
		 */
		public static const INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGWatchRsp.info", "info", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldInfoNotify);

		private var info$field:serverProto.guild.ProtoGvGBattleFieldInfoNotify;

		public function clearInfo():void {
			info$field = null;
		}

		public function get hasInfo():Boolean {
			return info$field != null;
		}

		public function set info(value:serverProto.guild.ProtoGvGBattleFieldInfoNotify):void {
			info$field = value;
		}

		public function get info():serverProto.guild.ProtoGvGBattleFieldInfoNotify {
			return info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasCheerStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cheer_status$field);
			}
			if (hasInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, info$field);
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
			var cheer_status$count:uint = 0;
			var info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGWatchRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (cheer_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGWatchRsp.cheerStatus cannot be set twice.');
					}
					++cheer_status$count;
					this.cheerStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGWatchRsp.info cannot be set twice.');
					}
					++info$count;
					this.info = new serverProto.guild.ProtoGvGBattleFieldInfoNotify();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.info);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
