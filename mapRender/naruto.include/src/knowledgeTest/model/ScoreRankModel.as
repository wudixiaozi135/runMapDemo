package knowledgeTest.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	
	import def.ModelDef;
	
	import serverProto.knowledgeTest.ProtoKnowledgeTestData;
	
	public class ScoreRankModel extends BaseModel
	{
		private var mUserScore:uint;
		private var mRank:Array;
		private var mQuestion:ProtoKnowledgeTestData;
		
		public static const RANK_CHANGE_EVENT:String = "rankChgEvt"; 
		
		public function ScoreRankModel(modelName:String)
		{
			super(ModelDef.KNOWLEDGE_TEST_SCORERANK);
		}
		
		public function get question():ProtoKnowledgeTestData
		{
			return mQuestion;
		}

		public function set question(value:ProtoKnowledgeTestData):void
		{
			mQuestion = value;
		}

		public function get rank():Array
		{
			return mRank;
		}

		public function set rank(value:Array):void
		{
			mRank = value;
			dispModelEvent(RANK_CHANGE_EVENT);
		}

		public function get userScore():uint
		{
			return mUserScore;
		}

		public function set userScore(value:uint):void
		{
			mUserScore = value;
		} 
		
		public function clean():void
		{ 
			if (mRank)
			{
				mRank.splice(0);
			}
			
			mQuestion = null;
		}
		 
	}
}