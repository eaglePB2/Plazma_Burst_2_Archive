package fl.motion
{
   public class AnimatorFactory3D extends AnimatorFactoryBase
   {
       
      
      public function AnimatorFactory3D(param1:MotionBase)
      {
         super(param1);
         this._is3D = true;
      }
      
      override protected function getNewAnimator() : AnimatorBase
      {
         return new Animator3D(null,null);
      }
   }
}
