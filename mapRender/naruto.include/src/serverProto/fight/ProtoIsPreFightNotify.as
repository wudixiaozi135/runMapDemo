package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.fight.FightBackgroundRes;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoIsPreFightNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OPTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoIsPreFightNotify.option", "option", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var option:int;

		/**
		 *  @private
		 */
		public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoIsPreFightNotify.background_res", "backgroundRes", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.FightBackgroundRes);

		private var background_res$field:serverProto.fight.FightBackgroundRes;

		public function clearBackgroundRes():void {
			background_res$field = null;
		}

		public function get hasBackgroundRes():Boolean {
			return background_res$field != null;
		}

		public function set backgroundRes(value:serverProto.fight.FightBackgroundRes):void {
			background_res$field = value;
		}

		public function get backgroundRes():serverProto.fight.FightBackgroundRes {
			return background_res$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoIsPreFightNotify.player_key", "playerKey", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.option);
			if (hasBackgroundRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, background_res$field);
			}
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var option$count:uint = 0;
			var background_res$count:uint = 0;
			var player_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (option$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIsPreFightNotify.option cannot be set twice.');
					}
					++option$count;
					this.option = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (background_res$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIsPreFightNotify.backgroundRes cannot be set twice.');
					}
					++background_res$count;
					this.backgroundRes = new serverProto.fight.FightBackgroundRes();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.backgroundRes);
					break;
				case 3:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoIsPreFightNotify.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
