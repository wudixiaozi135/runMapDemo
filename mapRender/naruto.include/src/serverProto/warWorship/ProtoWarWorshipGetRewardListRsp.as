package serverProto.warWorship {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.warWorship.ProtoWarWorshipAwardPackage;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWarWorshipGetRewardListRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const KILLED_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.killed_ninja", "killedNinja", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.warWorship.ProtoWarWorshipAwardPackage);

		private var killed_ninja$field:serverProto.warWorship.ProtoWarWorshipAwardPackage;

		public function clearKilledNinja():void {
			killed_ninja$field = null;
		}

		public function get hasKilledNinja():Boolean {
			return killed_ninja$field != null;
		}

		public function set killedNinja(value:serverProto.warWorship.ProtoWarWorshipAwardPackage):void {
			killed_ninja$field = value;
		}

		public function get killedNinja():serverProto.warWorship.ProtoWarWorshipAwardPackage {
			return killed_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const FINISHED_BATTLE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.finished_battle", "finishedBattle", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.warWorship.ProtoWarWorshipAwardPackage);

		private var finished_battle$field:serverProto.warWorship.ProtoWarWorshipAwardPackage;

		public function clearFinishedBattle():void {
			finished_battle$field = null;
		}

		public function get hasFinishedBattle():Boolean {
			return finished_battle$field != null;
		}

		public function set finishedBattle(value:serverProto.warWorship.ProtoWarWorshipAwardPackage):void {
			finished_battle$field = value;
		}

		public function get finishedBattle():serverProto.warWorship.ProtoWarWorshipAwardPackage {
			return finished_battle$field;
		}

		/**
		 *  @private
		 */
		public static const WIN_BATTLE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.win_battle", "winBattle", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.warWorship.ProtoWarWorshipAwardPackage);

		[ArrayElementType("serverProto.warWorship.ProtoWarWorshipAwardPackage")]
		public var winBattle:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasKilledNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, killed_ninja$field);
			}
			if (hasFinishedBattle) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, finished_battle$field);
			}
			for (var winBattle$index:uint = 0; winBattle$index < this.winBattle.length; ++winBattle$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.winBattle[winBattle$index]);
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
			var killed_ninja$count:uint = 0;
			var finished_battle$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWarWorshipGetRewardListRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (killed_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWarWorshipGetRewardListRsp.killedNinja cannot be set twice.');
					}
					++killed_ninja$count;
					this.killedNinja = new serverProto.warWorship.ProtoWarWorshipAwardPackage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.killedNinja);
					break;
				case 3:
					if (finished_battle$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWarWorshipGetRewardListRsp.finishedBattle cannot be set twice.');
					}
					++finished_battle$count;
					this.finishedBattle = new serverProto.warWorship.ProtoWarWorshipAwardPackage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.finishedBattle);
					break;
				case 4:
					this.winBattle.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.warWorship.ProtoWarWorshipAwardPackage()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
