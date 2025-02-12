package AvatarCollection.view
{
   import AvatarCollection.data.AvatarCollectionItemVo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   
   public class AvatarCollectionItemTip extends BaseTip
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _line:ScaleBitmapImage;
      
      private var _titleTxt:FilterFrameText;
      
      private var _typeNameTxt:FilterFrameText;
      
      private var _typeValueTxt:FilterFrameText;
      
      private var _activityStatusTxt:FilterFrameText;
      
      private var _needMoneyTxt:FilterFrameText;
      
      private var _placeTxt:FilterFrameText;
      
      private var _notActivityTxt:FilterFrameText;
      
      private var _tempData:AvatarCollectionItemVo;
      
      private var _activityTxtList:Array;
      
      private var _placeTxtList:Array;
      
      public function AvatarCollectionItemTip(){super();}
      
      override protected function init() : void{}
      
      override public function get tipData() : Object{return null;}
      
      override public function set tipData(param1:Object) : void{}
      
      override public function get width() : Number{return 0;}
      
      override public function get height() : Number{return 0;}
      
      override public function dispose() : void{}
   }
}
