package sevenDouble.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class SevenDoubleRunPercentView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _txt:FilterFrameText;
      
      private var _recordTxt:String;
      
      public function SevenDoubleRunPercentView()
      {
         super();
         this.x = 476;
         initView();
      }
      
      private function initView() : void
      {
         _bg = ComponentFactory.Instance.creatBitmap("asset.sevenDouble.countDownBg");
         _txt = ComponentFactory.Instance.creatComponentByStylename("sevenDouble.countDownView.txt");
         _txt.x = 4;
         _recordTxt = LanguageMgr.GetTranslation("sevenDouble.game.runPercentTxt");
         _txt.text = _recordTxt + "--";
         addChild(_bg);
         addChild(_txt);
      }
      
      public function refreshView(param1:int) : void
      {
         var _loc2_:int = 22780 - param1;
         _loc2_ = _loc2_ < 0?0:_loc2_;
         var _loc3_:int = Math.ceil(_loc2_ / 22500 * 10);
         if(_txt)
         {
            _txt.text = _recordTxt + _loc3_ * 10 + "%";
         }
      }
      
      public function dispose() : void
      {
         ObjectUtils.disposeAllChildren(this);
         _bg = null;
         _txt = null;
         _recordTxt = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
