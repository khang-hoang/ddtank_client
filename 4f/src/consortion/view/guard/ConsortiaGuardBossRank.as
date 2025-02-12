package consortion.view.guard
{
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.data.ConsortiaBossDataVo;
   import consortion.guard.ConsortiaGuardControl;
   import consortion.guard.ConsortiaGuardEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import road7th.data.DictionaryData;
   
   public class ConsortiaGuardBossRank extends Sprite implements Disposeable
   {
       
      
      private const selectX:int = 983;
      
      private const unSelectX:int = 787;
      
      private var _bg:ScaleBitmapImage;
      
      private var _selectBtn:SelectedCheckButton;
      
      private var _openShow:Boolean = true;
      
      private var _titleText:FilterFrameText;
      
      private var _nameVBox:VBox;
      
      private var _valueVBox:VBox;
      
      private var _nameList:Vector.<FilterFrameText>;
      
      private var _valueList:Vector.<FilterFrameText>;
      
      public function ConsortiaGuardBossRank(){super();}
      
      private function init() : void{}
      
      private function __onSelectClikc(param1:MouseEvent) : void{}
      
      private function updateRankPos() : void{}
      
      private function __onUpdateRank(param1:ConsortiaGuardEvent) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
