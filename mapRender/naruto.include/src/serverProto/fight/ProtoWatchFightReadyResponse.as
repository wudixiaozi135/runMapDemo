package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.fight.ProtoAllNeedLoadResPlayerList;
	import serverProto.fight.ProtoMetaAction;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWatchFightReadyResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightReadyResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightReadyResponse.action", "action", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoMetaAction);

		private var action$field:serverProto.fight.ProtoMetaAction;

		public function clearAction():void {
			action$field = null;
		}

		public function get hasAction():Boolean {
			return action$field != null;
		}

		public function set action(value:serverProto.fight.ProtoMetaAction):void {
			action$field = value;
		}

		public function get action():serverProto.fight.ProtoMetaAction {
			return action$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_LOAD_RES_PLAYER_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightReadyResponse.need_load_res_player_list", "needLoadResPlayerList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoAllNeedLoadResPlayerList);

		private var need_load_res_player_list$field:serverProto.fight.ProtoAllNeedLoadResPlayerList;

		public function clearNeedLoadResPlayerList():void {
			need_load_res_player_list$field = null;
		}

		public function get hasNeedLoadResPlayerList():Boolean {
			return need_load_res_player_list$field != null;
		}

		public function set needLoadResPlayerList(value:serverProto.fight.ProtoAllNeedLoadResPlayerList):void {
			need_load_res_player_list$field = value;
		}

		public function get needLoadResPlayerList():serverProto.fight.ProtoAllNeedLoadResPlayerList {
			return need_load_res_player_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, action$field);
			}
			if (hasNeedLoadResPlayerList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, need_load_res_player_list$field);
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
			var action$count:uint = 0;
			var need_load_res_player_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightReadyResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightReadyResponse.action cannot be set twice.');
					}
					++action$count;
					this.action = new serverProto.fight.ProtoMetaAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.action);
					break;
				case 3:
					if (need_load_res_player_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightReadyResponse.needLoadResPlayerList cannot be set twice.');
					}
					++need_load_res_player_list$count;
					this.needLoadResPlayerList = new serverProto.fight.ProtoAllNeedLoadResPlayerList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.needLoadResPlayerList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
