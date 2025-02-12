package conRecharge.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import conRecharge.ConRechargeManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   
   public class ConRechargeLeftItem extends Sprite implements Disposeable
   {
       
      
      private var _vbox:VBox;
      
      private var _num1:Sprite;
      
      private var _num2:Sprite;
      
      private var _num3:Sprite;
      
      public function ConRechargeLeftItem(){super();}
      
      private function initView() : void{}
      
      public function dispose() : void{}
   }
}

import com.pickgliss.ui.ComponentFactory;
import com.pickgliss.ui.controls.BaseButton;
import com.pickgliss.ui.controls.container.HBox;
import com.pickgliss.ui.core.Component;
import com.pickgliss.ui.text.FilterFrameText;
import com.pickgliss.utils.ClassUtils;
import com.pickgliss.utils.ObjectUtils;
import conRecharge.ConRechargeManager;
import ddt.data.goods.ItemTemplateInfo;
import ddt.manager.ItemManager;
import ddt.manager.LanguageMgr;
import ddt.manager.SocketManager;
import ddt.manager.TimeManager;
import ddt.utils.PositionUtils;
import flash.display.Bitmap;
import flash.display.MovieClip;
import flash.display.Sprite;
import flash.events.MouseEvent;
import wonderfulActivity.WonderfulActivityManager;
import wonderfulActivity.data.GiftBagInfo;
import wonderfulActivity.data.PlayerCurInfo;
import wonderfulActivity.data.SendGiftInfo;

class BoxItem extends Component
{
    
   
   private var _titleBg:Bitmap;
   
   private var _index:int;
   
   private var _finishDayTxt:FilterFrameText;
   
   private var _moneyTxt:FilterFrameText;
   
   private var _hBox:HBox;
   
   private var _cellArr:Array;
   
   private var _boxArr:Array;
   
   function BoxItem(param1:int){super();}
   
   private function initView() : void{}
   
   private function rechargeDayNum(param1:int) : int{return 0;}
   
   private function judgeRechargeDay(param1:int, param2:int) : Boolean{return false;}
   
   private function clickHandler(param1:MouseEvent) : void{}
   
   override public function dispose() : void{}
}
