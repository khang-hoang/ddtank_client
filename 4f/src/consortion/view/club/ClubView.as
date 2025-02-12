package consortion.view.club
{
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.TextArea;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.ConsortionModelManager;
   import consortion.event.ConsortionEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import trainer.view.NewHandContainer;
   
   public class ClubView extends Sprite implements Disposeable
   {
       
      
      private var _consortiaClubPage:int = 1;
      
      private var _consortionList:ConsortionList;
      
      private var _recordList:ClubRecordList;
      
      private var _BG:MovieImage;
      
      private var _clubBG:MovieImage;
      
      private var _wordsImage:MutipleImage;
      
      private var _searchInput:TextInput;
      
      private var _searchBtn:TextButton;
      
      private var _declareBG:MutipleImage;
      
      private var _declaration:TextArea;
      
      private var _applyBtn:BaseButton;
      
      private var _randomSearchBtn:BaseButton;
      
      private var _recordGroup:SelectedButtonGroup;
      
      private var _applyRecordBtn:SelectedTextButton;
      
      private var _inviteRecordBtn:SelectedTextButton;
      
      private var _createConsortionBtn:BaseButton;
      
      private var _menberListVLine:MutipleImage;
      
      private var _searchText:FilterFrameText;
      
      private var _inputBG:MutipleImage;
      
      private var _consortionNameTxt:FilterFrameText;
      
      private var _chairmanNameTxt:FilterFrameText;
      
      private var _menberCountTxt:FilterFrameText;
      
      private var _gradeTxt:FilterFrameText;
      
      private var _exploitTxt:FilterFrameText;
      
      private var _littleFur1:ScaleFrameImage;
      
      private var _littleFur2:ScaleFrameImage;
      
      private var _dottedline:MutipleImage;
      
      public function ClubView(){super();}
      
      public function enterClub() : void{}
      
      private function init() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __createConsortionHandler(param1:MouseEvent) : void{}
      
      private function __addToStageHandler(param1:Event) : void{}
      
      private function __keyDownHandler(param1:KeyboardEvent) : void{}
      
      private function __recordBtnClickHandler(param1:MouseEvent) : void{}
      
      private function __recordListChange(param1:ConsortionEvent) : void{}
      
      private function __applyHandler(param1:MouseEvent) : void{}
      
      private function __randomSearchHandler(param1:MouseEvent) : void{}
      
      private function __selectedOneConsortion(param1:ConsortionEvent) : void{}
      
      private function __consortionListComplete(param1:ConsortionEvent) : void{}
      
      private function __focusInHandler(param1:MouseEvent) : void{}
      
      private function __focusOutHandler(param1:FocusEvent) : void{}
      
      private function __sarchWithInputHandler(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
