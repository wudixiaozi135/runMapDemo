package serverProto.dungeon {
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
	public  final class ProtoDungeonEvaluate extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COMPLETE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonEvaluate.complete", "complete", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var complete$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearComplete():void {
			hasField$0 &= 0xfffffffe;
			complete$field = new Boolean();
		}

		public function get hasComplete():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set complete(value:Boolean):void {
			hasField$0 |= 0x1;
			complete$field = value;
		}

		public function get complete():Boolean {
			return complete$field;
		}

		/**
		 *  @private
		 */
		public static const ALL_MONSTER_DEATH:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonEvaluate.all_monster_death", "allMonsterDeath", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var all_monster_death$field:Boolean;

		public function clearAllMonsterDeath():void {
			hasField$0 &= 0xfffffffd;
			all_monster_death$field = new Boolean();
		}

		public function get hasAllMonsterDeath():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set allMonsterDeath(value:Boolean):void {
			hasField$0 |= 0x2;
			all_monster_death$field = value;
		}

		public function get allMonsterDeath():Boolean {
			return all_monster_death$field;
		}

		/**
		 *  @private
		 */
		public static const NOT_DEATH:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonEvaluate.not_death", "notDeath", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var not_death$field:Boolean;

		public function clearNotDeath():void {
			hasField$0 &= 0xfffffffb;
			not_death$field = new Boolean();
		}

		public function get hasNotDeath():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set notDeath(value:Boolean):void {
			hasField$0 |= 0x4;
			not_death$field = value;
		}

		public function get notDeath():Boolean {
			return not_death$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasComplete) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, complete$field);
			}
			if (hasAllMonsterDeath) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, all_monster_death$field);
			}
			if (hasNotDeath) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, not_death$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var complete$count:uint = 0;
			var all_monster_death$count:uint = 0;
			var not_death$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (complete$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonEvaluate.complete cannot be set twice.');
					}
					++complete$count;
					this.complete = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 2:
					if (all_monster_death$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonEvaluate.allMonsterDeath cannot be set twice.');
					}
					++all_monster_death$count;
					this.allMonsterDeath = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (not_death$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonEvaluate.notDeath cannot be set twice.');
					}
					++not_death$count;
					this.notDeath = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
