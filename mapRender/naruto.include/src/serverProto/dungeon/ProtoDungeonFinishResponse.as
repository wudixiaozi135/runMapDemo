package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.dungeon.ProtoDungeonDeathInfo;
	import serverProto.dungeon.ProtoBaseIncome;
	import serverProto.dungeon.ProtoDungeonEvaluate;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDungeonFinishResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const DUNGEON_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonFinishResponse.dungeon_status", "dungeonStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_status$field:uint;

		private var hasField$0:uint = 0;

		public function clearDungeonStatus():void {
			hasField$0 &= 0xfffffffe;
			dungeon_status$field = new uint();
		}

		public function get hasDungeonStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set dungeonStatus(value:uint):void {
			hasField$0 |= 0x1;
			dungeon_status$field = value;
		}

		public function get dungeonStatus():uint {
			return dungeon_status$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_INCOME:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.base_income", "baseIncome", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoBaseIncome);

		private var base_income$field:serverProto.dungeon.ProtoBaseIncome;

		public function clearBaseIncome():void {
			base_income$field = null;
		}

		public function get hasBaseIncome():Boolean {
			return base_income$field != null;
		}

		public function set baseIncome(value:serverProto.dungeon.ProtoBaseIncome):void {
			base_income$field = value;
		}

		public function get baseIncome():serverProto.dungeon.ProtoBaseIncome {
			return base_income$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_EVALUATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.dungeon_evaluate", "dungeonEvaluate", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoDungeonEvaluate);

		private var dungeon_evaluate$field:serverProto.dungeon.ProtoDungeonEvaluate;

		public function clearDungeonEvaluate():void {
			dungeon_evaluate$field = null;
		}

		public function get hasDungeonEvaluate():Boolean {
			return dungeon_evaluate$field != null;
		}

		public function set dungeonEvaluate(value:serverProto.dungeon.ProtoDungeonEvaluate):void {
			dungeon_evaluate$field = value;
		}

		public function get dungeonEvaluate():serverProto.dungeon.ProtoDungeonEvaluate {
			return dungeon_evaluate$field;
		}

		/**
		 *  @private
		 */
		public static const DEATH_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.death_info", "deathInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoDungeonDeathInfo);

		private var death_info$field:serverProto.dungeon.ProtoDungeonDeathInfo;

		public function clearDeathInfo():void {
			death_info$field = null;
		}

		public function get hasDeathInfo():Boolean {
			return death_info$field != null;
		}

		public function set deathInfo(value:serverProto.dungeon.ProtoDungeonDeathInfo):void {
			death_info$field = value;
		}

		public function get deathInfo():serverProto.dungeon.ProtoDungeonDeathInfo {
			return death_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasDungeonStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dungeon_status$field);
			}
			if (hasBaseIncome) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_income$field);
			}
			if (hasDungeonEvaluate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, dungeon_evaluate$field);
			}
			if (hasDeathInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, death_info$field);
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
			var dungeon_status$count:uint = 0;
			var base_income$count:uint = 0;
			var dungeon_evaluate$count:uint = 0;
			var death_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonFinishResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (dungeon_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonFinishResponse.dungeonStatus cannot be set twice.');
					}
					++dungeon_status$count;
					this.dungeonStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (base_income$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonFinishResponse.baseIncome cannot be set twice.');
					}
					++base_income$count;
					this.baseIncome = new serverProto.dungeon.ProtoBaseIncome();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseIncome);
					break;
				case 4:
					if (dungeon_evaluate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonFinishResponse.dungeonEvaluate cannot be set twice.');
					}
					++dungeon_evaluate$count;
					this.dungeonEvaluate = new serverProto.dungeon.ProtoDungeonEvaluate();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.dungeonEvaluate);
					break;
				case 5:
					if (death_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonFinishResponse.deathInfo cannot be set twice.');
					}
					++death_info$count;
					this.deathInfo = new serverProto.dungeon.ProtoDungeonDeathInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.deathInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
