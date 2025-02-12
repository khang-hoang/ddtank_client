package store.events
{
   import flash.events.Event;
   
   public class EmbedBackoutEvent extends Event
   {
      
      public static const EMBED_BACKOUT:String = "embedBackout";
      
      public static const EMBED_BACKOUT_DOWNITEM_OVER:String = "embedBackoutDownItemOver";
      
      public static const EMBED_BACKOUT_DOWNITEM_OUT:String = "embedBackoutDownItemOut";
      
      public static const EMBED_BACKOUT_DOWNITEM_DOWN:String = "embedBackoutDownItemDown";
       
      
      private var _cellID:int;
      
      private var _templateID:int;
      
      public function EmbedBackoutEvent(param1:String, param2:int, param3:int, param4:Boolean = false, param5:Boolean = false){super(null,null,null);}
      
      public function get CellID() : int{return 0;}
      
      public function get TemplateID() : int{return 0;}
   }
}
