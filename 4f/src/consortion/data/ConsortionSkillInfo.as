package consortion.data
{
   import ddt.manager.LanguageMgr;
   import ddt.manager.TimeManager;
   
   public class ConsortionSkillInfo
   {
       
      
      public var id:int;
      
      public var type:int;
      
      public var descript:String;
      
      public var value:int;
      
      public var level:int;
      
      public var riches:int;
      
      public var name:String;
      
      public var pic:int;
      
      public var group:int;
      
      public var metal:int;
      
      public var isOpen:Boolean;
      
      public var beginDate:Date;
      
      public var validDate:int;
      
      public function ConsortionSkillInfo(){super();}
      
      public function get validity() : String{return null;}
   }
}
