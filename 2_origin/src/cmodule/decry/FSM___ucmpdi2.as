package cmodule.decry
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___ucmpdi2 extends Machine
   {
       
      
      public function FSM___ucmpdi2()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         FSM___ucmpdi2.esp = FSM___ucmpdi2.esp - 4;
         si32(FSM___ucmpdi2.ebp,FSM___ucmpdi2.esp);
         FSM___ucmpdi2.ebp = FSM___ucmpdi2.esp;
         FSM___ucmpdi2.esp = FSM___ucmpdi2.esp - 0;
         _loc1_ = li32(FSM___ucmpdi2.ebp + 12);
         _loc2_ = li32(FSM___ucmpdi2.ebp + 20);
         _loc3_ = li32(FSM___ucmpdi2.ebp + 8);
         _loc4_ = li32(FSM___ucmpdi2.ebp + 16);
         _loc5_ = _loc2_;
         _loc5_ = _loc1_;
         if(uint(_loc1_) >= uint(_loc2_))
         {
            if(uint(_loc1_) > uint(_loc2_))
            {
               _loc1_ = 2;
            }
            else
            {
               _loc1_ = int(_loc4_);
               _loc2_ = int(_loc3_);
               if(uint(_loc3_) >= uint(_loc4_))
               {
                  _loc1_ = int(uint(_loc2_) > uint(_loc1_)?2:1);
               }
            }
            addr123:
            FSM___ucmpdi2.eax = _loc1_;
            FSM___ucmpdi2.esp = FSM___ucmpdi2.ebp;
            FSM___ucmpdi2.ebp = li32(FSM___ucmpdi2.esp);
            FSM___ucmpdi2.esp = FSM___ucmpdi2.esp + 4;
            FSM___ucmpdi2.esp = FSM___ucmpdi2.esp + 4;
            return;
         }
         _loc1_ = 0;
         §§goto(addr123);
      }
   }
}
