package vip.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.image.TiledImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class VipGiftDetail extends Sprite implements Disposeable
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _iconBg:DisplayObject;
      
      private var _line:TiledImage;
      
      private var _giftIcon:ScaleBitmapImage;
      
      private var _vipSubIcon:ScaleBitmapImage;
      
      private var _detailTxt:FilterFrameText;
      
      private var _index:int;
      
      public function VipGiftDetail(){super();}
      
      public function setData(param1:int) : void{}
      
      private function updateView() : void{}
      
      public function dispose() : void{}
   }
}
