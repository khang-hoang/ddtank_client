package floatParade.views
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import floatParade.FloatParadeManager;
   
   public class FloatParadeRankCell extends Sprite implements Disposeable
   {
       
      
      private var _rankTxt:FilterFrameText;
      
      private var _nameTxt1:FilterFrameText;
      
      private var _nameTxt2:FilterFrameText;
      
      private var _rateTxt:FilterFrameText;
      
      public function FloatParadeRankCell(param1:int)
      {
         super();
         _rankTxt = ComponentFactory.Instance.creatComponentByStylename("floatParade.rankView.cellTxt");
         _rankTxt.text = (param1 + 1).toString();
         _nameTxt1 = ComponentFactory.Instance.creatComponentByStylename("floatParade.rankView.cellTxt");
         _nameTxt1.text = "-------";
         PositionUtils.setPos(_nameTxt1,"floatParade.rankView.cellNameTxtPos");
         _nameTxt2 = ComponentFactory.Instance.creatComponentByStylename("floatParade.rankView.cellNameTxt");
         _nameTxt2.visible = false;
         _rateTxt = ComponentFactory.Instance.creatComponentByStylename("floatParade.rankView.cellTxt");
         _rateTxt.text = String(1 + FloatParadeManager.instance.rankAddInfo[param1] / 100);
         PositionUtils.setPos(_rateTxt,"floatParade.rankView.cellRateTxtPos");
         addChild(_rankTxt);
         addChild(_nameTxt1);
         addChild(_nameTxt2);
         addChild(_rateTxt);
      }
      
      public function setName(param1:String, param2:int, param3:Boolean) : void
      {
         _nameTxt2.text = param1;
         if(param2 == 3)
         {
            _nameTxt2.textColor = 710173;
         }
         else if(param3)
         {
            _nameTxt2.textColor = 52479;
         }
         else
         {
            _nameTxt2.textColor = 16711680;
         }
         _nameTxt2.visible = true;
         _nameTxt1.visible = false;
      }
      
      public function dispose() : void
      {
         ObjectUtils.disposeAllChildren(this);
         _rankTxt = null;
         _nameTxt1 = null;
         _nameTxt2 = null;
         _rateTxt = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
