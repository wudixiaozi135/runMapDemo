package serverProto.worldBoss {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.worldBoss.ProtoWorldBossOpenInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetWorldBossListResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossListResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CURRENT_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossListResp.current_time", "currentTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_time$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentTime():void {
			hasField$0 &= 0xfffffffe;
			current_time$field = new int();
		}

		public function get hasCurrentTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentTime(value:int):void {
			hasField$0 |= 0x1;
			current_time$field = value;
		}

		public function get currentTime():int {
			return current_time$field;
		}

		/**
		 *  @private
		 */
		public static const WORLD_BOSS_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossListResp.world_boss_list", "worldBossList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoWorldBossOpenInfo);

		[ArrayElementType("serverProto.worldBoss.ProtoWorldBossOpenInfo")]
		public var worldBossList:Array = [];

		/**
		 *  @private
		 */
		public static const NEXT_WORLD_BOSS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossListResp.next_world_boss", "nextWorldBoss", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoWorldBossOpenInfo);

		private var next_world_boss$field:serverProto.worldBoss.ProtoWorldBossOpenInfo;

		public function clearNextWorldBoss():void {
			next_world_boss$field = null;
		}

		public function get hasNextWorldBoss():Boolean {
			return next_world_boss$field != null;
		}

		public function set nextWorldBoss(value:serverProto.worldBoss.ProtoWorldBossOpenInfo):void {
			next_world_boss$field = value;
		}

		public function get nextWorldBoss():serverProto.worldBoss.ProtoWorldBossOpenInfo {
			return next_world_boss$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasCurrentTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_time$field);
			}
			for (var worldBossList$index:uint = 0; worldBossList$index < this.worldBossList.length; ++worldBossList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.worldBossList[worldBossList$index]);
			}
			if (hasNextWorldBoss) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, next_world_boss$field);
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
			var current_time$count:uint = 0;
			var next_world_boss$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossListResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (current_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossListResp.currentTime cannot be set twice.');
					}
					++current_time$count;
					this.currentTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.worldBossList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.worldBoss.ProtoWorldBossOpenInfo()));
					break;
				case 4:
					if (next_world_boss$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossListResp.nextWorldBoss cannot be set twice.');
					}
					++next_world_boss$count;
					this.nextWorldBoss = new serverProto.worldBoss.ProtoWorldBossOpenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nextWorldBoss);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
