package vip.view
{
   import bagAndInfo.info.LevelProgress;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.ScaleLeftRightImage;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Graphics;
   
   public class VipLevelProgress extends LevelProgress
   {
       
      
      private var _backBG:ScaleLeftRightImage;
      
      public function VipLevelProgress()
      {
         super();
      }
      
      public function set progressLabelTextFormatStyle(param1:String) : void
      {
         _progressLabel.textFormatStyle = param1;
      }
      
      public function set progressLabelFilterString(param1:String) : void
      {
         _progressLabel.filterString = param1;
      }
      
      override protected function initView() : void
      {
         _thuck = ComponentFactory.Instance.creatComponentByStylename("VIP.thunck");
         addChildAt(_thuck,0);
         _backBG = ComponentFactory.Instance.creatComponentByStylename("VIP.LeveLBG");
         addChildAt(_backBG,0);
         _graphics_thuck = ComponentFactory.Instance.creatComponentByStylename("VIP.thuckBitData").getBitmapdata();
         _progressLabel = ComponentFactory.Instance.creatComponentByStylename("vipLevelProgressTxt");
         addChild(_progressLabel);
      }
      
      override protected function drawProgress() : void
      {
         var _loc2_:Number = _value / _max > 1?1:Number(_value / _max);
         var _loc1_:Graphics = _thuck.graphics;
         _loc1_.clear();
         if(_loc2_ >= 0)
         {
            _progressLabel.text = Math.floor(_loc2_ * 10000) / 100 + "%";
            _loc1_.beginBitmapFill(_graphics_thuck);
            _loc1_.drawRect(0,0,_width * _loc2_,_height - 8);
            _loc1_.endFill();
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         ObjectUtils.disposeObject(_backBG);
         _backBG = null;
      }
   }
}
