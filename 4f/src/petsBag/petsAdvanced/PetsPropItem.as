package petsBag.petsAdvanced
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class PetsPropItem extends Sprite implements Disposeable
   {
       
      
      private var _propNameArr:Array;
      
      private var _propNameTxt:FilterFrameText;
      
      private var _propValueTxt:FilterFrameText;
      
      private var _risingStarAddedPropValueTxt:FilterFrameText;
      
      private var _evolutionAddedPropValueTxt:FilterFrameText;
      
      private var _viewType:int;
      
      private var _numMc:MovieClip;
      
      private var _isPlayComplete:Boolean = true;
      
      private var _propValue:int;
      
      private var _addedProValue:Number;
      
      private var _index:int;
      
      public function PetsPropItem(param1:int){super();}
      
      private function initView() : void{}
      
      public function setData(param1:int, param2:int, param3:Number) : void{}
      
      public function playNumMc() : void{}
      
      protected function __enterHandler(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
