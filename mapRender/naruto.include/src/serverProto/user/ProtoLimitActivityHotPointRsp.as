package serverProto.user {
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
	public  final class ProtoLimitActivityHotPointRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.begin_time", "beginTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:int;

		private var hasField$0:uint = 0;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffe;
			begin_time$field = new int();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beginTime(value:int):void {
			hasField$0 |= 0x1;
			begin_time$field = value;
		}

		public function get beginTime():int {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.end_time", "endTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:int;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffd;
			end_time$field = new int();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endTime(value:int):void {
			hasField$0 |= 0x2;
			end_time$field = value;
		}

		public function get endTime():int {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.type", "type", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xfffffffb;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x4;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const SUB_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.sub_type", "subType", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sub_type$field:int;

		public function clearSubType():void {
			hasField$0 &= 0xfffffff7;
			sub_type$field = new int();
		}

		public function get hasSubType():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set subType(value:int):void {
			hasField$0 |= 0x8;
			sub_type$field = value;
		}

		public function get subType():int {
			return sub_type$field;
		}

		/**
		 *  @private
		 */
		public static const IS_LIGHT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitActivityHotPointRsp.is_light", "isLight", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_light$field:int;

		public function clearIsLight():void {
			hasField$0 &= 0xffffffef;
			is_light$field = new int();
		}

		public function get hasIsLight():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set isLight(value:int):void {
			hasField$0 |= 0x10;
			is_light$field = value;
		}

		public function get isLight():int {
			return is_light$field;
		}

		/**
		 *  @private
		 */
		public static const PRE_OPENUI:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.pre_openui", "preOpenui", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var pre_openui$field:String;

		public function clearPreOpenui():void {
			pre_openui$field = null;
		}

		public function get hasPreOpenui():Boolean {
			return pre_openui$field != null;
		}

		public function set preOpenui(value:String):void {
			pre_openui$field = value;
		}

		public function get preOpenui():String {
			return pre_openui$field;
		}

		/**
		 *  @private
		 */
		public static const OPENUI:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.openui", "openui", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var openui$field:String;

		public function clearOpenui():void {
			openui$field = null;
		}

		public function get hasOpenui():Boolean {
			return openui$field != null;
		}

		public function set openui(value:String):void {
			openui$field = value;
		}

		public function get openui():String {
			return openui$field;
		}

		/**
		 *  @private
		 */
		public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.title", "title", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var title$field:String;

		public function clearTitle():void {
			title$field = null;
		}

		public function get hasTitle():Boolean {
			return title$field != null;
		}

		public function set title(value:String):void {
			title$field = value;
		}

		public function get title():String {
			return title$field;
		}

		/**
		 *  @private
		 */
		public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitActivityHotPointRsp.desc", "desc", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var desc$field:String;

		public function clearDesc():void {
			desc$field = null;
		}

		public function get hasDesc():Boolean {
			return desc$field != null;
		}

		public function set desc(value:String):void {
			desc$field = value;
		}

		public function get desc():String {
			return desc$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.id);
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, end_time$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, type$field);
			}
			if (hasSubType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, sub_type$field);
			}
			if (hasIsLight) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, is_light$field);
			}
			if (hasPreOpenui) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, pre_openui$field);
			}
			if (hasOpenui) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, openui$field);
			}
			if (hasTitle) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, title$field);
			}
			if (hasDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, desc$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var name$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var type$count:uint = 0;
			var sub_type$count:uint = 0;
			var is_light$count:uint = 0;
			var pre_openui$count:uint = 0;
			var openui$count:uint = 0;
			var title$count:uint = 0;
			var desc$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (sub_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.subType cannot be set twice.');
					}
					++sub_type$count;
					this.subType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (is_light$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.isLight cannot be set twice.');
					}
					++is_light$count;
					this.isLight = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (pre_openui$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.preOpenui cannot be set twice.');
					}
					++pre_openui$count;
					this.preOpenui = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 9:
					if (openui$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.openui cannot be set twice.');
					}
					++openui$count;
					this.openui = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 10:
					if (title$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.title cannot be set twice.');
					}
					++title$count;
					this.title = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 11:
					if (desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitActivityHotPointRsp.desc cannot be set twice.');
					}
					++desc$count;
					this.desc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
