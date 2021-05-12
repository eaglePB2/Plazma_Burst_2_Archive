package fl.motion
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   
   public class AnimatorFactoryBase
   {
       
      
      protected var _transformationPoint:Point;
      
      private var _animators:Dictionary;
      
      protected var _transformationPointZ:int;
      
      private var _motion:MotionBase;
      
      protected var _sceneName:String;
      
      protected var _is3D:Boolean;
      
      public function AnimatorFactoryBase(param1:MotionBase)
      {
         super();
         this._motion = param1;
         this._animators = new Dictionary();
         this._transformationPoint = new Point(0.5,0.5);
         this._transformationPointZ = 0;
         this._is3D = false;
         this._sceneName = "";
      }
      
      public function addTargetInfo(param1:DisplayObject, param2:String, param3:int = 0, param4:Boolean = true, param5:int = -1, param6:Boolean = false, param7:Array = null) : AnimatorBase
      {
         var _loc11_:Class = null;
         if(!(param1 is DisplayObjectContainer) && !(param1 is SimpleButton))
         {
            return null;
         }
         var _loc8_:Dictionary;
         if(!(_loc8_ = this._animators[param1]))
         {
            _loc8_ = new Dictionary();
            this._animators[param1] = _loc8_;
         }
         var _loc9_:AnimatorBase = _loc8_[param2];
         var _loc10_:Boolean = false;
         if(!_loc9_)
         {
            _loc9_ = this.getNewAnimator();
            if((_loc11_ = getDefinitionByName("flash.events.Event") as Class).hasOwnProperty("FRAME_CONSTRUCTED"))
            {
               _loc9_.frameEvent = "frameConstructed";
            }
            _loc8_[param2] = _loc9_;
            _loc10_ = true;
         }
         _loc9_.motion = this._motion;
         _loc9_.transformationPoint = this._transformationPoint;
         _loc9_.transformationPointZ = this._transformationPointZ;
         _loc9_.sceneName = this._sceneName;
         if(_loc10_)
         {
            if(param1 is MovieClip)
            {
               AnimatorBase.registerParentFrameHandler(param1 as MovieClip,_loc9_,param5,param3,param6);
            }
         }
         if(param1 is MovieClip)
         {
            _loc9_.targetParent = MovieClip(param1);
            _loc9_.targetName = param2;
         }
         else if(param1 is SimpleButton)
         {
            AnimatorBase.registerButtonState(param1 as SimpleButton,_loc9_,param5);
         }
         if(param7)
         {
            _loc9_.initialPosition = param7;
         }
         if(param4)
         {
            AnimatorBase.processCurrentFrame(param1 as MovieClip,_loc9_,true,true);
         }
         return _loc9_;
      }
      
      public function set transformationPointZ(param1:int) : void
      {
         this._transformationPointZ = param1;
      }
      
      public function set transformationPoint(param1:Point) : void
      {
         this._transformationPoint = param1;
      }
      
      protected function getNewAnimator() : AnimatorBase
      {
         return null;
      }
      
      public function get motion() : MotionBase
      {
         return this._motion;
      }
      
      public function addTarget(param1:DisplayObject, param2:int = 0, param3:Boolean = true, param4:int = -1, param5:Boolean = false) : AnimatorBase
      {
         if(param1)
         {
            return this.addTargetInfo(param1.parent,param1.name,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set sceneName(param1:String) : void
      {
         this._sceneName = param1;
      }
   }
}
