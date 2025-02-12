package ddt.command
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class NumberSelecter extends Sprite implements Disposeable
   {
      
      public static const NUMBER_CLOSE:String = "number_close";
      
      public static const NUMBER_ENTER:String = "number_enter";
       
      
      private var _minNum:int;
      
      private var _maxNum:int;
      
      private var _num:int;
      
      private var _reduceBtn:BaseButton;
      
      private var _addBtn:BaseButton;
      
      private var numText:FilterFrameText;
      
      private var _ennable:Boolean = true;
      
      public var bg:Image;
      
      public var needFocus:Boolean = true;
      
      public function NumberSelecter(param1:int = 1, param2:int = 99)
      {
         super();
         _minNum = param1;
         _maxNum = param2;
         init();
         initEvents();
      }
      
      public function get ennable() : Boolean
      {
         return _ennable;
      }
      
      public function set ennable(param1:Boolean) : void
      {
         _ennable = param1;
         if(!_ennable)
         {
            var _loc2_:* = _ennable;
            _addBtn.enable = _loc2_;
            _reduceBtn.enable = _loc2_;
            numText.mouseEnabled = false;
         }
      }
      
      private function init() : void
      {
         bg = ComponentFactory.Instance.creatComponentByStylename("ddtcore.NumberSelecterTextBg");
         addChild(bg);
         _reduceBtn = ComponentFactory.Instance.creatComponentByStylename("ddtcore.NumberSelecterDownButton");
         addChild(_reduceBtn);
         _addBtn = ComponentFactory.Instance.creatComponentByStylename("ddtcore.NumberSelecterUpButton");
         addChild(_addBtn);
         numText = ComponentFactory.Instance.creatComponentByStylename("ddtcore.NumberSelecterText");
         addChild(numText);
         _num = 1;
         updateView();
      }
      
      private function initEvents() : void
      {
         _reduceBtn.addEventListener("click",reduceBtnClickHandler);
         _addBtn.addEventListener("click",addBtnClickHandler);
         numText.addEventListener("click",clickHandler);
         numText.addEventListener("keyDown",onKeyDown);
         numText.addEventListener("change",changeHandler);
         addEventListener("addedToStage",addtoStageHandler);
      }
      
      private function removeEvents() : void
      {
         _reduceBtn.removeEventListener("click",reduceBtnClickHandler);
         _addBtn.removeEventListener("click",addBtnClickHandler);
         numText.removeEventListener("click",clickHandler);
         numText.removeEventListener("keyDown",onKeyDown);
         numText.removeEventListener("change",changeHandler);
         removeEventListener("addedToStage",addtoStageHandler);
      }
      
      private function addtoStageHandler(param1:Event) : void
      {
         setFocus();
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function changeHandler(param1:Event) : void
      {
         number = int(numText.text);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         SoundManager.instance.play("008");
         param1.stopImmediatePropagation();
         if(param1.keyCode == 13)
         {
            number = int(numText.text);
            dispatchEvent(new Event("number_enter",true));
         }
         if(param1.keyCode == 27)
         {
            dispatchEvent(new Event("number_close"));
         }
      }
      
      private function reduceBtnClickHandler(param1:MouseEvent) : void
      {
         SoundManager.instance.play("008");
         number = number - 1;
      }
      
      private function addBtnClickHandler(param1:MouseEvent) : void
      {
         SoundManager.instance.play("008");
         number = number + 1;
      }
      
      public function setFocus() : void
      {
         if(needFocus == false)
         {
            return;
         }
         if(stage.focus != numText)
         {
            numText.text = "";
            numText.appendText(String(_num));
            stage.focus = numText;
         }
      }
      
      public function set maximum(param1:int) : void
      {
         _maxNum = param1;
         number = _num;
      }
      
      public function set minimum(param1:int) : void
      {
         _minNum = param1;
         number = _num;
      }
      
      public function set number(param1:int) : void
      {
         if(param1 < _minNum)
         {
            param1 = _minNum;
         }
         else if(param1 > _maxNum)
         {
            param1 = _maxNum;
         }
         _num = param1;
         updateView();
         dispatchEvent(new Event("change"));
      }
      
      public function get number() : int
      {
         return _num;
      }
      
      private function updateView() : void
      {
         numText.text = _num.toString();
         _reduceBtn.enable = _num > _minNum;
         _addBtn.enable = _num < _maxNum;
      }
      
      public function dispose() : void
      {
         removeEvents();
         if(_reduceBtn)
         {
            ObjectUtils.disposeObject(_reduceBtn);
         }
         _reduceBtn = null;
         if(_addBtn)
         {
            ObjectUtils.disposeObject(_addBtn);
         }
         _addBtn = null;
         if(numText)
         {
            ObjectUtils.disposeObject(numText);
         }
         numText = null;
         ObjectUtils.disposeAllChildren(this);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
