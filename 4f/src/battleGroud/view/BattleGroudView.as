package battleGroud.view
{
   import bagAndInfo.cell.BagCell;
   import battleGroud.BattleGroudControl;
   import battleGroud.data.BatlleData;
   import battleGroud.data.BattleUpdateData;
   import battleSkill.BattleSkillManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.ShowTipManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.ListPanel;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class BattleGroudView extends BaseAlerFrame
   {
       
      
      private var _back:Bitmap;
      
      private var _goodBack:Bitmap;
      
      private var _battleSkillBtn:BaseButton;
      
      private var _txt1:FilterFrameText;
      
      private var _txt2:FilterFrameText;
      
      private var _txt3:FilterFrameText;
      
      private var _txt4:FilterFrameText;
      
      private var _txt5:FilterFrameText;
      
      private var _txt7:FilterFrameText;
      
      private var _descripMc:MovieClip;
      
      private var _list:VBox;
      
      private var _miliContent:Component;
      
      private var _miliIcon:Bitmap;
      
      private var _helpBtn:SimpleBitmapButton;
      
      private var _hBox1:HBox;
      
      private var _hBox2:HBox;
      
      private var _hBox3:HBox;
      
      private var _MiliIconList:Array;
      
      private var _scrollPanel:ListPanel;
      
      private var content:Sprite;
      
      public function BattleGroudView(){super();}
      
      private function initView() : void{}
      
      public function setTxt(param1:BattleUpdateData) : void{}
      
      private function setMilitary(param1:int) : void{}
      
      private function creatIcon(param1:String) : void{}
      
      private function initEvent() : void{}
      
      private function skillBtnClick_Handler(param1:MouseEvent) : void{}
      
      private function initRewardList() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}
