package auctionHouse.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.auctionHouse.AuctionGoodsInfo;
   import ddt.manager.PlayerManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class StripCurPriceView extends Sprite implements Disposeable
   {
       
      
      private var _info:AuctionGoodsInfo;
      
      private var maxPrice_txt:FilterFrameText;
      
      private var mouthPrice_txt:FilterFrameText;
      
      private var yourPrice_bit:Bitmap;
      
      private var mouth_bit:Bitmap;
      
      private var goldMoney_mc:ScaleFrameImage;
      
      private var goldMoneyMouth_mc:ScaleFrameImage;
      
      private var goldMoney_mc_y:int;
      
      private var maxPrice_txt_y:int;
      
      private var yourPrice_bit_y:int;
      
      public function StripCurPriceView(){super();}
      
      private function initView() : void{}
      
      function set info(param1:AuctionGoodsInfo) : void{}
      
      private function update() : void{}
      
      private function setMouse() : void{}
      
      public function dispose() : void{}
   }
}
