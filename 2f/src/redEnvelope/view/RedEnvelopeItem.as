package redEnvelope.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.BagInfo;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.PlayerManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import redEnvelope.RedEnvelopeManager;
   import redEnvelope.event.RedEnvelopeEvent;
   
   public class RedEnvelopeItem extends Sprite
   {
      
      public static var redList:Array = [29996,29997,29998,29999];
      
      public static var redcolorList:Array = ["#bababa","#4ee231","#46f0fb","#ffea00"];
       
      
      private var _redNumTxt:FilterFrameText;
      
      public var _type:int;
      
      private var cellBox:Sprite;
      
      public var select:MovieImage;
      
      private var redCell:BagCell;
      
      public function RedEnvelopeItem(param1:int){super();}
      
      private function init() : void{}
      
      public function updataRedNum() : void{}
      
      private function __onSelectClick(param1:MouseEvent) : void{}
      
      public function setData() : void{}
      
      public function dispose() : void{}
   }
}
