package wonderfulActivity.newActivity.AnnouncementAct
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import wonderfulActivity.data.GmActivityInfo;
   
   public class AnnouncementDetailView extends Sprite implements Disposeable
   {
       
      
      private var _timeField:FilterFrameText;
      
      private var _awardField:FilterFrameText;
      
      private var _contentField:FilterFrameText;
      
      private var _timeTitle:FilterFrameText;
      
      private var _awardTitle:FilterFrameText;
      
      private var _contentTitle:FilterFrameText;
      
      private var _timeWidth:int;
      
      private var _awardWidth:int;
      
      private var _contentWidth:int;
      
      private var _time:DisplayObject;
      
      private var _award:DisplayObject;
      
      private var _content:DisplayObject;
      
      private var _input:DisplayObject;
      
      private var _lines:Vector.<DisplayObject>;
      
      private var _hasKey:int;
      
      private var _activityInfo:GmActivityInfo;
      
      public function AnnouncementDetailView(){super();}
      
      private function initView() : void{}
      
      public function setData(param1:GmActivityInfo) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
