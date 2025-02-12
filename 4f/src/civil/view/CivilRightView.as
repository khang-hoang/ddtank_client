package civil.view
{
   import civil.CivilController;
   import civil.CivilEvent;
   import civil.CivilModel;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.IMManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class CivilRightView extends Sprite implements Disposeable
   {
       
      
      private var _listBg:MovieClip;
      
      private var _bg:ScaleBitmapImage;
      
      private var _goldLinBg:ScaleBitmapImage;
      
      private var _formIineBig1:ScaleBitmapImage;
      
      private var _formIineBig2:ScaleBitmapImage;
      
      private var _preBtn:SimpleBitmapButton;
      
      private var _nextBtn:SimpleBitmapButton;
      
      private var _addBigBtn:SimpleBitmapButton;
      
      private var _pagePreBg:ScaleBitmapImage;
      
      private var _nameTitle:FilterFrameText;
      
      private var _levelTitle:FilterFrameText;
      
      private var _stateTitle:FilterFrameText;
      
      private var _pageTxt:FilterFrameText;
      
      private var _pageLastBg:Scale9CornerImage;
      
      private var _searchBG:Scale9CornerImage;
      
      private var _civilGenderGroup:SelectedButtonGroup;
      
      private var _maleBtn:SelectedButton;
      
      private var _femaleBtn:SelectedButton;
      
      private var _searchBtn:TextButton;
      
      private var _registerBtn:TextButton;
      
      private var _menberList:CivilPlayerInfoList;
      
      private var _controller:CivilController;
      
      private var _currentPage:int = 1;
      
      private var _model:CivilModel;
      
      private var _searchTxt:TextInput;
      
      private var _sex:Boolean;
      
      private var _loadMember:Boolean = false;
      
      private var _seachKey:String = "";
      
      private var _isBusy:Boolean;
      
      public function CivilRightView(param1:CivilController, param2:CivilModel){super();}
      
      public function dispose() : void{}
      
      public function init() : void{}
      
      private function initButton() : void{}
      
      private function initEvnet() : void{}
      
      private function removeEvent() : void{}
      
      private function __onRegisterChange(param1:CivilEvent) : void{}
      
      private function __btnClick(param1:MouseEvent) : void{}
      
      private function __addBtnClick(param1:MouseEvent) : void{}
      
      private function __sexBtnClick(param1:MouseEvent) : void{}
      
      private function __leafBtnClick(param1:MouseEvent) : void{}
      
      private function __searchTxtClick(param1:MouseEvent) : void{}
      
      private function __memberSelectedChange(param1:CivilEvent) : void{}
      
      private function updateButton() : void{}
      
      private function updateSex() : void{}
      
      private function __updateRegisterGlow(param1:CivilEvent) : void{}
      
      private function setButtonState(param1:Boolean, param2:Boolean) : void{}
      
      private function __updateView(param1:CivilEvent) : void{}
   }
}
