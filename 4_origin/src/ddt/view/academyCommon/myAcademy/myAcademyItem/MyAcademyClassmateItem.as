package ddt.view.academyCommon.myAcademy.myAcademyItem
{
   import com.pickgliss.ui.core.Disposeable;
   
   public class MyAcademyClassmateItem extends MyAcademyMasterItem implements Disposeable
   {
       
      
      public function MyAcademyClassmateItem()
      {
         super();
      }
      
      override protected function initComponent() : void
      {
         _removeBtn.visible = false;
         _addFriend.visible = true;
         _offLineText.visible = true;
         _sexIcon.visible = false;
      }
   }
}
