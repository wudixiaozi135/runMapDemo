package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseAttackReport extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE_MAIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.base_main", "baseMain", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_main$field:int;

		private var hasField$0:uint = 0;

		public function clearBaseMain():void {
			hasField$0 &= 0xfffffffe;
			base_main$field = new int();
		}

		public function get hasBaseMain():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set baseMain(value:int):void {
			hasField$0 |= 0x1;
			base_main$field = value;
		}

		public function get baseMain():int {
			return base_main$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.base_roshan", "baseRoshan", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan$field:int;

		public function clearBaseRoshan():void {
			hasField$0 &= 0xfffffffd;
			base_roshan$field = new int();
		}

		public function get hasBaseRoshan():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set baseRoshan(value:int):void {
			hasField$0 |= 0x2;
			base_roshan$field = value;
		}

		public function get baseRoshan():int {
			return base_roshan$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.base_money", "baseMoney", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money$field:int;

		public function clearBaseMoney():void {
			hasField$0 &= 0xfffffffb;
			base_money$field = new int();
		}

		public function get hasBaseMoney():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set baseMoney(value:int):void {
			hasField$0 |= 0x4;
			base_money$field = value;
		}

		public function get baseMoney():int {
			return base_money$field;
		}

		/**
		 *  @private
		 */
		public static const ROB_MONEY_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.rob_money_count", "robMoneyCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rob_money_count$field:int;

		public function clearRobMoneyCount():void {
			hasField$0 &= 0xfffffff7;
			rob_money_count$field = new int();
		}

		public function get hasRobMoneyCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set robMoneyCount(value:int):void {
			hasField$0 |= 0x8;
			rob_money_count$field = value;
		}

		public function get robMoneyCount():int {
			return rob_money_count$field;
		}

		/**
		 *  @private
		 */
		public static const ROB_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.rob_power", "robPower", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rob_power$field:int;

		public function clearRobPower():void {
			hasField$0 &= 0xffffffef;
			rob_power$field = new int();
		}

		public function get hasRobPower():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set robPower(value:int):void {
			hasField$0 |= 0x10;
			rob_power$field = value;
		}

		public function get robPower():int {
			return rob_power$field;
		}

		/**
		 *  @private
		 */
		public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.scene_id", "sceneId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene_id$field:int;

		public function clearSceneId():void {
			hasField$0 &= 0xffffffdf;
			scene_id$field = new int();
		}

		public function get hasSceneId():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set sceneId(value:int):void {
			hasField$0 |= 0x20;
			scene_id$field = value;
		}

		public function get sceneId():int {
			return scene_id$field;
		}

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseAttackReport.location", "location", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var location$field:serverProto.inc.ProtoPoint;

		public function clearLocation():void {
			location$field = null;
		}

		public function get hasLocation():Boolean {
			return location$field != null;
		}

		public function set location(value:serverProto.inc.ProtoPoint):void {
			location$field = value;
		}

		public function get location():serverProto.inc.ProtoPoint {
			return location$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBaseMain) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_main$field);
			}
			if (hasBaseRoshan) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan$field);
			}
			if (hasBaseMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money$field);
			}
			if (hasRobMoneyCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rob_money_count$field);
			}
			if (hasRobPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rob_power$field);
			}
			if (hasSceneId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, scene_id$field);
			}
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, location$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var base_main$count:uint = 0;
			var base_roshan$count:uint = 0;
			var base_money$count:uint = 0;
			var rob_money_count$count:uint = 0;
			var rob_power$count:uint = 0;
			var scene_id$count:uint = 0;
			var location$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base_main$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.baseMain cannot be set twice.');
					}
					++base_main$count;
					this.baseMain = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (base_roshan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.baseRoshan cannot be set twice.');
					}
					++base_roshan$count;
					this.baseRoshan = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (base_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.baseMoney cannot be set twice.');
					}
					++base_money$count;
					this.baseMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (rob_money_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.robMoneyCount cannot be set twice.');
					}
					++rob_money_count$count;
					this.robMoneyCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (rob_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.robPower cannot be set twice.');
					}
					++rob_power$count;
					this.robPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (scene_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.sceneId cannot be set twice.');
					}
					++scene_id$count;
					this.sceneId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAttackReport.location cannot be set twice.');
					}
					++location$count;
					this.location = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.location);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
