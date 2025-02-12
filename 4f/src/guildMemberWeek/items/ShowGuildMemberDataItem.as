package guildMemberWeek.items
{
   import bagAndInfo.cell.BaseCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.geom.Point;
   import guildMemberWeek.manager.GuildMemberWeekManager;
   
   public class ShowGuildMemberDataItem extends Sprite implements Disposeable
   {
       
      
      private var _RankingBitmp:ScaleFrameImage;
      
      private var _RankingText:FilterFrameText;
      
      private var _MemberNameText:FilterFrameText;
      
      private var _MemberContributeText:FilterFrameText;
      
      private var _AddRankingText:FilterFrameText;
      
      private var _AddRankingBtn:BaseButton;
      
      private var _AddRankingSprite:Sprite;
      
      private var _AddRankingBg:Bitmap;
      
      private var _itemCells:Array;
      
      public var Count:int = 1;
      
      private var _templateInfo:ItemTemplateInfo;
      
      public function ShowGuildMemberDataItem(){super();}
      
      public function GetTemplateInfo(param1:int) : ItemTemplateInfo{return null;}
      
      public function initView(param1:int) : void{}
      
      protected function creatItemCell() : BaseCell{return null;}
      
      public function initMember(param1:String, param2:String) : void{}
      
      public function initAddPointBook(param1:int) : void{}
      
      public function initItemCell(param1:String) : void{}
      
      private function disposeItemCell() : void{}
      
      public function dispose() : void{}
   }
}
