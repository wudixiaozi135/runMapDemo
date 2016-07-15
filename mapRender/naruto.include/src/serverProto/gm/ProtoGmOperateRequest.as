package serverProto.gm {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGmOperateRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OPERATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.gm.ProtoGmOperateRequest.operate", "operate", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var operate$field:int;

		private var hasField$0:uint = 0;

		public function clearOperate():void {
			hasField$0 &= 0xfffffffe;
			operate$field = new int();
		}

		public function get hasOperate():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set operate(value:int):void {
			hasField$0 |= 0x1;
			operate$field = value;
		}

		public function get operate():int {
			return operate$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.gm.ProtoGmOperateRequest.player_key", "playerKey", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerKey():void {
			player_key$field = null;
		}

		public function get hasPlayerKey():Boolean {
			return player_key$field != null;
		}

		public function set playerKey(value:serverProto.inc.ProtoPlayerKey):void {
			player_key$field = value;
		}

		public function get playerKey():serverProto.inc.ProtoPlayerKey {
			return player_key$field;
		}

		/**
		 *  @private
		 */
		public static const HOUR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.gm.ProtoGmOperateRequest.hour", "hour", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hour$field:int;

		public function clearHour():void {
			hasField$0 &= 0xfffffffd;
			hour$field = new int();
		}

		public function get hasHour():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hour(value:int):void {
			hasField$0 |= 0x2;
			hour$field = value;
		}

		public function get hour():int {
			return hour$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasOperate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, operate$field);
			}
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			if (hasHour) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hour$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var operate$count:uint = 0;
			var player_key$count:uint = 0;
			var hour$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (operate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGmOperateRequest.operate cannot be set twice.');
					}
					++operate$count;
					this.operate = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGmOperateRequest.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 3:
					if (hour$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGmOperateRequest.hour cannot be set twice.');
					}
					++hour$count;
					this.hour = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
