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
	import serverProto.fight.ProtoFightResToLoad;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInsertFightResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoInsertFightResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const FIGHT_RES_TO_LOAD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoInsertFightResponse.fight_res_to_load", "fightResToLoad", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoFightResToLoad);

		private var fight_res_to_load$field:serverProto.fight.ProtoFightResToLoad;

		public function clearFightResToLoad():void {
			fight_res_to_load$field = null;
		}

		public function get hasFightResToLoad():Boolean {
			return fight_res_to_load$field != null;
		}

		public function set fightResToLoad(value:serverProto.fight.ProtoFightResToLoad):void {
			fight_res_to_load$field = value;
		}

		public function get fightResToLoad():serverProto.fight.ProtoFightResToLoad {
			return fight_res_to_load$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasFightResToLoad) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, fight_res_to_load$field);
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
			var fight_res_to_load$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInsertFightResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (fight_res_to_load$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInsertFightResponse.fightResToLoad cannot be set twice.');
					}
					++fight_res_to_load$count;
					this.fightResToLoad = new serverProto.fight.ProtoFightResToLoad();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.fightResToLoad);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
