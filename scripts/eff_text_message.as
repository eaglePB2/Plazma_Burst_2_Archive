package
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol640")]
   public dynamic class eff_text_message extends MovieClip
   {
      public var msgtext:TextField;
      
      public var strquad:MovieClip;
      
      public function eff_text_message()
      {
         super();
         addFrameScript(89,this.frame90);
      }
      
      internal function frame90() : *
      {
         this.stop();
         this.visible = false;
      }
   }
}

