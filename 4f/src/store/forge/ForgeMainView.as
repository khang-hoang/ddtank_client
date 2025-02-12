package store.forge
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.core.ITipedDisplay;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpBtnEnable;
   import ddt.utils.HelperUIModuleLoad;
   import ddt.utils.PositionUtils;
   import enchant.view.EnchantMainView;
   import equipretrieve.RetrieveFrame;
   import equipretrieve.RetrieveModel;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import gemstone.GemstoneFrame;
   import gemstone.GemstoneManager;
   import latentEnergy.LatentEnergyMainView;
   import store.forge.wishBead.WishBeadMainView;
   
   public class ForgeMainView extends Sprite implements Disposeable
   {
       
      
      private var _tabVbox:VBox;
      
      private var _tabSBG:SelectedButtonGroup;
      
      private var _tabSBList:Vector.<SelectedButton>;
      
      private var _bg:MovieClip;
      
      private var _rightBgView:ForgeRightBgView;
      
      private var _latentEnergyView:LatentEnergyMainView;
      
      private var _wishBeadView:WishBeadMainView;
      
      private var _retrieveView:RetrieveFrame;
      
      private var _gemstoneFrame:GemstoneFrame;
      
      private var _enchantFrame:EnchantMainView;
      
      private var _initIndex:int = 0;
      
      private var _openGradeList:Vector.<int>;
      
      public function ForgeMainView(param1:int){super();}
      
      private function onloadComplete() : void{}
      
      private function setIndex() : void{}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function clickHandler(param1:MouseEvent) : void{}
      
      private function changeHandler(param1:Event) : void{}
      
      override public function set visible(param1:Boolean) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
