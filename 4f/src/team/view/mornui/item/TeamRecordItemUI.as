package team.view.mornui.item
{
   import morn.core.components.Clip;
   import morn.core.components.Image;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class TeamRecordItemUI extends View
   {
       
      
      public var clip_icon:Clip = null;
      
      public var img_vs:Image = null;
      
      public var label_name:Label = null;
      
      public var label_score:Label = null;
      
      public var label_date:Label = null;
      
      public function TeamRecordItemUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
