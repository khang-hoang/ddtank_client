package petsBag.petsAdvanced
{
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.SelfInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.PositionUtils;
   import ddt.view.tips.OneLineTip;
   import ddtDeed.DeedManager;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import pet.data.PetInfo;
   import petsBag.PetsBagManager;
   import petsBag.petsAdvanced.event.PetsAdvancedEvent;
   
   public class PetsAdvancedView extends Sprite implements Disposeable
   {
       
      
      protected var _bg:Bitmap;
      
      protected var _petInfo:PetInfo;
      
      protected var _petsBasicInfoView:PetsBasicInfoView;
      
      protected var _viewType:int;
      
      protected var _vBox:VBox;
      
      protected var _itemVector:Vector.<PetsPropItem>;
      
      protected var _btn:SimpleBitmapButton;
      
      protected var _freeBtn:SimpleBitmapButton;
      
      protected var _freeTxt:FilterFrameText;
      
      protected var _allBtn:SelectedCheckButton;
      
      protected var _bagCellBg:Bitmap;
      
      protected var _bagCell:PetsAdvancedCell;
      
      protected var _progress:PetsAdvancedProgressBar;
      
      protected var _starMc:MovieClip;
      
      protected var _gradeMc:MovieClip;
      
      protected var _currentEvolutionExp:int;
      
      protected var _currentPropArr:Array;
      
      protected var _currentGrowArr:Array;
      
      protected var _toLinkTxt:FilterFrameText;
      
      protected var _tip:OneLineTip;
      
      protected var _self:SelfInfo;
      
      private var _clickDate:Number = 0;
      
      public function PetsAdvancedView(param1:int){super();}
      
      protected function initView() : void{}
      
      protected function addEvent() : void{}
      
      private function refreshFreeTipTxt(param1:Event = null) : void{}
      
      protected function __hideTip(param1:MouseEvent) : void{}
      
      protected function __showTip(param1:MouseEvent) : void{}
      
      protected function playNumMovie() : void{}
      
      protected function __allComplete(param1:Event) : void{}
      
      protected function __progressMovieHandler(param1:PetsAdvancedEvent) : void{}
      
      protected function __enterFrame(param1:Event) : void{}
      
      protected function __clickHandler(param1:MouseEvent) : void{}
      
      protected function initData() : void{}
      
      protected function updatePetData() : void{}
      
      private function __toLinkTxtHandler(param1:TextEvent) : void{}
      
      protected function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
