package mainbutton
{
   public class MainButton
   {
       
      
      public var ID:String;
      
      private var _btnMark:int;
      
      private var _btnName:String;
      
      private var _btnServerVisable:int;
      
      private var _btnCompleteVisable:int;
      
      public var IsShow:Boolean;
      
      public function MainButton(){super();}
      
      public function get btnCompleteVisable() : int{return 0;}
      
      public function set btnCompleteVisable(param1:int) : void{}
      
      public function get btnServerVisable() : int{return 0;}
      
      public function set btnServerVisable(param1:int) : void{}
      
      public function get btnName() : String{return null;}
      
      public function set btnName(param1:String) : void{}
      
      public function get btnMark() : int{return 0;}
      
      public function set btnMark(param1:int) : void{}
   }
}
