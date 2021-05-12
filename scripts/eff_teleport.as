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
   
   public dynamic class eff_teleport extends MovieClip
   {
       
      
      public function eff_teleport()
      {
         super();
         addFrameScript(20,this.frame21);
      }
      
      function frame21() : *
      {
         this.stop();
         this.visible = false;
      }
   }
}
