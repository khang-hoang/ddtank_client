package ddt.data.map
{
   public class MapInfo
   {
      
      public static const TANABATA_ID:int = 70001;
      
      public static const DESERT_ID:int = 70020;
      
      public static const SPE1_ID:int = 27;
      
      public static const SPE2_ID:int = 30;
      
      public static var G:Number = 0.98;
       
      
      public var ID:int;
      
      public var Name:String;
      
      public var isOpen:Boolean;
      
      public var canSelect:Boolean;
      
      public var ForegroundWidth:Number;
      
      public var ForegroundHeight:Number;
      
      public var ForePic:String;
      
      public var RealPic:String = "";
      
      public var BackroundWidht:Number;
      
      public var BackroundHeight:Number;
      
      public var BackPic:String;
      
      public var DeadWidth:Number;
      
      public var DeadHeight:Number;
      
      public var DeadPic:String;
      
      public var Pic:String;
      
      public var Description:String;
      
      public var BackMusic:String = "050";
      
      public var Weight:int;
      
      public var Wind:Number;
      
      public var DragIndex:int;
      
      public var Type:int;
      
      public function MapInfo(){super();}
   }
}
