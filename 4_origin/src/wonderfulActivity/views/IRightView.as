package wonderfulActivity.views
{
   import flash.display.Sprite;
   
   public interface IRightView
   {
       
      
      function init() : void;
      
      function dispose() : void;
      
      function content() : Sprite;
      
      function setState(param1:int, param2:int) : void;
   }
}
