package BraveDoor.data
{
   import flash.events.EventDispatcher;
   
   public class BraveDoorDuplicateInfo extends EventDispatcher
   {
       
      
      private var _mapUrl:String;
      
      private var _mapWidth:int;
      
      private var _mapHeight:int;
      
      private var _mapX:int;
      
      private var _mapY:int;
      
      private var _page:int;
      
      private var _duplicateInfo:Vector.<DuplicateInfo> = null;
      
      public function BraveDoorDuplicateInfo(){super();}
      
      public function get duplicateInfo() : Vector.<DuplicateInfo>{return null;}
      
      public function addDuplicateInfo(param1:DuplicateInfo) : void{}
      
      public function get page() : int{return 0;}
      
      public function set page(param1:int) : void{}
      
      public function get mapY() : int{return 0;}
      
      public function set mapY(param1:int) : void{}
      
      public function get mapX() : int{return 0;}
      
      public function set mapX(param1:int) : void{}
      
      public function get mapHeight() : int{return 0;}
      
      public function set mapHeight(param1:int) : void{}
      
      public function get mapWidth() : int{return 0;}
      
      public function set mapWidth(param1:int) : void{}
      
      public function get mapUrl() : String{return null;}
      
      public function set mapUrl(param1:String) : void{}
   }
}
