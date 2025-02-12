package ddt.view.sceneCharacter
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class SceneCharacterItem
   {
       
      
      private var _type:String;
      
      private var _groupType:String;
      
      private var _sortOrder:int;
      
      private var _source:BitmapData;
      
      private var _points:Vector.<Point>;
      
      private var _cellWitdh:Number;
      
      private var _cellHeight:Number;
      
      private var _rowNumber:int;
      
      private var _rowCellNumber:int;
      
      private var _isRepeat:Boolean;
      
      private var _repeatNumber:int;
      
      public function SceneCharacterItem(param1:String, param2:String, param3:BitmapData, param4:int, param5:int, param6:Number, param7:Number, param8:int = 0, param9:Vector.<Point> = null, param10:Boolean = false, param11:int = 0){super();}
      
      public function get type() : String{return null;}
      
      public function get groupType() : String{return null;}
      
      public function get source() : BitmapData{return null;}
      
      public function set source(param1:BitmapData) : void{}
      
      public function get points() : Vector.<Point>{return null;}
      
      public function get cellWitdh() : Number{return 0;}
      
      public function get cellHeight() : Number{return 0;}
      
      public function get rowNumber() : int{return 0;}
      
      public function set rowNumber(param1:int) : void{}
      
      public function get rowCellNumber() : int{return 0;}
      
      public function set rowCellNumber(param1:int) : void{}
      
      public function get sortOrder() : int{return 0;}
      
      public function get isRepeat() : Boolean{return false;}
      
      public function get repeatNumber() : int{return 0;}
      
      public function dispose() : void{}
   }
}
