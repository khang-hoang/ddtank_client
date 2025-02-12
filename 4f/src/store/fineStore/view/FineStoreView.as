package store.fineStore.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.core.ITipedDisplay;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.AssetModuleLoader;
   import ddt.utils.HelpBtnEnable;
   import ddt.utils.PositionUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import store.FineBringUpController;
   import store.StoreController;
   import store.fineStore.view.pageBringUp.FineBringUpView;
   import store.fineStore.view.pageBringUp.evolution.FineEvolutionView;
   import store.fineStore.view.pageForge.FineForgeView;
   
   public class FineStoreView extends Sprite implements Disposeable
   {
      
      private static const _forgeGroupType:Array = ["storeFineForge","storeFineBringUp","equipGhost","storeFineForge"];
       
      
      private var _tabVbox:VBox;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var _forgeBtn:SelectedButton;
      
      private var _forgeView:FineForgeView;
      
      private var _bringUpBtn:SelectedButton;
      
      private var _bringUpView:FineBringUpView;
      
      private var _evolutionBtn:SelectedButton;
      
      private var _evolutionView:FineEvolutionView;
      
      private var _ghostBtn:SelectedButton;
      
      private var _ghostView:FineGhostView;
      
      private var _content:Sprite;
      
      private var _index:int;
      
      private var _controller:StoreController;
      
      public function FineStoreView(param1:StoreController){super();}
      
      private function setIndex() : void{}
      
      private function init() : void{}
      
      private function __changeHandler(param1:Event) : void{}
      
      private function showView() : void{}
      
      public function dispose() : void{}
   }
}
