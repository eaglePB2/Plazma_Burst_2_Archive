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
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class explosion_fire extends MovieClip
   {
       
      
      public var expl:MovieClip;
      
      public function explosion_fire()
      {
         super();
         addFrameScript(27,this.frame28);
      }
      
      function frame28() : *
      {
         this.stop();
         this.visible = false;
      }
   }
}
