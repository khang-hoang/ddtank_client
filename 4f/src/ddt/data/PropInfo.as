package ddt.data
{
   import ddt.data.goods.ItemTemplateInfo;
   
   public class PropInfo
   {
       
      
      private var _template:ItemTemplateInfo;
      
      public var Place:int;
      
      public var Count:int;
      
      public function PropInfo(param1:ItemTemplateInfo){super();}
      
      public function get Template() : ItemTemplateInfo{return null;}
      
      public function get needEnergy() : Number{return 0;}
      
      public function get needPsychic() : int{return 0;}
      
      public function equal(param1:PropInfo) : Boolean{return false;}
      
      public function get TemplateID() : int{return 0;}
   }
}
