package cmodule.decry
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   
   public final class FSM___sseek extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM___sseek()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___sseek = null;
         _loc1_ = new FSM___sseek();
         FSM___sseek.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 0;
               this.i0 = li32(mstate.ebp + 8);
               this.i2 = li32(mstate.ebp + 20);
               this.i1 = li32(mstate.ebp + 12);
               this.i0 = si16(li16(this.i0 + 14));
               state = 1;
            case 1:
               this.i0 = mstate.system.lseek(this.i0,this.i1,this.i2);
               this.i1 = this.i0 >> 31;
               mstate.edx = this.i1;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp = mstate.esp + 4;
               mstate.esp = mstate.esp + 4;
               mstate.gworker = caller;
               return;
         }
      }
   }
}
