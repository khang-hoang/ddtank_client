package morn.core.ex
{
   import flash.filters.GlowFilter;
   import morn.core.components.Label;
   import morn.core.utils.ObjectUtils;
   
   public class NameTextEx extends Label
   {
      
      private static const NORMAL_TEXT:int = 1;
      
      private static const VIP_TEXT:int = 2;
      
      private static const OLDPLAYER_TEXT:int = 3;
       
      
      private var _textType:int;
      
      public function NameTextEx(param1:String = "", param2:String = null){super(null,null);}
      
      public function get textType() : int{return 0;}
      
      public function set textType(param1:int) : void{}
   }
}
