package gemstone.views
{
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SoundManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import gemstone.GemstoneManager;
   import gemstone.info.GemstListInfo;
   import gemstone.info.GemstonInitInfo;
   import gemstone.info.GemstoneStaticInfo;
   import gemstone.info.GemstoneUpGradeInfo;
   import gemstone.items.GemstoneContent;
   import gemstone.items.Item;
   import org.aswing.KeyboardManager;
   
   public class GemstoneCriView extends Sprite implements Disposeable
   {
      
      private static const ANGLE_P1:int = 90;
      
      private static const ANGLE_P2:int = 210;
      
      private static const ANGLE_P3:int = 330;
      
      private static const RADIUS:int = 38;
       
      
      public var data:GemstonInitInfo;
      
      private var _staticDataList:Vector.<GemstoneStaticInfo>;
      
      public var place:int;
      
      private var _contArray:Vector.<GemstoneContent>;
      
      private var _centerP:Point;
      
      private var _item:Item;
      
      private var _point1:Point;
      
      private var _point2:Point;
      
      private var _point3:Point;
      
      private var _pointArray:Array;
      
      private var _startPointArr:Array;
      
      private var _funArray:Array;
      
      private var _func1:Function;
      
      private var _func2:Function;
      
      private var _func3:Function;
      
      private var _lightning:MovieClip;
      
      private var _bombo:MovieClip;
      
      private var _groudMc:MovieClip;
      
      private var _upGradeMc:MovieClip;
      
      private var _isLeft:Boolean = false;
      
      private var _index:int;
      
      private var _minGemstone:Array;
      
      private var _midGemstone:Array;
      
      private var _maxGemstone:Array;
      
      private var _curItem:GemstoneContent;
      
      public var curIndex:int;
      
      public var curInfo:GemstListInfo;
      
      public var curList:Vector.<GemstListInfo>;
      
      private var _info:GemstoneUpGradeInfo;
      
      private var _isAction:Boolean;
      
      private var curInfoList:Vector.<GemstListInfo>;
      
      private var PRICE:int = 10;
      
      private var _bgGoldenShiningAnimation:MovieClip;
      
      private const MAX_LEVEL:int = 6;
      
      public function GemstoneCriView(){super();}
      
      public function upDataIcon(param1:ItemTemplateInfo) : void{}
      
      public function initFigSkin(param1:String) : void{}
      
      public function resetGemstoneList(param1:Vector.<GemstListInfo>) : void{}
      
      public function updateContentBG() : void{}
      
      public function changeGhostColorAnimationPlay() : void{}
      
      private function isAllGoden(param1:Boolean) : void{}
      
      private function setCurInfo(param1:int, param2:int) : void{}
      
      public function upGradeAction(param1:GemstoneUpGradeInfo) : void{}
      
      private function startUpGradeAnimation() : void{}
      
      private function init() : void{}
      
      public function gemstoAction() : void{}
      
      private function completedHander1() : void{}
      
      private function lightningPlay() : void{}
      
      private function enterframeHander(param1:Event) : void{}
      
      private function completedHander2() : void{}
      
      private function completedHander3() : void{}
      
      public function dispose() : void{}
      
      public function get staticDataList() : Vector.<GemstoneStaticInfo>{return null;}
      
      public function set staticDataList(param1:Vector.<GemstoneStaticInfo>) : void{}
   }
}
