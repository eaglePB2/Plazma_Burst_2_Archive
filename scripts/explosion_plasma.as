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
   
   public dynamic class explosion_plasma extends MovieClip
   {
       
      
      public var expl:MovieClip;
      
      public function explosion_plasma()
      {
         super();
         addFrameScript(27,this.frame28);
      }
      
      internal function frame28() : *
      {
         this.stop();
         this.visible = false;
      }
   }
}
