package mark.mornUI.views
{
   import mark.items.MarkEquipItem;
   import mark.items.MarkSuitProItem;
   import morn.core.components.Button;
   import morn.core.components.Image;
   import morn.core.components.Label;
   import morn.core.components.List;
   import morn.core.components.TextArea;
   import morn.core.components.View;
   
   public class MarkLeftViewUI extends View
   {
       
      
      public var label7:Label = null;
      
      public var label8:Label = null;
      
      public var label9:Label = null;
      
      public var label10:Label = null;
      
      public var label11:Label = null;
      
      public var label12:Label = null;
      
      public var listEquip:List = null;
      
      public var listSuitType:List = null;
      
      public var label6:Label = null;
      
      public var label5:Label = null;
      
      public var btnJewel:Button = null;
      
      public var txtProps:TextArea = null;
      
      public var icon14:Image = null;
      
      public var lblDemandCnt:Label = null;
      
      public var lblSuit:Label = null;
      
      public function MarkLeftViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         viewClassMap["mark.items.MarkEquipItem"] = MarkEquipItem;
         viewClassMap["mark.items.MarkSuitProItem"] = MarkSuitProItem;
         super.createChildren();
         loadUI("views/MarkLeftView.xml");
      }
   }
}
