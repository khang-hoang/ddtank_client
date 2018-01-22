package gemstone.items
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class ExpBar extends Sprite implements Disposeable
   {
       
      
      protected var _groudPic:Bitmap;
      
      protected var _curPic:Bitmap;
      
      protected var _curPicContent:Sprite;
      
      private var _totalLen:int;
      
      protected var _expBarTxt:FilterFrameText;
      
      protected var _maskMC:Sprite;
      
      private var _per:Number = 0;
      
      public var curNum:int = 0;
      
      public var totalNum:int = 0;
      
      public var id:int;
      
      public var stylename:String;
      
      protected var _oldX:int;
      
      private var _totalViewWidth:int;
      
      public function ExpBar()
      {
         super();
         initView();
      }
      
      public function initView() : void
      {
         _groudPic = ComponentFactory.Instance.creatBitmap("gemstone.expBack");
         addChild(_groudPic);
         _curPic = ComponentFactory.Instance.creatBitmap("gemstone.expFrome");
         addChild(_curPic);
         _expBarTxt = ComponentFactory.Instance.creatComponentByStylename("expBarTxt");
         _expBarTxt.text = "0";
         addChild(_expBarTxt);
         _maskMC = new Sprite();
         _maskMC.graphics.beginFill(0);
         _maskMC.graphics.drawRect(5,1,211,_groudPic.height);
         _maskMC.graphics.endFill();
         addChild(_maskMC);
         _maskMC.alpha = 0.2;
         _curPic.mask = _maskMC;
         _oldX = _curPic.x;
         var _loc1_:int = _oldX;
         var _loc2_:int = _maskMC.width + _oldX;
         _totalViewWidth = _loc2_ - _loc1_;
      }
      
      public function beginChanges() : void
      {
      }
      
      public function commitChanges() : void
      {
      }
      
      public function initBar(param1:int, param2:int, param3:Boolean = false) : void
      {
         totalNum = param2;
         if(param3)
         {
            _curPic.x = _oldX;
            _expBarTxt.text = "0/0";
            return;
         }
         if(param1 == 0)
         {
            _curPic.x = _oldX;
            _expBarTxt.text = String(param1) + "/" + param2;
            return;
         }
         if(_curPic.x != _oldX)
         {
            _curPic.x = _oldX;
         }
         _expBarTxt.text = String(param1) + "/" + param2;
         curNum = param1;
         _per = curNum / totalNum;
         _curPic.x = _curPic.x + _per * (_groudPic.width - 10);
      }
      
      public function upData(param1:int) : void
      {
         curNum = curNum + param1;
         _per = Number(curNum / totalNum);
         _per > 1 && 1;
         _expBarTxt.text = String(curNum);
         _curPic.x = _oldX + _per * _totalViewWidth;
         _expBarTxt.text = curNum.toString() + "/" + totalNum.toString();
      }
      
      public function dispose() : void
      {
         while(numChildren)
         {
            ObjectUtils.disposeObject(getChildAt(0));
         }
         _groudPic = null;
         _curPic = null;
         _curPicContent = null;
         _expBarTxt = null;
         _maskMC = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
