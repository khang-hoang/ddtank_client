package ddtBuried.map
{
   public class MapArrays
   {
       
      
      public var mapString1:String;
      
      public var standArray1:Array;
      
      public var standArray2:Array;
      
      public var standArray3:Array;
      
      public var mapString2:String;
      
      public var mapString3:String;
      
      public var itemMaps1:String;
      
      public var itemMaps2:String;
      
      public var itemMaps3:String;
      
      public var roadMapsList1:Array;
      
      public var roadMapsList2:Array;
      
      public var roadMapsList3:Array;
      
      public function MapArrays()
      {
         standArray1 = [];
         standArray2 = [];
         standArray3 = [];
         super();
         initMaps();
      }
      
      private function initMaps() : void
      {
         mapString1 = "30#12#0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,0,0,0,0,0,0,0,1,0,1,0,1,1,1,1,1,0,0,0,1,0,1,0,0,0,0,0,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
         standArray1 = [{
            "x":10,
            "y":0
         },{
            "x":9,
            "y":0
         },{
            "x":8,
            "y":0
         },{
            "x":8,
            "y":1
         },{
            "x":8,
            "y":2
         },{
            "x":8,
            "y":3
         },{
            "x":8,
            "y":4
         },{
            "x":8,
            "y":5
         },{
            "x":8,
            "y":6
         },{
            "x":7,
            "y":6
         },{
            "x":6,
            "y":6
         },{
            "x":6,
            "y":5
         },{
            "x":6,
            "y":4
         },{
            "x":6,
            "y":3
         },{
            "x":6,
            "y":2
         },{
            "x":6,
            "y":1
         },{
            "x":6,
            "y":0
         },{
            "x":5,
            "y":0
         },{
            "x":4,
            "y":0
         },{
            "x":4,
            "y":1
         },{
            "x":4,
            "y":2
         },{
            "x":4,
            "y":3
         },{
            "x":4,
            "y":4
         },{
            "x":4,
            "y":5
         },{
            "x":4,
            "y":6
         },{
            "x":3,
            "y":6
         },{
            "x":2,
            "y":6
         },{
            "x":2,
            "y":5
         },{
            "x":2,
            "y":4
         },{
            "x":2,
            "y":3
         },{
            "x":2,
            "y":2
         },{
            "x":2,
            "y":1
         },{
            "x":2,
            "y":0
         },{
            "x":1,
            "y":0
         },{
            "x":0,
            "y":0
         },{
            "x":0,
            "y":1
         }];
         standArray2 = [{
            "x":7,
            "y":2
         },{
            "x":6,
            "y":2
         },{
            "x":6,
            "y":1
         },{
            "x":6,
            "y":0
         },{
            "x":5,
            "y":0
         },{
            "x":4,
            "y":0
         },{
            "x":3,
            "y":0
         },{
            "x":2,
            "y":0
         },{
            "x":1,
            "y":0
         },{
            "x":0,
            "y":0
         },{
            "x":0,
            "y":1
         },{
            "x":0,
            "y":2
         },{
            "x":0,
            "y":3
         },{
            "x":0,
            "y":4
         },{
            "x":0,
            "y":5
         },{
            "x":0,
            "y":6
         },{
            "x":0,
            "y":7
         },{
            "x":1,
            "y":7
         },{
            "x":2,
            "y":7
         },{
            "x":3,
            "y":7
         },{
            "x":4,
            "y":7
         },{
            "x":5,
            "y":7
         },{
            "x":6,
            "y":7
         },{
            "x":6,
            "y":6
         },{
            "x":6,
            "y":5
         },{
            "x":6,
            "y":4
         },{
            "x":5,
            "y":4
         },{
            "x":4,
            "y":4
         },{
            "x":4,
            "y":3
         },{
            "x":4,
            "y":2
         },{
            "x":3,
            "y":2
         },{
            "x":2,
            "y":2
         },{
            "x":2,
            "y":3
         },{
            "x":2,
            "y":4
         },{
            "x":2,
            "y":5
         },{
            "x":3,
            "y":5
         }];
         standArray3 = [{
            "x":8,
            "y":0
         },{
            "x":7,
            "y":0
         },{
            "x":6,
            "y":0
         },{
            "x":5,
            "y":0
         },{
            "x":4,
            "y":0
         },{
            "x":4,
            "y":1
         },{
            "x":4,
            "y":2
         },{
            "x":5,
            "y":2
         },{
            "x":6,
            "y":2
         },{
            "x":6,
            "y":3
         },{
            "x":6,
            "y":4
         },{
            "x":6,
            "y":5
         },{
            "x":6,
            "y":6
         },{
            "x":6,
            "y":7
         },{
            "x":5,
            "y":7
         },{
            "x":4,
            "y":7
         },{
            "x":3,
            "y":7
         },{
            "x":2,
            "y":7
         },{
            "x":1,
            "y":7
         },{
            "x":0,
            "y":7
         },{
            "x":0,
            "y":6
         },{
            "x":0,
            "y":5
         },{
            "x":0,
            "y":4
         },{
            "x":0,
            "y":3
         },{
            "x":0,
            "y":2
         },{
            "x":0,
            "y":1
         },{
            "x":0,
            "y":0
         },{
            "x":1,
            "y":0
         },{
            "x":2,
            "y":0
         },{
            "x":2,
            "y":1
         },{
            "x":2,
            "y":2
         },{
            "x":2,
            "y":3
         },{
            "x":2,
            "y":4
         },{
            "x":3,
            "y":4
         },{
            "x":4,
            "y":4
         },{
            "x":4,
            "y":5
         }];
         roadMapsList1 = [{
            "x":810,
            "y":5
         },{
            "x":732,
            "y":5
         },{
            "x":659,
            "y":5
         },{
            "x":665,
            "y":43
         },{
            "x":678,
            "y":83
         },{
            "x":693,
            "y":123
         },{
            "x":706,
            "y":164
         },{
            "x":717,
            "y":207
         },{
            "x":731,
            "y":259
         },{
            "x":639,
            "y":263
         },{
            "x":549,
            "y":259
         },{
            "x":541,
            "y":212
         },{
            "x":531,
            "y":165
         },{
            "x":525,
            "y":123
         },{
            "x":516,
            "y":83
         },{
            "x":510,
            "y":44
         },{
            "x":503,
            "y":7
         },{
            "x":425,
            "y":4
         },{
            "x":346,
            "y":4
         },{
            "x":345,
            "y":47
         },{
            "x":350,
            "y":86
         },{
            "x":355,
            "y":125
         },{
            "x":359,
            "y":169
         },{
            "x":365,
            "y":214
         },{
            "x":367,
            "y":262
         },{
            "x":279,
            "y":264
         },{
            "x":188,
            "y":265
         },{
            "x":185,
            "y":217
         },{
            "x":188,
            "y":172
         },{
            "x":189,
            "y":128
         },{
            "x":187,
            "y":84
         },{
            "x":188,
            "y":45
         },{
            "x":188,
            "y":8
         },{
            "x":113,
            "y":8
         },{
            "x":32,
            "y":8
         },{
            "x":28,
            "y":44
         }];
         roadMapsList2 = [{
            "x":740,
            "y":67
         },{
            "x":663,
            "y":67
         },{
            "x":648,
            "y":29
         },{
            "x":641,
            "y":-9
         },{
            "x":558,
            "y":-9
         },{
            "x":481,
            "y":-9
         },{
            "x":406,
            "y":-9
         },{
            "x":325,
            "y":-9
         },{
            "x":247,
            "y":-9
         },{
            "x":170,
            "y":-9
         },{
            "x":168,
            "y":29
         },{
            "x":168,
            "y":67
         },{
            "x":168,
            "y":108
         },{
            "x":168,
            "y":152
         },{
            "x":167,
            "y":196
         },{
            "x":164,
            "y":246
         },{
            "x":163,
            "y":295
         },{
            "x":258,
            "y":295
         },{
            "x":349,
            "y":295
         },{
            "x":442,
            "y":295
         },{
            "x":539,
            "y":295
         },{
            "x":629,
            "y":295
         },{
            "x":721,
            "y":295
         },{
            "x":704,
            "y":247
         },{
            "x":696,
            "y":198
         },{
            "x":683,
            "y":152
         },{
            "x":597,
            "y":152
         },{
            "x":507,
            "y":152
         },{
            "x":501,
            "y":107
         },{
            "x":496,
            "y":68
         },{
            "x":412,
            "y":68
         },{
            "x":332,
            "y":68
         },{
            "x":336,
            "y":109
         },{
            "x":338,
            "y":153
         },{
            "x":343,
            "y":198
         },{
            "x":434,
            "y":200
         }];
         roadMapsList3 = [{
            "x":789,
            "y":-16
         },{
            "x":719,
            "y":-16
         },{
            "x":638,
            "y":-16
         },{
            "x":561,
            "y":-16
         },{
            "x":478,
            "y":-16
         },{
            "x":490,
            "y":22
         },{
            "x":493,
            "y":62
         },{
            "x":573,
            "y":62
         },{
            "x":654,
            "y":62
         },{
            "x":670,
            "y":102
         },{
            "x":682,
            "y":144
         },{
            "x":691,
            "y":188
         },{
            "x":707,
            "y":235
         },{
            "x":719,
            "y":287
         },{
            "x":633,
            "y":287
         },{
            "x":535,
            "y":287
         },{
            "x":443,
            "y":287
         },{
            "x":351,
            "y":287
         },{
            "x":257,
            "y":287
         },{
            "x":165,
            "y":287
         },{
            "x":166,
            "y":235
         },{
            "x":169,
            "y":190
         },{
            "x":167,
            "y":141
         },{
            "x":166,
            "y":100
         },{
            "x":167,
            "y":60
         },{
            "x":167,
            "y":19
         },{
            "x":168,
            "y":-16
         },{
            "x":243,
            "y":-16
         },{
            "x":327,
            "y":-16
         },{
            "x":328,
            "y":22
         },{
            "x":330,
            "y":62
         },{
            "x":333,
            "y":100
         },{
            "x":338,
            "y":145
         },{
            "x":432,
            "y":145
         },{
            "x":508,
            "y":145
         },{
            "x":525,
            "y":192
         }];
         itemMaps1 = "0,0,0,1,0,0,0,1,0,0,0,0,1,0,1,0,1,0,1,0,1,1,1,1,0,1,0,1,0,1,0,1,1,1,1,0,1,0,1,0,1,0,1,1,1,1,0,1,0,1,0,1,0,1,1,1,1,0,1,0,1,0,1,0,1,1,1,1,0,0,0,1,0,0,0,1,1";
         itemMaps2 = "0,0,0,0,0,0,0,1,0,1,1,1,1,1,0,1,0,1,0,0,0,1,0,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,0,1,0,1,0,0,1,1,0,1,0,1,1,1,1,1,0,1,0,0,0,0,0,0,0,1";
         itemMaps3 = "0,0,0,1,0,0,0,0,0,0,1,0,1,0,1,1,1,1,0,1,0,1,0,0,0,1,1,0,1,0,1,1,1,0,1,1,0,1,0,0,0,1,0,1,1,0,1,1,1,0,1,0,1,1,0,1,1,1,1,1,0,1,1,0,0,0,0,0,0,0,1,1";
      }
   }
}
