package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.activity.NinjaJigsawInfo;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaJigsawQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaJigsawQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const SIMPLE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaJigsawQueryRsp.simple", "simple", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.NinjaJigsawInfo);

		private var simple$field:serverProto.activity.NinjaJigsawInfo;

		public function clearSimple():void {
			simple$field = null;
		}

		public function get hasSimple():Boolean {
			return simple$field != null;
		}

		public function set simple(value:serverProto.activity.NinjaJigsawInfo):void {
			simple$field = value;
		}

		public function get simple():serverProto.activity.NinjaJigsawInfo {
			return simple$field;
		}

		/**
		 *  @private
		 */
		public static const MIDDLE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaJigsawQueryRsp.middle", "middle", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.NinjaJigsawInfo);

		private var middle$field:serverProto.activity.NinjaJigsawInfo;

		public function clearMiddle():void {
			middle$field = null;
		}

		public function get hasMiddle():Boolean {
			return middle$field != null;
		}

		public function set middle(value:serverProto.activity.NinjaJigsawInfo):void {
			middle$field = value;
		}

		public function get middle():serverProto.activity.NinjaJigsawInfo {
			return middle$field;
		}

		/**
		 *  @private
		 */
		public static const HARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaJigsawQueryRsp.hard", "hard", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.NinjaJigsawInfo);

		private var hard$field:serverProto.activity.NinjaJigsawInfo;

		public function clearHard():void {
			hard$field = null;
		}

		public function get hasHard():Boolean {
			return hard$field != null;
		}

		public function set hard(value:serverProto.activity.NinjaJigsawInfo):void {
			hard$field = value;
		}

		public function get hard():serverProto.activity.NinjaJigsawInfo {
			return hard$field;
		}

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaJigsawQueryRsp.begin_time", "beginTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffe;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x1;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaJigsawQueryRsp.end_time", "endTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffd;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x2;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaJigsawQueryRsp.boxes", "boxes", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var boxes:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasSimple) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, simple$field);
			}
			if (hasMiddle) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, middle$field);
			}
			if (hasHard) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, hard$field);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			for (var boxes$index:uint = 0; boxes$index < this.boxes.length; ++boxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.boxes[boxes$index]);
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
			var simple$count:uint = 0;
			var middle$count:uint = 0;
			var hard$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaJigsawQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (simple$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaJigsawQueryRsp.simple cannot be set twice.');
					}
					++simple$count;
					this.simple = new serverProto.activity.NinjaJigsawInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.simple);
					break;
				case 3:
					if (middle$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaJigsawQueryRsp.middle cannot be set twice.');
					}
					++middle$count;
					this.middle = new serverProto.activity.NinjaJigsawInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.middle);
					break;
				case 4:
					if (hard$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaJigsawQueryRsp.hard cannot be set twice.');
					}
					++hard$count;
					this.hard = new serverProto.activity.NinjaJigsawInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.hard);
					break;
				case 5:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaJigsawQueryRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaJigsawQueryRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					this.boxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
