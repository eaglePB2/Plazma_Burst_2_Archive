package utils
{
   import flash.geom.*;
   import flash.net.*;
   import flash.system.*;
   import flash.utils.*;
   
   public class MemoryController
   {
       
      
      private var mWarningFunction:Function;
      
      private var mForcedCleanInterval:int;
      
      private var mForcedIterationsNum:int;
      
      private var mWarningMemoryLimit:int;
      
      private var mInterval:int;
      
      private var mCriticalMemoryLimit:int;
      
      private var mAbortFunction:Function;
      
      private var mIsAbleToForce:Boolean;
      
      public function MemoryController(refreshInterval:int = 1000, warningMemoryLimit:int = 6.291456E7, criticalMemoryLimit:int = 1.048576E8, forcedCleanInterval:int = 60000, forcedIterationsNum:int = 1, abortFunction:Function = null, warningFunction:Function = null)
      {
         super();
         this.mInterval = refreshInterval;
         this.mWarningMemoryLimit = warningMemoryLimit;
         this.mCriticalMemoryLimit = criticalMemoryLimit;
         this.mAbortFunction = abortFunction;
         this.mWarningFunction = warningFunction;
         this.mForcedIterationsNum = forcedIterationsNum;
         this.mForcedCleanInterval = forcedCleanInterval;
         this.mIsAbleToForce = true;
         setInterval(this.checkMemoryUsage,this.mInterval);
      }
      
      private function doForcedClean() : void
      {
         if(!this.mIsAbleToForce)
         {
            return;
         }
         var i:int = 0;
         for(i = 0; i < this.mForcedIterationsNum; i++)
         {
            try
            {
               new LocalConnection().connect("Crio");
               new LocalConnection().connect("Crio");
            }
            catch(e:*)
            {
            }
         }
         this.mIsAbleToForce = false;
         setTimeout(this.MakeAbleToForce,this.mForcedCleanInterval);
      }
      
      private function doSimpleClean() : void
      {
         var A:Point = new Point();
         A = null;
         var B:String = new String("1234567812345678");
         B = null;
         var C:Array = new Array();
         var i:int = 0;
         for(i = 0; i < 256; i++)
         {
            C.push(new String("a"));
         }
         for(i = 0; i < 256; i++)
         {
            delete C[i];
         }
         C = null;
      }
      
      private function MakeAbleToForce() : void
      {
         this.mIsAbleToForce = true;
      }
      
      private function checkMemoryUsage() : void
      {
         if(System.totalMemory > this.mWarningMemoryLimit)
         {
            this.doForcedClean();
            if(this.mWarningFunction)
            {
               this.mWarningFunction();
            }
         }
         else if(System.totalMemory > this.mCriticalMemoryLimit)
         {
            if(this.mAbortFunction)
            {
               this.mAbortFunction();
            }
            this.doForcedClean();
         }
      }
   }
}
