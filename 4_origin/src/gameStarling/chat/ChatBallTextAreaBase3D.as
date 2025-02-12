package gameStarling.chat
{
   import com.pickgliss.utils.StarlingObjectUtils;
   import flash.text.TextFormat;
   import starling.display.Sprite;
   import starlingui.core.text.TextLabel;
   
   public class ChatBallTextAreaBase3D extends Sprite
   {
       
      
      protected var _text:String;
      
      protected var tf:TextLabel;
      
      public function ChatBallTextAreaBase3D()
      {
         super();
         tf = new TextLabel();
         tf.fText.multiline = true;
         tf.fText.wordWrap = true;
         initView();
      }
      
      protected function initView() : void
      {
         addChild(tf);
      }
      
      public function set text(param1:String) : void
      {
         clear();
         _text = param1;
         tf.text = _text;
      }
      
      public function set format(param1:TextFormat) : void
      {
         tf.fText.defaultTextFormat = param1;
      }
      
      protected function clear() : void
      {
         _text = "";
         tf.text = "";
      }
      
      override public function dispose() : void
      {
         StarlingObjectUtils.disposeObject(tf);
         tf = null;
         super.dispose();
      }
   }
}
