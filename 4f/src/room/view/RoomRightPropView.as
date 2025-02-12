package room.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.command.StripTip;
   import ddt.events.PlayerPropertyEvent;
   import ddt.events.RoomEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import horse.HorseManager;
   import horse.data.HorseSkillExpVo;
   import road7th.data.DictionaryData;
   import room.RoomManager;
   import room.model.RoomInfo;
   
   public class RoomRightPropView extends Sprite implements Disposeable
   {
      
      public static const UPCELLS_NUMBER:int = 3;
       
      
      protected var _bg:MovieClip;
      
      protected var _secBg:MutipleImage;
      
      protected var _upCells:Vector.<RoomPropCell>;
      
      protected var _upCellsContainer:HBox;
      
      protected var _downCellsContainer:SimpleTileList;
      
      protected var _downCellsSprite:Sprite;
      
      protected var _downCellsScrollPanel:ScrollPanel;
      
      protected var _roomIdTxt:FilterFrameText;
      
      protected var _chanelNameTxt:FilterFrameText;
      
      protected var _goldInfoTxt:FilterFrameText;
      
      protected var _roomNameTxt:FilterFrameText;
      
      protected var _upCellsStripTip:StripTip;
      
      protected var _downCellsStripTip:StripTip;
      
      protected var _energySprite:Sprite;
      
      protected var _energyBitmap:Bitmap;
      
      protected var _energyNum:FilterFrameText;
      
      protected var equalitySkill:Boolean;
      
      public function RoomRightPropView(param1:Boolean = false){super();}
      
      protected function initView() : void{}
      
      protected function initEvents() : void{}
      
      protected function removeEvents() : void{}
      
      protected function _roomNameChanged(param1:RoomEvent) : void{}
      
      protected function creatTipShapeTip() : void{}
      
      protected function __updateGold(param1:PlayerPropertyEvent) : void{}
      
      protected function updateSkillStatus(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
