package wantstrong.model
{
   import com.pickgliss.ui.core.Disposeable;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   import wantstrong.WantStrongManager;
   import wantstrong.data.WantStrongMenuData;
   
   public class WantStrongModel extends EventDispatcher implements Disposeable
   {
       
      
      private var _data:Dictionary;
      
      private var _activeId:int = 1;
      
      private var _titleArr1:Array;
      
      private var _titleArr2:Array;
      
      private var _titleArr3:Array;
      
      private var _titleArr4:Array;
      
      private var _titleArr5:Array;
      
      private var _descriptionArr1:Array;
      
      private var _descriptionArr2:Array;
      
      private var _descriptionArr3:Array;
      
      private var _descriptionArr4:Array;
      
      private var _descriptionArr5:Array;
      
      private var _starArr1:Array;
      
      private var _starArr2:Array;
      
      private var _starArr3:Array;
      
      private var _starArr4:Array;
      
      private var _starArr5:Array;
      
      private var _iconArr1:Array;
      
      private var _iconArr2:Array;
      
      private var _iconArr3:Array;
      
      private var _iconArr4:Array;
      
      private var _iconArr5:Array;
      
      private var _needLevelArr1:Array;
      
      private var _needLevelArr2:Array;
      
      private var _needLevelArr3:Array;
      
      private var _needLevelArr4:Array;
      
      private var _needLevelArr5:Array;
      
      private var _idArr1:Array;
      
      private var _idArr2:Array;
      
      private var _idArr3:Array;
      
      private var _idArr4:Array;
      
      private var _idArr5:Array;
      
      private var _bossTypeDic:Dictionary;
      
      public function WantStrongModel(param1:IEventDispatcher = null){super(null);}
      
      public function get bossTypeDic() : Dictionary{return null;}
      
      public function initFindBackData() : void{}
      
      public function initData() : void{}
      
      public function changeActiveId(param1:int) : void{}
      
      public function get data() : Dictionary{return null;}
      
      public function get activeId() : int{return 0;}
      
      public function set activeId(param1:int) : void{}
      
      public function dispose() : void{}
   }
}
