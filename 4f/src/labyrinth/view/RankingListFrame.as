package labyrinth.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.ListPanel;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.events.Event;
   import labyrinth.LabyrinthControl;
   import labyrinth.LabyrinthManager;
   
   public class RankingListFrame extends BaseAlerFrame
   {
       
      
      private var _bg:Bitmap;
      
      private var _rankingTitle:FilterFrameText;
      
      private var _rankingTitleI:FilterFrameText;
      
      private var _rankingTitleII:FilterFrameText;
      
      private var _list:ListPanel;
      
      private var _selectType:int;
      
      public function RankingListFrame(param1:int = 0){super();}
      
      override protected function init() : void{}
      
      private function initEvent() : void{}
      
      protected function __updateList(param1:Event) : void{}
      
      public function show() : void{}
      
      override public function dispose() : void{}
   }
}
