package ddt.manager
{
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import ddt.data.analyze.VoteInfoAnalyzer;
   import ddt.data.analyze.VoteSubmitResultAnalyzer;
   import ddt.data.vote.VoteQuestionInfo;
   import ddt.view.vote.VoteView;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLVariables;
   import flash.utils.Dictionary;
   
   public class VoteManager extends EventDispatcher
   {
      
      public static var LOAD_COMPLETED:String = "loadCompleted";
      
      private static var vote:VoteManager;
       
      
      public var loadOver:Boolean = false;
      
      public var showVote:Boolean = true;
      
      public var count:int = 0;
      
      public var questionLength:int = 0;
      
      public var awardDic:Dictionary;
      
      private var voteView:VoteView;
      
      private var list:Dictionary;
      
      private var firstQuestionID:String;
      
      private var completeMessage:String;
      
      private var minGrade:int;
      
      private var maxGrade:int;
      
      private var voteId:String;
      
      private var allAnswer:String = "";
      
      private var answerArr:Array;
      
      private var isVoteComplete:Boolean;
      
      private var nowVoteQuestionInfo:VoteQuestionInfo;
      
      public function VoteManager(){super();}
      
      public static function get Instance() : VoteManager{return null;}
      
      public function loadCompleted(param1:VoteInfoAnalyzer) : void{}
      
      public function openVote() : void{}
      
      private function __chosed(param1:Event) : void{}
      
      private function nextQuetion(param1:String) : void{}
      
      public function closeVote() : void{}
      
      private function sendToServer() : void{}
      
      private function getResult(param1:VoteSubmitResultAnalyzer) : void{}
      
      private function __voteViewCLose(param1:Event) : void{}
   }
}
