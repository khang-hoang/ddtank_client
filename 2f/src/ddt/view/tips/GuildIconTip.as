package ddt.view.tips
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.ITip;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class GuildIconTip extends Sprite implements ITip, Disposeable
   {
       
      
      private var _tipData:GuildIconTipInfo;
      
      private var _bg:ScaleBitmapImage;
      
      private var _guildLVTitle:Bitmap;
      
      private var _guildLV:Sprite;
      
      private var _stateTitle:Bitmap;
      
      private var _stateTxt:FilterFrameText;
      
      private var _repute:GuildRepute;
      
      public function GuildIconTip(){super();}
      
      public function get tipData() : Object{return null;}
      
      public function set tipData(param1:Object) : void{}
      
      public function asDisplayObject() : DisplayObject{return null;}
      
      public function dispose() : void{}
   }
}
