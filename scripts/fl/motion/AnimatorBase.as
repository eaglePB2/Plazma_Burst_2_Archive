package fl.motion
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class AnimatorBase extends EventDispatcher
   {
      
      private static var _registeredParents:Dictionary = new Dictionary(true);
      
      private static var enterFrameBeacon:MovieClip = new MovieClip();
       
      
      public var transformationPoint:Point;
      
      protected var targetState:Object;
      
      private var _isPlaying:Boolean = false;
      
      private var _time:int = -1;
      
      protected var _target:DisplayObject;
      
      public var repeatCount:int = 1;
      
      private var _lastRenderedTime:int = -1;
      
      private var _spanStart:int = -1;
      
      public var transformationPointZ:int;
      
      protected var _isAnimator3D:Boolean;
      
      private var _sceneName:String = "";
      
      public var positionMatrix:Matrix;
      
      private var _frameEvent:String = "enterFrame";
      
      public var autoRewind:Boolean = false;
      
      private var _motion:MotionBase;
      
      private var _targetName:String = "";
      
      private var _useCurrentFrame:Boolean = false;
      
      private var playCount:int = 0;
      
      public var orientToPath:Boolean = false;
      
      private var targetStateOriginal:Object = null;
      
      private var _targetState3D:Array = null;
      
      private var _targetParent:DisplayObjectContainer = null;
      
      public function AnimatorBase(param1:XML = null, param2:DisplayObject = null)
      {
         super();
         this.target = param2;
         this._isAnimator3D = false;
         this.transformationPoint = new Point(0.5,0.5);
         this.transformationPointZ = 0;
         this._sceneName = "";
      }
      
      public static function processCurrentFrame(param1:MovieClip, param2:AnimatorBase, param3:Boolean, param4:Boolean = false) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(param2 && param1)
         {
            if(!param1.root)
            {
               if(param2.usingCurrentFrame && !param2.isPlaying && param4)
               {
                  param2.startFrameEvents();
               }
               return;
            }
            if(param2.usingCurrentFrame)
            {
               _loc5_ = param1.currentFrame - 1;
               if(param1.scenes.length > 1)
               {
                  if(param1.currentScene.name != param2.sceneName)
                  {
                     _loc5_ = -1;
                  }
               }
               if(_loc5_ >= param2.spanStart && _loc5_ <= param2.spanEnd)
               {
                  _loc6_ = _loc5_ - param2.spanStart;
                  if(!param2.isPlaying)
                  {
                     param2.play(_loc6_,param3);
                  }
                  else if(!param4)
                  {
                     if(_loc5_ == param2.spanEnd)
                     {
                        param2.handleLastFrame(true,false);
                     }
                     else
                     {
                        param2.time = _loc6_;
                     }
                  }
               }
               else if(param2.isPlaying && !param4)
               {
                  param2.end(true,false);
               }
               else if(!param2.isPlaying && param4)
               {
                  param2.startFrameEvents();
               }
            }
            else if(param2.targetParent && param2.targetParent[param2.targetName] == null && param2.targetParent.getChildByName(param2.targetName) == null)
            {
               if(param2.isPlaying)
               {
                  param2.end(true,false);
               }
               else if(param4)
               {
                  param2.startFrameEvents();
               }
            }
            else if(!param2.isPlaying)
            {
               param2.play(0,param3);
            }
            else if(!param4)
            {
               param2.nextFrame();
            }
         }
      }
      
      public static function registerParentFrameHandler(param1:MovieClip, param2:AnimatorBase, param3:int, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:AnimatorParent;
         if((_loc6_ = _registeredParents[param1] as AnimatorParent) == null)
         {
            (_loc6_ = new AnimatorParent()).parent = param1;
            _registeredParents[param1] = _loc6_;
         }
         if(param3 == -1)
         {
            param3 = param1.currentFrame - 1;
         }
         if(param5)
         {
            param2.useCurrentFrame(true,param3);
         }
         else
         {
            param2.repeatCount = param4;
         }
         _loc6_.animators.push(param2);
      }
      
      private static function parentEnterFrameHandler(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:AnimatorParent = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:AnimatorBase = null;
         for(_loc2_ in _registeredParents)
         {
            _loc3_ = _registeredParents[_loc2_] as AnimatorParent;
            if(_loc3_)
            {
               _loc4_ = _loc3_.parent;
               _loc5_ = _loc3_.animators;
               if(!(!_loc4_ || !_loc5_))
               {
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.length)
                  {
                     if(!(_loc7_ = _loc5_[_loc6_] as AnimatorBase).usingCurrentFrame || _loc4_.currentFrame != _loc3_.lastFrameHandled)
                     {
                        processCurrentFrame(_loc4_,_loc7_,false);
                     }
                     _loc6_++;
                  }
                  _loc3_.lastFrameHandled = _loc4_.currentFrame;
               }
            }
         }
      }
      
      public static function registerButtonState(param1:SimpleButton, param2:AnimatorBase, param3:int) : void
      {
         var _loc4_:DisplayObject = param1.upState;
         switch(param3)
         {
            case 1:
               _loc4_ = param1.overState;
               break;
            case 2:
               _loc4_ = param1.downState;
               break;
            case 3:
               _loc4_ = param1.hitTestState;
         }
         if(!_loc4_)
         {
            return;
         }
         param2.target = _loc4_;
         param2.time = 0;
      }
      
      private static function get hasRegisteredParents() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = _registeredParents;
         for(_loc1_ in _loc3_)
         {
            return true;
         }
         return false;
      }
      
      protected function setTime3D(param1:int, param2:MotionBase) : Boolean
      {
         return false;
      }
      
      private function handleLastFrame(param1:Boolean = false, param2:Boolean = true) : void
      {
         ++this.playCount;
         if(this.repeatCount == 0 || this.playCount < this.repeatCount)
         {
            this.rewind();
         }
         else
         {
            this.end(param1,param2);
         }
      }
      
      public function get targetState3D() : Array
      {
         return this._targetState3D;
      }
      
      public function get target() : DisplayObject
      {
         return this._target;
      }
      
      private function get enterFrameHandler() : Function
      {
         if(AnimatorBase.hasRegisteredParents)
         {
            return AnimatorBase.parentEnterFrameHandler;
         }
         return this.handleEnterFrame;
      }
      
      public function get usingCurrentFrame() : Boolean
      {
         return this._useCurrentFrame;
      }
      
      public function set initialPosition(param1:Array) : void
      {
      }
      
      public function useCurrentFrame(param1:Boolean, param2:int) : void
      {
         this._useCurrentFrame = param1;
         this._spanStart = param2;
      }
      
      public function set time(param1:int) : void
      {
         var _loc5_:ColorTransform = null;
         var _loc6_:Array = null;
         if(param1 == this._time)
         {
            return;
         }
         var _loc2_:MotionBase = this.motion;
         if(param1 > _loc2_.duration - 1)
         {
            param1 = _loc2_.duration - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this._time = param1;
         this.dispatchEvent(new MotionEvent(MotionEvent.TIME_CHANGE));
         var _loc3_:KeyframeBase = _loc2_.getCurrentKeyframe(param1);
         var _loc4_:Boolean;
         if(_loc4_ = _loc3_.index == this._lastRenderedTime && !_loc3_.tweensLength)
         {
            return;
         }
         this._target.visible = false;
         if(!_loc3_.blank)
         {
            if(this._isAnimator3D)
            {
               this.setTime3D(param1,_loc2_);
            }
            else
            {
               this.setTimeClassic(param1,_loc2_,_loc3_);
            }
            if(_loc5_ = _loc2_.getColorTransform(param1))
            {
               this._target.transform.colorTransform = _loc5_;
            }
            if(_loc6_ = _loc2_.getFilters(param1))
            {
               this._target.filters = _loc6_;
            }
            this._target.blendMode = _loc3_.blendMode;
            this._target.visible = true;
         }
         this._lastRenderedTime = this._time;
         this.dispatchEvent(new MotionEvent(MotionEvent.MOTION_UPDATE));
      }
      
      public function set target(param1:DisplayObject) : void
      {
         if(!param1)
         {
            return;
         }
         this._target = param1;
         var _loc2_:Boolean = false;
         if(this.targetParent && this.targetName != "")
         {
            if(this.targetStateOriginal)
            {
               this.targetState = this.targetStateOriginal;
               return;
            }
            _loc2_ = true;
         }
         this.targetState = {};
         this.setTargetState();
         if(_loc2_)
         {
            this.targetStateOriginal = this.targetState;
         }
      }
      
      public function get isPlaying() : Boolean
      {
         return this._isPlaying;
      }
      
      public function startFrameEvents() : void
      {
         enterFrameBeacon.addEventListener(this.frameEvent,this.enterFrameHandler,false,0,true);
      }
      
      public function get frameEvent() : String
      {
         return this._frameEvent;
      }
      
      public function stop() : void
      {
         enterFrameBeacon.removeEventListener(this.frameEvent,this.enterFrameHandler);
         this._isPlaying = false;
         this.playCount = 0;
         this.rewind();
         this.dispatchEvent(new MotionEvent(MotionEvent.MOTION_END));
      }
      
      public function get spanEnd() : int
      {
         if(this._motion && this._motion.duration > 0)
         {
            return this._spanStart + this._motion.duration - 1;
         }
         return this._spanStart;
      }
      
      public function get targetParent() : DisplayObjectContainer
      {
         return this._targetParent;
      }
      
      public function get spanStart() : int
      {
         return this._spanStart;
      }
      
      public function play(param1:int = -1, param2:Boolean = true) : void
      {
         if(!this._isPlaying)
         {
            if(this._target == null && this._targetParent && this._targetName != "")
            {
               this.target = this._targetParent[this._targetName];
               if(!this.target)
               {
                  this.target = this._targetParent.getChildByName(this._targetName);
               }
            }
            if(param2)
            {
               enterFrameBeacon.addEventListener(this.frameEvent,this.enterFrameHandler,false,0,true);
            }
            if(!this.target)
            {
               return;
            }
            this._isPlaying = true;
         }
         this.playCount = 0;
         if(param1 > -1)
         {
            this.time = param1;
         }
         else
         {
            this.rewind();
         }
         this.dispatchEvent(new MotionEvent(MotionEvent.MOTION_START));
      }
      
      public function get targetName() : String
      {
         return this._targetName;
      }
      
      public function set targetParent(param1:DisplayObjectContainer) : void
      {
         this._targetParent = param1;
      }
      
      protected function setTargetState() : void
      {
      }
      
      protected function setTimeClassic(param1:int, param2:MotionBase, param3:KeyframeBase) : Boolean
      {
         return false;
      }
      
      private function handleEnterFrame(param1:Event) : void
      {
         this.nextFrame();
      }
      
      public function get motion() : MotionBase
      {
         return this._motion;
      }
      
      public function get sceneName() : String
      {
         return this._sceneName;
      }
      
      public function nextFrame() : void
      {
         if(this.time >= this.motion.duration - 1)
         {
            this.handleLastFrame();
         }
         else
         {
            ++this.time;
         }
      }
      
      public function get time() : int
      {
         return this._time;
      }
      
      public function resume() : void
      {
         enterFrameBeacon.addEventListener(this.frameEvent,this.enterFrameHandler,false,0,true);
         this._isPlaying = true;
      }
      
      public function rewind() : void
      {
         this.time = 0;
      }
      
      public function set frameEvent(param1:String) : void
      {
         this._frameEvent = param1;
      }
      
      public function set targetState3D(param1:Array) : void
      {
         this._targetState3D = param1;
      }
      
      public function end(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(param2)
         {
            enterFrameBeacon.removeEventListener(this.frameEvent,this.enterFrameHandler);
         }
         this._isPlaying = false;
         this.playCount = 0;
         if(this.autoRewind)
         {
            this.rewind();
         }
         else if(this.time != this.motion.duration - 1)
         {
            this.time = this.motion.duration - 1;
         }
         if(param1)
         {
            if(this._targetParent && this._targetName != "")
            {
               this._target = null;
            }
            this._lastRenderedTime = -1;
            this._time = -1;
         }
         this.dispatchEvent(new MotionEvent(MotionEvent.MOTION_END));
      }
      
      public function set motion(param1:MotionBase) : void
      {
         this._motion = param1;
      }
      
      public function set sceneName(param1:String) : void
      {
         this._sceneName = param1;
      }
      
      public function pause() : void
      {
         enterFrameBeacon.removeEventListener(this.frameEvent,this.enterFrameHandler);
         this._isPlaying = false;
      }
      
      public function set targetName(param1:String) : void
      {
         this._targetName = param1;
      }
   }
}

import flash.display.MovieClip;

class AnimatorParent
{
    
   
   public var parent:MovieClip = null;
   
   public var lastFrameHandled:int = -1;
   
   public var animators:Array;
   
   function AnimatorParent()
   {
      this.animators = new Array();
      super();
   }
}
