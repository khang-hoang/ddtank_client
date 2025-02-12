package godCardRaise.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import godCardRaise.GodCardRaiseManager;
   import godCardRaise.info.GodCardListInfo;
   
   public class GodCardRaiseAtlasView extends Sprite implements Disposeable
   {
       
      
      private var _bg:MutipleImage;
      
      private var _selectGroup:SelectedButtonGroup;
      
      private var _whiteCardBtn:SelectedButton;
      
      private var _greenCardBtn:SelectedButton;
      
      private var _blueCardBtn:SelectedButton;
      
      private var _purpleCardBtn:SelectedButton;
      
      private var _goldCardBtn:SelectedButton;
      
      private var _whiteCards:Sprite;
      
      private var _greenCards:Sprite;
      
      private var _blueCards:Sprite;
      
      private var _purpleCards:Sprite;
      
      private var _goldCards:Sprite;
      
      private var _currentCards:Sprite;
      
      private var _scrollPanel:ScrollPanel;
      
      private var _myClipTxt:FilterFrameText;
      
      public function GodCardRaiseAtlasView(){super();}
      
      private function initView() : void{}
      
      private function __selectGroupHandler(param1:Event) : void{}
      
      private function getView() : void{}
      
      private function addGodCardRaiseAtlasCards(param1:Sprite, param2:int) : void{}
      
      public function updateView() : void{}
      
      private function updateCards(param1:Sprite) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
