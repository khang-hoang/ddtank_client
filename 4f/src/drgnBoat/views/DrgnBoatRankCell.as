package drgnBoat.views
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import drgnBoat.DrgnBoatManager;
   import flash.display.Sprite;
   
   public class DrgnBoatRankCell extends Sprite implements Disposeable
   {
       
      
      private var _rankTxt:FilterFrameText;
      
      private var _nameTxt1:FilterFrameText;
      
      private var _nameTxt2:FilterFrameText;
      
      private var _rateTxt:FilterFrameText;
      
      public function DrgnBoatRankCell(param1:int){super();}
      
      public function setName(param1:String, param2:int, param3:Boolean) : void{}
      
      public function dispose() : void{}
   }
}
