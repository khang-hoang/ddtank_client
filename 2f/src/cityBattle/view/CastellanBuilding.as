package cityBattle.view
{
   import cityBattle.CityBattleManager;
   import cityBattle.data.CastellanInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import ddt.view.character.CharactoryFactory;
   import ddt.view.character.RoomCharacter;
   import ddt.view.tips.OneLineTip;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class CastellanBuilding extends Sprite implements Disposeable
   {
       
      
      private var building:MovieClip;
      
      private var control:MovieClip;
      
      private var _character:RoomCharacter;
      
      private var _tip:OneLineTip;
      
      private var _cityName:Bitmap;
      
      public function CastellanBuilding(param1:int){super();}
      
      private function overHandler(param1:MouseEvent) : void{}
      
      private function outHandler(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
