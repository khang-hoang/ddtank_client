package cityBattle.view
{
   import cityBattle.CityBattleManager;
   import cityBattle.data.ContentionInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Sprite;
   
   public class ContentionTable extends Sprite implements Disposeable
   {
       
      
      private var _side:int;
      
      private var _vbox:VBox;
      
      private var _rankTxt:FilterFrameText;
      
      private var _nameTxt:FilterFrameText;
      
      private var _scoreTxt:FilterFrameText;
      
      public function ContentionTable(param1:int){super();}
      
      public function dispose() : void{}
   }
}

import cityBattle.data.ContentionInfo;
import com.pickgliss.ui.ComponentFactory;
import com.pickgliss.ui.FilterFrameTextWithTips;
import com.pickgliss.ui.core.Disposeable;
import com.pickgliss.ui.text.FilterFrameText;
import com.pickgliss.utils.ObjectUtils;
import flash.display.Sprite;

class ContentionItem extends Sprite implements Disposeable
{
    
   
   private var _rankTxt:FilterFrameText;
   
   private var _nameTxt:FilterFrameTextWithTips;
   
   private var _scoreTxt:FilterFrameText;
   
   function ContentionItem(param1:ContentionInfo){super();}
   
   public function dispose() : void{}
}
