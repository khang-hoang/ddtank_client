package email.view
{
   import com.pickgliss.ui.ShowTipManager;
   import com.pickgliss.ui.core.ITipedDisplay;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.EmailEvent;
   import ddt.manager.LanguageMgr;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class DiamondOfWriting extends DiamondBase implements ITipedDisplay
   {
       
      
      private var _cellGoodsID:int;
      
      private var _annex:ItemTemplateInfo;
      
      private var _tipStyle:String;
      
      private var _tipData:Object;
      
      private var _tipDirctions:String;
      
      private var _tipGapV:int;
      
      private var _tipGapH:int;
      
      public function DiamondOfWriting()
      {
         super();
         tipStyle = "ddt.view.tips.OneLineTip";
         tipDirctions = "0";
         tipGapV = 5;
         tipData = LanguageMgr.GetTranslation("tank.view.emailII.WritingView.annex.tip");
         ShowTipManager.Instance.addTip(this);
      }
      
      public function get annex() : ItemTemplateInfo
      {
         return _annex;
      }
      
      public function set annex(param1:ItemTemplateInfo) : void
      {
         _annex = param1;
      }
      
      override protected function initView() : void
      {
         super.initView();
         mouseEnabled = true;
         mouseChildren = true;
         buttonMode = true;
         _cell.visible = true;
         _cell.allowDrag = true;
         centerMC.x = -3;
         centerMC.y = 2;
         var _loc1_:int = 64;
         diamondBg.height = _loc1_;
         diamondBg.width = _loc1_;
      }
      
      override protected function update() : void
      {
         if(_annex == null)
         {
            centerMC.setFrame(1);
            centerMC.visible = true;
         }
         _cell.info = _annex;
      }
      
      override protected function addEvent() : void
      {
         _cell.addEventListener("change",__dragInBag);
         addEventListener("click",__click);
      }
      
      override protected function removeEvent() : void
      {
         _cell.removeEventListener("change",__dragInBag);
         removeEventListener("click",__click);
      }
      
      public function setBagUnlock() : void
      {
         _cell.clearLinkCell();
      }
      
      private function __click(param1:MouseEvent) : void
      {
         dispatchEvent(new EmailEvent("showBagframe"));
         if(_annex)
         {
            _cell.dragStart();
         }
      }
      
      private function __dragInBag(param1:Event) : void
      {
         annex = _cell.info;
         if(annex)
         {
            dispatchEvent(new EmailEvent("draginAnniex"));
         }
         else
         {
            dispatchEvent(new EmailEvent("dragoutAnniex"));
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         _annex = null;
         ShowTipManager.Instance.removeTip(this);
      }
      
      public function get tipStyle() : String
      {
         return _tipStyle;
      }
      
      public function get tipData() : Object
      {
         return _tipData;
      }
      
      public function get tipDirctions() : String
      {
         return _tipDirctions;
      }
      
      public function get tipGapV() : int
      {
         return _tipGapV;
      }
      
      public function get tipGapH() : int
      {
         return _tipGapH;
      }
      
      public function set tipStyle(param1:String) : void
      {
         if(_tipStyle == param1)
         {
            return;
         }
         _tipStyle = param1;
      }
      
      public function set tipData(param1:Object) : void
      {
         if(_tipData == param1)
         {
            return;
         }
         _tipData = param1;
      }
      
      public function set tipDirctions(param1:String) : void
      {
         if(_tipDirctions == param1)
         {
            return;
         }
         _tipDirctions = param1;
      }
      
      public function set tipGapV(param1:int) : void
      {
         if(_tipGapV == param1)
         {
            return;
         }
         _tipGapV = param1;
      }
      
      public function set tipGapH(param1:int) : void
      {
         if(_tipGapH == param1)
         {
            return;
         }
         _tipGapH = param1;
      }
      
      public function asDisplayObject() : DisplayObject
      {
         return this;
      }
   }
}
