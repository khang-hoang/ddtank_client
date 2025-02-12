package ddt.view.common
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.data.QuestionInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.QuestionInfoMannager;
   import ddt.manager.SoundManager;
   import flash.events.MouseEvent;
   import trainer.view.QuestionItemView;
   
   public class QuestionGoogsView extends Frame
   {
       
      
      private var _choiceBg:ScaleBitmapImage;
      
      private var _questionText:FilterFrameText;
      
      private var _answersText:FilterFrameText;
      
      private var _explanationText:FilterFrameText;
      
      private var _txtAward:FilterFrameText;
      
      private var _imgBg:ScaleBitmapImage;
      
      private var _progressText:FilterFrameText;
      
      private var _list:VBox;
      
      private var _currentQuestion:QuestionInfo;
      
      private var _questionTotal:int;
      
      private var _questionCurrentNum:int;
      
      private var _correctQuestionNum:int;
      
      private var _questionCatalogID:int;
      
      private var _questionID:int;
      
      private var _nextBtn:SimpleBitmapButton;
      
      private var _itemArray:Array;
      
      private var _perKey:int;
      
      public function QuestionGoogsView(){super();}
      
      private function initContent() : void{}
      
      private function initItem() : void{}
      
      private function __itemClick(param1:MouseEvent) : void{}
      
      private function update() : void{}
      
      private function updateItem() : void{}
      
      public function setQuestionInfo(param1:QuestionInfo, param2:int, param3:int, param4:int) : void{}
      
      private function getPerKeyStr(param1:int) : String{return null;}
      
      private function cleanItem() : void{}
      
      override public function dispose() : void{}
   }
}
