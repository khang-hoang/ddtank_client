package happyLittleGame.rank.items
{
   import bagAndInfo.cell.BaseCell;
   import bagAndInfo.cell.CellFactory;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.PlayerManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import uiModeManager.bombUI.model.rank.HappyMiniGameRankData;
   
   public class SimpleGameRankItem extends Sprite implements Disposeable
   {
       
      
      private var _bg:ScaleFrameImage;
      
      private var _index:uint;
      
      private var _topThreeIcon:ScaleFrameImage;
      
      private var _rankTxt:FilterFrameText;
      
      private var _playerNameTxt:FilterFrameText;
      
      private var _serverNameTxt:FilterFrameText;
      
      private var _scoreTxt:FilterFrameText;
      
      private var _itemCell:BaseCell;
      
      private var _shine:Scale9CornerImage;
      
      public function SimpleGameRankItem(param1:uint){super();}
      
      private function initItem() : void{}
      
      private function createItemCell() : BaseCell{return null;}
      
      public function dispose() : void{}
      
      public function clear() : void{}
      
      public function set data(param1:HappyMiniGameRankData) : void{}
   }
}
