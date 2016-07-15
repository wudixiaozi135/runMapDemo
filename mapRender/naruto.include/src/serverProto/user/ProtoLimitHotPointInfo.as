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
	public  final class ProtoLimitHotPointInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitHotPointInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitHotPointInfo.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoLimitHotPointInfo.begin_time", "beginTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoLimitHotPointInfo.end_time", "endTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const BUTTON_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitHotPointInfo.button_type", "buttonType", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var button_type$field:int;

		public function clearButtonType():void {
			hasField$0 &= 0xfffffffb;
			button_type$field = new int();
		}

		public function get hasButtonType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set buttonType(value:int):void {
			hasField$0 |= 0x4;
			button_type$field = value;
		}

		public function get buttonType():int {
			return button_type$field;
		}

		/**
		 *  @private
		 */
		public static const MARK_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitHotPointInfo.mark_type", "markType", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var mark_type$field:int;

		public function clearMarkType():void {
			hasField$0 &= 0xfffffff7;
			mark_type$field = new int();
		}

		public function get hasMarkType():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set markType(value:int):void {
			hasField$0 |= 0x8;
			mark_type$field = value;
		}

		public function get markType():int {
			return mark_type$field;
		}

		/**
		 *  @private
		 */
		public static const IS_LIGHT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoLimitHotPointInfo.is_light", "isLight", (7 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const PRE_OPENUI:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitHotPointInfo.pre_openui", "preOpenui", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const OPENUI:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitHotPointInfo.openui", "openui", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitHotPointInfo.title", "title", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoLimitHotPointInfo.desc", "desc", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const CURR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoLimitHotPointInfo.curr_time", "currTime", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_time$field:uint;

		public function clearCurrTime():void {
			hasField$0 &= 0xffffffdf;
			curr_time$field = new uint();
		}

		public function get hasCurrTime():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set currTime(value:uint):void {
			hasField$0 |= 0x20;
			curr_time$field = value;
		}

		public function get currTime():uint {
			return curr_time$field;
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
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			if (hasButtonType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, button_type$field);
			}
			if (hasMarkType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, mark_type$field);
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
			if (hasCurrTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_time$field);
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
			var button_type$count:uint = 0;
			var mark_type$count:uint = 0;
			var is_light$count:uint = 0;
			var pre_openui$count:uint = 0;
			var openui$count:uint = 0;
			var title$count:uint = 0;
			var desc$count:uint = 0;
			var curr_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (button_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.buttonType cannot be set twice.');
					}
					++button_type$count;
					this.buttonType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (mark_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.markType cannot be set twice.');
					}
					++mark_type$count;
					this.markType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (is_light$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.isLight cannot be set twice.');
					}
					++is_light$count;
					this.isLight = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (pre_openui$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.preOpenui cannot be set twice.');
					}
					++pre_openui$count;
					this.preOpenui = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 9:
					if (openui$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.openui cannot be set twice.');
					}
					++openui$count;
					this.openui = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 10:
					if (title$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.title cannot be set twice.');
					}
					++title$count;
					this.title = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 11:
					if (desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.desc cannot be set twice.');
					}
					++desc$count;
					this.desc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 12:
					if (curr_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitHotPointInfo.currTime cannot be set twice.');
					}
					++curr_time$count;
					this.currTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
