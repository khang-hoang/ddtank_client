package cmodule.decry
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___fflush extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM___fflush()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___fflush = null;
         _loc1_ = new FSM___fflush();
         FSM___fflush.gworker = _loc1_;
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
               if(this.i0 == 0)
               {
                  this.i0 = FSM___fflush;
                  this.i1 = 0;
                  loop0:
                  while(true)
                  {
                     this.i2 = li32(this.i0 + 4);
                     this.i3 = li32(this.i0 + 8);
                     this.i4 = this.i2 + -1;
                     if(this.i4 > -1)
                     {
                        this.i2 = this.i2 + -1;
                        loop1:
                        while(true)
                        {
                           this.i4 = li16(this.i3 + 12);
                           this.i4 = this.i4 << 16;
                           this.i4 = this.i4 >> 16;
                           this.i5 = this.i3;
                           if(this.i4 > 0)
                           {
                              mstate.esp = mstate.esp - 4;
                              si32(this.i5,mstate.esp);
                              state = 1;
                              mstate.esp = mstate.esp - 4;
                              FSM___fflush.start();
                              return;
                           }
                           addr146:
                           while(true)
                           {
                              this.i3 = this.i3 + 88;
                              this.i2 = this.i2 + -1;
                              if(this.i2 <= -1)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        this.i0 = li32(this.i0);
                        if(this.i0 == 0)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  mstate.eax = this.i1;
                  break;
               }
               this.i1 = li16(this.i0 + 12);
               this.i1 = this.i1 & 24;
               if(this.i1 == 0)
               {
                  this.i0 = 9;
                  si32(this.i0,FSM___fflush);
                  this.i0 = -1;
                  addr232:
                  mstate.eax = this.i0;
                  break;
               }
               mstate.esp = mstate.esp - 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM___fflush.start();
               return;
            case 1:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i1 = this.i4 | this.i1;
               §§goto(addr146);
            case 2:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               §§goto(addr232);
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
