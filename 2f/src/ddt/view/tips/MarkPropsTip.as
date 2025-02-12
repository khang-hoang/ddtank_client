package ddt.view.tips
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.PlayerInfo;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import mark.MarkMgr;
   import mark.data.MarkProData;
   import mark.data.MarkSuitTemplateData;
   
   public class MarkPropsTip extends Sprite implements Disposeable
   {
       
      
      private var _tipbackgound:Image;
      
      private var _propCnt:FilterFrameText = null;
      
      private var _place:int = -1;
      
      public function MarkPropsTip(param1:int){super();}
      
      public function set data(param1:PlayerInfo) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
