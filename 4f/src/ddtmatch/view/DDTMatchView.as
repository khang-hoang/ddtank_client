package ddtmatch.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PathManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.utils.PositionUtils;
   import ddtmatch.manager.DDTMatchManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import road7th.comm.PackageIn;
   
   public class DDTMatchView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _watchGameBtn:SimpleBitmapButton;
      
      private var _activityTxt:FilterFrameText;
      
      private var _costMoneyTxt:FilterFrameText;
      
      private var _listPanel:ScrollPanel;
      
      private var _listTeamPanel:ScrollPanel;
      
      private var _vBox:VBox;
      
      private var _vBoxTeam:VBox;
      
      private var _cellVec:Vector.<DDTMatchBuyCell>;
      
      private var _cellTeamVec:Vector.<DDTMatchBuyCell>;
      
      private var countryList:Array;
      
      private var moneyList:Array;
      
      public function DDTMatchView(){super();}
      
      private function initView() : void{}
      
      private function addEvent() : void{}
      
      protected function __matchInfoHandler(param1:CrazyTankSocketEvent) : void{}
      
      private function _watchGameBtnClickHandler(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}

import bagAndInfo.cell.BagCell;
import com.pickgliss.ui.ComponentFactory;
import com.pickgliss.ui.text.FilterFrameText;
import com.pickgliss.utils.ObjectUtils;
import ddt.data.goods.ItemTemplateInfo;
import ddt.manager.LanguageMgr;

class ScoreCell extends BagCell
{
    
   
   private var _scoreTxt:FilterFrameText;
   
   function ScoreCell(param1:int = 0, param2:ItemTemplateInfo = null, param3:Boolean = true){super(null,null,null);}
   
   public function setScore(param1:int) : void{}
   
   override public function dispose() : void{}
}
