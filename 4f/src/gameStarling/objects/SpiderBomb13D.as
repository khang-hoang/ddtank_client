package gameStarling.objects
{
   import ddt.manager.SoundManager;
   import flash.utils.setTimeout;
   import gameCommon.model.Bomb;
   import gameCommon.model.Living;
   import gameStarling.view.map.MapView3D;
   
   public class SpiderBomb13D extends SimpleBomb3D
   {
       
      
      private var tempChilds:Array;
      
      private var tempMap:MapView3D;
      
      public function SpiderBomb13D(param1:Bomb, param2:Living, param3:int = 0, param4:Boolean = false){super(null,null,null,null);}
      
      override public function bomb() : void{}
      
      private function forCreate() : void{}
      
      private function createBomb(param1:Bomb) : void{}
      
      override protected function isPillarCollide() : Boolean{return false;}
   }
}
