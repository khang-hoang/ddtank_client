package lotteryTicket.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import lotteryTicket.LotteryManager;
   
   public class LotteryPrizeView extends Frame
   {
       
      
      private var _bg:Bitmap;
      
      private var _firstInfoTxt:FilterFrameText;
      
      private var _secondInfoTxt:FilterFrameText;
      
      private var _thirdInfoTxt:FilterFrameText;
      
      private var _fourthInfoTxt:FilterFrameText;
      
      private var scrollPanel:ScrollPanel;
      
      public function LotteryPrizeView(){super();}
      
      protected function _responseHandle(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}

import com.pickgliss.ui.ComponentFactory;
import com.pickgliss.ui.text.FilterFrameText;
import ddt.utils.PositionUtils;
import ddt.view.common.LevelIcon;
import flash.display.Bitmap;
import flash.display.Sprite;
import lotteryTicket.LotteryManager;

class PrizeItem extends Sprite
{
    
   
   private var bg:Bitmap;
   
   private var _zoneTxt:FilterFrameText;
   
   private var _nameTxt:FilterFrameText;
   
   private var level:LevelIcon;
   
   function PrizeItem(param1:int){super();}
}
