package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activity.ProtoOpenServiceRank;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoConsumeRank extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANKS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoConsumeRank.ranks", "ranks", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoOpenServiceRank);

		private var ranks$field:serverProto.activity.ProtoOpenServiceRank;

		public function clearRanks():void {
			ranks$field = null;
		}

		public function get hasRanks():Boolean {
			return ranks$field != null;
		}

		public function set ranks(value:serverProto.activity.ProtoOpenServiceRank):void {
			ranks$field = value;
		}

		public function get ranks():serverProto.activity.ProtoOpenServiceRank {
			return ranks$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoConsumeRank.award", "award", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const PROPORTION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoConsumeRank.proportion", "proportion", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var proportion$field:int;

		private var hasField$0:uint = 0;

		public function clearProportion():void {
			hasField$0 &= 0xfffffffe;
			proportion$field = new int();
		}

		public function get hasProportion():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set proportion(value:int):void {
			hasField$0 |= 0x1;
			proportion$field = value;
		}

		public function get proportion():int {
			return proportion$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRanks) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ranks$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasProportion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, proportion$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ranks$count:uint = 0;
			var proportion$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ranks$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoConsumeRank.ranks cannot be set twice.');
					}
					++ranks$count;
					this.ranks = new serverProto.activity.ProtoOpenServiceRank();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ranks);
					break;
				case 3:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 4:
					if (proportion$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoConsumeRank.proportion cannot be set twice.');
					}
					++proportion$count;
					this.proportion = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
