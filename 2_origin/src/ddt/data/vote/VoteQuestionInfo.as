package ddt.data.vote
{
   import ddt.view.vote.VoteInfo;
   
   public class VoteQuestionInfo
   {
       
      
      public var questionID:String;
      
      public var question:String;
      
      public var nextQuestionID:String;
      
      public var multiple:Boolean;
      
      public var answer:Vector.<VoteInfo>;
      
      public var answerLength:int;
      
      public var questionType:int;
      
      public var otherSelect:Boolean;
      
      public function VoteQuestionInfo()
      {
         super();
         answer = new Vector.<VoteInfo>();
      }
   }
}
