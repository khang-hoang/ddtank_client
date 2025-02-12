package yzhkof.debug
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import yzhkof.MyGraphy;
   import yzhkof.ui.TextPanel;
   
   public class TextTrace extends Sprite
   {
      
      private static const text_info:TextField = new TextField();
      
      private static const container:Sprite = new Sprite();
      
      private static const drag_btn:Sprite = MyGraphy.drawRectangle(20,20);
      
      private static const clean_btn:TextPanel = new TextPanel(16776960);
      
      private static const scaleX_btn:Sprite = MyGraphy.drawRectangle(20,20);
      
      private static const text_width:Number = 500;
      
      private static const text_height:Number = 300;
      
      private static const back:Sprite = MyGraphy.drawRectangle(text_width + 21,text_height + 21,true,16777215);
       
      
      public function TextTrace(){super();}
      
      public static function get view() : Sprite{return null;}
      
      public static function init(param1:DisplayObjectContainer) : DisplayObjectContainer{return null;}
      
      public static function get visible() : Boolean{return false;}
      
      public static function set visible(param1:Boolean) : void{}
      
      public static function textPlus(param1:String) : void{}
      
      public static function textClean() : void{}
      
      private static function __onCleanClick(param1:Event) : void{}
      
      private static function scaleXMouseDownHandler(param1:Event) : void{}
      
      private static function scaleXMouseUpHandler(param1:Event) : void{}
      
      private static function scaleXonEnterFrame(param1:Event) : void{}
      
      private static function containerMouseDownHandler(param1:Event) : void{}
      
      private static function containerMouseUpHandler(param1:Event) : void{}
   }
}
