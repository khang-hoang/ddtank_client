package morn.core.components
{
   import morn.core.handlers.Handler;
   
   public interface ISelect
   {
       
      
      function get selected() : Boolean;
      
      function set selected(param1:Boolean) : void;
      
      function get clickHandler() : Handler;
      
      function set clickHandler(param1:Handler) : void;
   }
}
