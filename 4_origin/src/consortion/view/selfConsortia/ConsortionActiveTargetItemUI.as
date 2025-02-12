package consortion.view.selfConsortia
{
   import morn.core.components.Box;
   import morn.core.components.Label;
   import morn.core.components.LinkButton;
   import morn.core.components.View;
   
   public class ConsortionActiveTargetItemUI extends View
   {
      
      protected static var uiView:XML = <View width="242" height="118">
			  <Box x="0" y="0">
				<Label styleSkin="png.comp.label" layer="1" text="Mục Tiêu Năng Động Lv1" size="11" color="0xffecc2" bold="false" stroke="0x693801,2,2,5" x="15" y="2" var="lablLevel" font="Arial"/>
				<Label styleSkin="png.comp.label" layer="1" text="︽ " size="12" color="0xffecc2" bold="true" stroke="0x693801,2,2,5" x="0" y="0" var="labOpenStatus"/>
				<Label styleSkin="png.comp.label" layer="1" text="（已完成）" size="11" color="0xffba00" bold="true" stroke="0x693801,2,2,5" x="148" y="2" var="lablFinish" width="114" height="18" autoSize="none" font="Arial"/>
				<LinkButton label="Nhận phần thưởng" styleSkin="png.comp.linkbutton" x="3" y="17" layer="1" labelColors="0x03ee0e" labelSize="11" labelStroke="0x065900,2,2,5" var="lnkBtnReward" labelFont="Arial"/>
				<Label styleSkin="png.comp.label" layer="1" text="（未激活）" size="11" color="0xc5b9a1" bold="true" stroke="0x452501,2,2,5" x="148" y="2" var="labUnactive" width="116" height="18" autoSize="none" font="Arial"/>
				<Label styleSkin="png.comp.label" layer="1" text="(Đang tiến hành)" size="11" color="0xffecc2" bold="true" stroke="0x693801,2,2,5" x="148" y="2" var="lablProcess" width="120" height="16" autoSize="none" font="Arial"/>
			  </Box>
			  <Box x="14" y="24" var="boxContent">
				<Label text="· Hoàn thành {0} lần sứ mệnh Guild" styleSkin="png.comp.label" layer="1" color="0xffe43b" size="11" stroke="0x542903,2,2,5" var="lablComplete1" font="Arial"/>
				<Label text="· Hoàn thành {0} lần sứ mệnh Guild" styleSkin="png.comp.label" layer="1" color="0xeac693" size="11" stroke="0x542903,2,2,5" var="lablUncomplete1" width="249" height="18" font="Arial"/>
				<Label text="· Số thành viên Guild online cùng lúc trên 30 người (0/30)" styleSkin="png.comp.label" layer="1" color="0xeac693" size="11" stroke="0x542903,2,2,5" y="21" var="lablUncomplete2" autoSize="none" width="249" height="36" font="Arial" wordWrap="true" x="0"/>
				<Label text="Hoàn thành {0} lần sứ mệnh Guild" styleSkin="png.comp.label" layer="1" color="0xeac693" size="11" stroke="0x542903,2,2,5" y="58" var="lablUncomplete3" font="Arial"/>
				<Label text="Hoàn thành {0} lần sứ mệnh Guild" styleSkin="png.comp.label" layer="1" color="0xffe43b" size="11" stroke="0x542903,2,2,5" y="58" var="lablComplete3" width="244" height="18" font="Arial"/>
				<Label text="Hoàn thành {0} lần sứ mệnh Guild" styleSkin="png.comp.label" layer="1" color="0xeac693" size="11" stroke="0x542903,2,2,5" y="82" var="lablUncomplete4" font="Arial"/>
				<Label text="Hoàn thành {0} lần sứ mệnh Guild" styleSkin="png.comp.label" layer="1" color="0xffe43b" size="11" stroke="0x542903,2,2,5" y="82" var="lablComplete4" width="242" height="18" font="Arial"/>
				<Label text="· Số thành viên Guild online cùng lúc trên 30 người (0/30)" styleSkin="png.comp.label" layer="1" color="0xffe43b" size="11" stroke="0x542903,2,2,5" y="21" var="lablComplete2" width="247" height="37" font="Arial" autoSize="none" wordWrap="true" x="0"/>
			  </Box>
			</View>;
       
      
      public var lablLevel:Label = null;
      
      public var labOpenStatus:Label = null;
      
      public var lablFinish:Label = null;
      
      public var lnkBtnReward:LinkButton = null;
      
      public var labUnactive:Label = null;
      
      public var lablProcess:Label = null;
      
      public var boxContent:Box = null;
      
      public var lablComplete1:Label = null;
      
      public var lablUncomplete1:Label = null;
      
      public var lablUncomplete2:Label = null;
      
      public var lablComplete2:Label = null;
      
      public var lablUncomplete3:Label = null;
      
      public var lablComplete3:Label = null;
      
      public var lablUncomplete4:Label = null;
      
      public var lablComplete4:Label = null;
      
      public function ConsortionActiveTargetItemUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         createView(uiView);
      }
   }
}
