package ddt.manager
{
   import ddt.data.analyze.PetAllSkillAnalyzer;
   import flash.utils.Dictionary;
   import pet.data.PetAllSkillTemplateInfo;
   import pet.data.PetTemplateInfo;
   
   public class PetAllSkillManager
   {
      
      private static var _skills:Dictionary;
       
      
      public function PetAllSkillManager(){super();}
      
      public static function setup(param1:PetAllSkillAnalyzer) : void{}
      
      public static function getAllSkillByPetTemplateID(param1:PetTemplateInfo) : Array{return null;}
   }
}
