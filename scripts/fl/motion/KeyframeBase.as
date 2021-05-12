package fl.motion
{
   import flash.display.BlendMode;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Dictionary;
   
   public class KeyframeBase
   {
       
      
      public var y:Number = NaN;
      
      public var filters:Array;
      
      public var skewX:Number = NaN;
      
      public var skewY:Number = NaN;
      
      public var blendMode:String;
      
      public var useRotationConcat:Boolean = false;
      
      public var rotationX:Number = NaN;
      
      public var rotationY:Number = NaN;
      
      public var firstFrame:String;
      
      public var cacheAsBitmap:Boolean = false;
      
      public var rotateTimes:uint = 0;
      
      public var loop:String;
      
      public var rotationConcat:Number = NaN;
      
      public var scaleX:Number = NaN;
      
      public var scaleY:Number = NaN;
      
      private var _index:int = -1;
      
      public var blank:Boolean = false;
      
      public var adjustColorObjects:Dictionary = null;
      
      public var color:Color;
      
      public var orientToPath:Boolean = false;
      
      public var rotateDirection:String = "auto";
      
      public var label:String = "";
      
      public var x:Number = NaN;
      
      public var matrix3D:Object = null;
      
      public var z:Number = NaN;
      
      public function KeyframeBase(param1:XML = null)
      {
         this.blendMode = BlendMode.NORMAL;
         super();
         this.filters = [];
         this.adjustColorObjects = new Dictionary();
      }
      
      public function set index(param1:int) : void
      {
         this._index = param1 < 0 ? 0 : int(param1);
         if(this._index == 0)
         {
            this.setDefaults();
         }
      }
      
      public function getValue(param1:String) : Number
      {
         return Number(this[param1]);
      }
      
      public function setValue(param1:String, param2:Number) : void
      {
         this[param1] = param2;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      private function setDefaults() : void
      {
         if(isNaN(this.x))
         {
            this.x = 0;
         }
         if(isNaN(this.y))
         {
            this.y = 0;
         }
         if(isNaN(this.z))
         {
            this.z = 0;
         }
         if(isNaN(this.scaleX))
         {
            this.scaleX = 1;
         }
         if(isNaN(this.scaleY))
         {
            this.scaleY = 1;
         }
         if(isNaN(this.skewX))
         {
            this.skewX = 0;
         }
         if(isNaN(this.skewY))
         {
            this.skewY = 0;
         }
         if(isNaN(this.rotationConcat))
         {
            this.rotationConcat = 0;
         }
         if(!this.color)
         {
            this.color = new Color();
         }
      }
      
      public function setAdjustColorProperty(param1:int, param2:String, param3:*) : void
      {
         var _loc5_:ColorMatrixFilter = null;
         var _loc6_:Array = null;
         if(param1 >= this.filters.length)
         {
            return;
         }
         var _loc4_:AdjustColor;
         if((_loc4_ = this.adjustColorObjects[param1]) == null)
         {
            _loc4_ = new AdjustColor();
            this.adjustColorObjects[param1] = _loc4_;
         }
         switch(param2)
         {
            case "adjustColorBrightness":
               _loc4_.brightness = param3;
               break;
            case "adjustColorContrast":
               _loc4_.contrast = param3;
               break;
            case "adjustColorSaturation":
               _loc4_.saturation = param3;
               break;
            case "adjustColorHue":
               _loc4_.hue = param3;
         }
         if(_loc4_.AllValuesAreSet())
         {
            if(_loc5_ = this.filters[param1] as ColorMatrixFilter)
            {
               if(_loc6_ = _loc4_.CalculateFinalFlatArray())
               {
                  _loc5_.matrix = _loc6_;
               }
            }
         }
      }
      
      public function affectsTweenable(param1:String = "") : Boolean
      {
         return !param1 || !isNaN(this[param1]) || param1 == "color" && this.color || param1 == "filters" && this.filters.length || param1 == "matrix3D" && this.matrix3D || this.blank || this.hasTween();
      }
      
      public function get tweensLength() : int
      {
         return 0;
      }
      
      protected function hasTween() : Boolean
      {
         return false;
      }
      
      public function set rotation(param1:Number) : void
      {
         if(isNaN(this.skewX) || isNaN(this.skewY))
         {
            this.skewX = param1;
         }
         else
         {
            this.skewX += param1 - this.skewY;
         }
         this.skewY = param1;
      }
      
      public function get rotation() : Number
      {
         return this.skewY;
      }
   }
}
