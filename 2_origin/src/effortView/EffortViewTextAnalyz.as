package effortView
{
   public class EffortViewTextAnalyz
   {
       
      
      public function EffortViewTextAnalyz()
      {
         super();
      }
      
      public static function start(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:* = param1;
         var _loc3_:Array = new Array(/cr>|cg>|cb>/gi,/<cr/gi,/<cg/gi,/<cb/gi,/【/gi,/】/gi);
         var _loc5_:Array = new Array("</font><font>","</font><font COLOR=\'#FF0000\'>","</font><font COLOR=\'#00FF00\'>","</font><font COLOR=\'#0000FF\'>","</font><a href=\'http://blog.163.com/redirect.html\'><font COLOR=\'#00FF00\'><u>","</u></font></a><font>");
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_ = _loc2_.replace(_loc3_[_loc4_],_loc5_[_loc4_]);
            _loc4_++;
         }
         return "<font>" + _loc2_ + "</font>";
      }
   }
}
