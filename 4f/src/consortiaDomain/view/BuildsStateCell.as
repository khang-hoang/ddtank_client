package consortiaDomain.view
{
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.utils.ObjectUtils;
   import consortiaDomain.ConsortiaDomainManager;
   import consortiaDomain.EachBuildInfo;
   import ddt.manager.LanguageMgr;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import road7th.StarlingMain;
   import starling.scene.consortiaDomain.PlayerView;
   
   public class BuildsStateCell extends Sprite implements Disposeable
   {
       
      
      private var _buildId:int;
      
      private var _tf:TextField;
      
      private var _tfSp:Sprite;
      
      private var _defaultTextFormat:TextFormat;
      
      private var _icon:Image;
      
      private var _state:int = -1;
      
      public function BuildsStateCell(param1:int){super();}
      
      private function onChange(param1:Event) : void{}
      
      private function onClick(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
