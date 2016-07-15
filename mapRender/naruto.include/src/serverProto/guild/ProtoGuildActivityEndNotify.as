package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGuildActivityBenefit;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildActivityEndNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RESULT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityEndNotify.result", "result", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var result:int;

		/**
		 *  @private
		 */
		public static const BENEFIT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildActivityEndNotify.benefit", "benefit", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildActivityBenefit);

		private var benefit$field:serverProto.guild.ProtoGuildActivityBenefit;

		public function clearBenefit():void {
			benefit$field = null;
		}

		public function get hasBenefit():Boolean {
			return benefit$field != null;
		}

		public function set benefit(value:serverProto.guild.ProtoGuildActivityBenefit):void {
			benefit$field = value;
		}

		public function get benefit():serverProto.guild.ProtoGuildActivityBenefit {
			return benefit$field;
		}

		/**
		 *  @private
		 */
		public static const LOSS_RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityEndNotify.loss_rate", "lossRate", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var loss_rate$field:int;

		private var hasField$0:uint = 0;

		public function clearLossRate():void {
			hasField$0 &= 0xfffffffe;
			loss_rate$field = new int();
		}

		public function get hasLossRate():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set lossRate(value:int):void {
			hasField$0 |= 0x1;
			loss_rate$field = value;
		}

		public function get lossRate():int {
			return loss_rate$field;
		}

		/**
		 *  @private
		 */
		public static const OVERFLOW_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityEndNotify.overflow_times", "overflowTimes", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var overflow_times$field:int;

		public function clearOverflowTimes():void {
			hasField$0 &= 0xfffffffd;
			overflow_times$field = new int();
		}

		public function get hasOverflowTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set overflowTimes(value:int):void {
			hasField$0 |= 0x2;
			overflow_times$field = value;
		}

		public function get overflowTimes():int {
			return overflow_times$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.result);
			if (hasBenefit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, benefit$field);
			}
			if (hasLossRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, loss_rate$field);
			}
			if (hasOverflowTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, overflow_times$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var result$count:uint = 0;
			var benefit$count:uint = 0;
			var loss_rate$count:uint = 0;
			var overflow_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityEndNotify.result cannot be set twice.');
					}
					++result$count;
					this.result = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (benefit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityEndNotify.benefit cannot be set twice.');
					}
					++benefit$count;
					this.benefit = new serverProto.guild.ProtoGuildActivityBenefit();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.benefit);
					break;
				case 3:
					if (loss_rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityEndNotify.lossRate cannot be set twice.');
					}
					++loss_rate$count;
					this.lossRate = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (overflow_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityEndNotify.overflowTimes cannot be set twice.');
					}
					++overflow_times$count;
					this.overflowTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
