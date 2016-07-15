package serverProto.ninjaProps {
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
	public  final class ProtoNinjaPropsRecastReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DEST_NINJA_PROPS_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.dest_ninja_props_index", "destNinjaPropsIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dest_ninja_props_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearDestNinjaPropsIndex():void {
			hasField$0 &= 0xfffffffe;
			dest_ninja_props_index$field = new uint();
		}

		public function get hasDestNinjaPropsIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set destNinjaPropsIndex(value:uint):void {
			hasField$0 |= 0x1;
			dest_ninja_props_index$field = value;
		}

		public function get destNinjaPropsIndex():uint {
			return dest_ninja_props_index$field;
		}

		/**
		 *  @private
		 */
		public static const SRC_NINJA_PROPS_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.src_ninja_props_index", "srcNinjaPropsIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var src_ninja_props_index$field:uint;

		public function clearSrcNinjaPropsIndex():void {
			hasField$0 &= 0xfffffffd;
			src_ninja_props_index$field = new uint();
		}

		public function get hasSrcNinjaPropsIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set srcNinjaPropsIndex(value:uint):void {
			hasField$0 |= 0x2;
			src_ninja_props_index$field = value;
		}

		public function get srcNinjaPropsIndex():uint {
			return src_ninja_props_index$field;
		}

		/**
		 *  @private
		 */
		public static const DEST_PROPERTY_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.dest_property_index", "destPropertyIndex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dest_property_index$field:uint;

		public function clearDestPropertyIndex():void {
			hasField$0 &= 0xfffffffb;
			dest_property_index$field = new uint();
		}

		public function get hasDestPropertyIndex():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set destPropertyIndex(value:uint):void {
			hasField$0 |= 0x4;
			dest_property_index$field = value;
		}

		public function get destPropertyIndex():uint {
			return dest_property_index$field;
		}

		/**
		 *  @private
		 */
		public static const SRC_PROPERTY_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.src_property_index", "srcPropertyIndex", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var src_property_index$field:uint;

		public function clearSrcPropertyIndex():void {
			hasField$0 &= 0xfffffff7;
			src_property_index$field = new uint();
		}

		public function get hasSrcPropertyIndex():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set srcPropertyIndex(value:uint):void {
			hasField$0 |= 0x8;
			src_property_index$field = value;
		}

		public function get srcPropertyIndex():uint {
			return src_property_index$field;
		}

		/**
		 *  @private
		 */
		public static const USE_NINJA_PROPS_INDEX:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.use_ninja_props_index", "useNinjaPropsIndex", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var useNinjaPropsIndex:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasDestNinjaPropsIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dest_ninja_props_index$field);
			}
			if (hasSrcNinjaPropsIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, src_ninja_props_index$field);
			}
			if (hasDestPropertyIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dest_property_index$field);
			}
			if (hasSrcPropertyIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, src_property_index$field);
			}
			for (var useNinjaPropsIndex$index:uint = 0; useNinjaPropsIndex$index < this.useNinjaPropsIndex.length; ++useNinjaPropsIndex$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.useNinjaPropsIndex[useNinjaPropsIndex$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var dest_ninja_props_index$count:uint = 0;
			var src_ninja_props_index$count:uint = 0;
			var dest_property_index$count:uint = 0;
			var src_property_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dest_ninja_props_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsRecastReq.destNinjaPropsIndex cannot be set twice.');
					}
					++dest_ninja_props_index$count;
					this.destNinjaPropsIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (src_ninja_props_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsRecastReq.srcNinjaPropsIndex cannot be set twice.');
					}
					++src_ninja_props_index$count;
					this.srcNinjaPropsIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (dest_property_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsRecastReq.destPropertyIndex cannot be set twice.');
					}
					++dest_property_index$count;
					this.destPropertyIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (src_property_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropsRecastReq.srcPropertyIndex cannot be set twice.');
					}
					++src_property_index$count;
					this.srcPropertyIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.useNinjaPropsIndex);
						break;
					}
					this.useNinjaPropsIndex.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
