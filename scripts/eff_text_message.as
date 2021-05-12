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
   
   public dynamic class eff_text_message extends MovieClip
   {
       
      
      public var strquad:MovieClip;
      
      public var msgtext:TextField;
      
      public function eff_text_message()
      {
         super();
         addFrameScript(89,this.frame90);
      }
      
      function frame90() : *
      {
         this.stop();
         this.visible = false;
      }
   }
}
