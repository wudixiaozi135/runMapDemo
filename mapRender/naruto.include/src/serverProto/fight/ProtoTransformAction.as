package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoActiveNinjaInfo;
	import serverProto.fight.ProtoNinja;
	import serverProto.fight.ProtoNinjaHpChange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTransformAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTransformAction.active_ninja", "activeNinja", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveNinjaInfo);

		public var activeNinja:serverProto.fight.ProtoActiveNinjaInfo;

		/**
		 *  @private
		 */
		public static const TRANSFORM_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTransformAction.transform_ninja", "transformNinja", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinja);

		public var transformNinja:serverProto.fight.ProtoNinja;

		/**
		 *  @private
		 */
		public static const NEED_BLACK_SCREEN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTransformAction.need_black_screen", "needBlackScreen", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_black_screen$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedBlackScreen():void {
			hasField$0 &= 0xfffffffe;
			need_black_screen$field = new int();
		}

		public function get hasNeedBlackScreen():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needBlackScreen(value:int):void {
			hasField$0 |= 0x1;
			need_black_screen$field = value;
		}

		public function get needBlackScreen():int {
			return need_black_screen$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTransformAction.ninja_hp_change", "ninjaHpChange", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaHpChange);

		[ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
		public var ninjaHpChange:Array = [];

		/**
		 *  @private
		 */
		public static const INVISIBLE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTransformAction.invisible", "invisible", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var invisible$field:int;

		public function clearInvisible():void {
			hasField$0 &= 0xfffffffd;
			invisible$field = new int();
		}

		public function get hasInvisible():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set invisible(value:int):void {
			hasField$0 |= 0x2;
			invisible$field = value;
		}

		public function get invisible():int {
			return invisible$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.activeNinja);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.transformNinja);
			if (hasNeedBlackScreen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_black_screen$field);
			}
			for (var ninjaHpChange$index:uint = 0; ninjaHpChange$index < this.ninjaHpChange.length; ++ninjaHpChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaHpChange[ninjaHpChange$index]);
			}
			if (hasInvisible) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, invisible$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var active_ninja$count:uint = 0;
			var transform_ninja$count:uint = 0;
			var need_black_screen$count:uint = 0;
			var invisible$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (active_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransformAction.activeNinja cannot be set twice.');
					}
					++active_ninja$count;
					this.activeNinja = new serverProto.fight.ProtoActiveNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.activeNinja);
					break;
				case 2:
					if (transform_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransformAction.transformNinja cannot be set twice.');
					}
					++transform_ninja$count;
					this.transformNinja = new serverProto.fight.ProtoNinja();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.transformNinja);
					break;
				case 3:
					if (need_black_screen$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransformAction.needBlackScreen cannot be set twice.');
					}
					++need_black_screen$count;
					this.needBlackScreen = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					this.ninjaHpChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaHpChange()));
					break;
				case 5:
					if (invisible$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransformAction.invisible cannot be set twice.');
					}
					++invisible$count;
					this.invisible = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
