package gameCommon.view.experience
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class ExpResultSeal extends Sprite implements Disposeable
   {
      
      public static const WIN:String = "win";
      
      public static const LOSE:String = "lose";
       
      
      private var _luckyShapes:Vector.<DisplayObject>;
      
      private var _luckyExp:Boolean;
      
      private var _luckyOffer:Boolean;
      
      private var _bitmap:Bitmap;
      
      private var _starMc:MovieClip;
      
      private var _effectMc:MovieClip;
      
      private var _result:String;
      
      public function ExpResultSeal(param1:String = "lose", param2:Boolean = false, param3:Boolean = false)
      {
         _luckyShapes = new Vector.<DisplayObject>();
         super();
         _result = param1;
         _luckyExp = param2;
         _luckyOffer = param3;
         init();
      }
      
      protected function init() : void
      {
         var _loc2_:int = 0;
         PositionUtils.setPos(this,"experience.ResultSealPos");
         if(_result == "win")
         {
            _bitmap = ComponentFactory.Instance.creatBitmap("asset.experience.rightViewWin");
            _starMc = ComponentFactory.Instance.creat("experience.WinStar");
            _effectMc = ComponentFactory.Instance.creat("experience.WinEffectLight");
            addChild(_starMc);
            addChildAt(_effectMc,0);
         }
         else
         {
            _bitmap = ComponentFactory.Instance.creatBitmap("asset.experience.rightViewLose");
         }
         addChild(_bitmap);
         if(_luckyExp)
         {
            _luckyShapes.push(ComponentFactory.Instance.creat("asset.expView.LuckyExp"));
         }
         if(_luckyOffer)
         {
            _luckyShapes.push(ComponentFactory.Instance.creat("asset.expView.LuckyOffer"));
         }
         var _loc1_:Point = ComponentFactory.Instance.creat("experience.ResultSealLuckyLeft");
         _loc2_ = 0;
         while(_loc2_ < _luckyShapes.length)
         {
            _luckyShapes[_loc2_].x = _loc1_.x + _loc2_ * 124;
            addChild(_luckyShapes[_loc2_]);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         if(_starMc && _starMc.parent)
         {
            _starMc.parent.removeChild(_starMc);
         }
         if(_effectMc && _effectMc.parent)
         {
            _effectMc.parent.removeChild(_effectMc);
         }
         _starMc = null;
         _effectMc = null;
         if(_bitmap)
         {
            ObjectUtils.disposeObject(_bitmap);
            _bitmap = null;
         }
         if(parent)
         {
            parent.removeChild(this);
         }
         var _loc1_:DisplayObject = _luckyShapes.shift();
         while(_loc1_ != null)
         {
            ObjectUtils.disposeObject(_loc1_);
            _loc1_ = _luckyShapes.shift();
         }
      }
   }
}
