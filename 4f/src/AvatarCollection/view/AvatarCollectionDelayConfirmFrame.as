package AvatarCollection.view
{
   import AvatarCollection.AvatarCollectionManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.NumberSelecter;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.events.Event;
   
   public class AvatarCollectionDelayConfirmFrame extends BaseAlerFrame
   {
       
      
      private var _numberSelecter:NumberSelecter;
      
      private var _text:FilterFrameText;
      
      private var _needFoodText:FilterFrameText;
      
      private var _dayHonour:int;
      
      private var count:Number;
      
      public function AvatarCollectionDelayConfirmFrame(){super();}
      
      private function initView() : void{}
      
      private function __seleterChange(param1:Event) : void{}
      
      public function show(param1:int, param2:int) : void{}
      
      public function get selectValue() : int{return 0;}
      
      override public function dispose() : void{}
   }
}
