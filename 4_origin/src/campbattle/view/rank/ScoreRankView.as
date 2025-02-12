package campbattle.view.rank
{
   import campbattle.CampBattleControl;
   import campbattle.event.MapEvent;
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ScoreRankView extends Sprite implements Disposeable
   {
       
      
      private var _backBtn:MovieClip;
      
      private var _rankSprite:Sprite;
      
      private var _rankListBg:MovieClip;
      
      private var _rankBtn:SimpleBitmapButton;
      
      private var _itemList:Vector.<CampRankItem>;
      
      private var _isOut:Boolean;
      
      private var _capList:Array;
      
      public function ScoreRankView()
      {
         _capList = [LanguageMgr.GetTranslation("ddt.campBattle.qinglong"),LanguageMgr.GetTranslation("ddt.campBattle.baihu"),LanguageMgr.GetTranslation("ddt.campBattle.zhuque"),LanguageMgr.GetTranslation("ddt.campBattle.xuanwu")];
         super();
         initView();
         initEvent();
      }
      
      private function initView() : void
      {
         _backBtn = ComponentFactory.Instance.creat("asset.map.outIn");
         _backBtn.buttonMode = true;
         _backBtn.gotoAndStop(2);
         addChild(_backBtn);
         _rankSprite = new Sprite();
         addChild(_rankSprite);
         _rankListBg = ComponentFactory.Instance.creat("camp.battle.rankList");
         _rankSprite.addChild(_rankListBg);
         _rankBtn = ComponentFactory.Instance.creatComponentByStylename("ddtCampBattle.rankBtn");
         _rankSprite.addChild(_rankBtn);
         addRankItem();
         upDateRankList(CampBattleControl.instance.model.scoreList);
      }
      
      private function addRankItem() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _itemList = new Vector.<CampRankItem>();
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc1_ = new CampRankItem();
            _loc1_.tipData = _capList[_loc2_];
            _loc1_.y = 32 * _loc2_ - 32;
            _loc1_.x = 109;
            addChild(_loc1_);
            _itemList.push(_loc1_);
            _loc2_++;
         }
      }
      
      private function initEvent() : void
      {
         _backBtn.addEventListener("click",__onClickHander);
         _rankBtn.addEventListener("click",__onRankBtnClick);
         CampBattleControl.instance.addEventListener("camp_score_rank",__onUpdateScore);
      }
      
      private function __onUpdateScore(param1:MapEvent) : void
      {
         upDateRankList(CampBattleControl.instance.model.scoreList);
      }
      
      private function upDateRankList(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            _loc2_ = Math.min(param1.length,_itemList.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _itemList[_loc3_].setItemTxt(param1[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      private function __onRankBtnClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         SoundManager.instance.playButtonSound();
         SocketManager.Instance.out.requestPRankList();
      }
      
      private function __onClickHander(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         SoundManager.instance.playButtonSound();
         if(_isOut)
         {
            TweenLite.to(this,1,{"x":x - _rankSprite.width});
            _backBtn.gotoAndStop(2);
         }
         else
         {
            TweenLite.to(this,1,{"x":x + _rankSprite.width});
            _backBtn.gotoAndStop(1);
         }
         _isOut = !_isOut;
         SocketManager.Instance.out.requestCRankList();
      }
      
      private function removeEvent() : void
      {
         _backBtn.removeEventListener("click",__onClickHander);
         _rankBtn.removeEventListener("click",__onRankBtnClick);
         CampBattleControl.instance.removeEventListener("camp_score_rank",__onUpdateScore);
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         removeEvent();
         if(_backBtn)
         {
            ObjectUtils.disposeObject(_backBtn);
         }
         _backBtn = null;
         if(_rankListBg)
         {
            ObjectUtils.disposeObject(_rankListBg);
         }
         _rankListBg = null;
         if(_rankBtn)
         {
            ObjectUtils.disposeObject(_rankBtn);
         }
         _rankBtn = null;
         if(_itemList)
         {
            _loc1_ = 0;
            while(_loc1_ < _itemList.length)
            {
               if(_itemList[_loc1_])
               {
                  ObjectUtils.disposeObject(_itemList[_loc1_]);
               }
               _itemList[_loc1_] = null;
               _loc1_++;
            }
            _itemList.length = 0;
            _itemList = null;
         }
      }
   }
}
