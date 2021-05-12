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
   
   public dynamic class darkstar_1_usniper extends MovieClip
   {
       
      
      public var ray:MovieClip;
      
      public var riflestatus:MovieClip;
      
      public function darkstar_1_usniper()
      {
         super();
         addFrameScript(0,this.frame1,59,this.frame60);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.4;
         this.xpos2 = 1;
         this.stat_power = 6;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.5;
         this.stat_averange_add = 0.5;
         this.stat_averange_substract = 0.1;
         this.stat_bullets = 4;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_charged_explosion;
         this.stat_cursor = 2;
         this.cost = 2500;
         this.costupg = 850;
         this.len1 = 0;
         this.len2 = 64;
         this.size1 = 12;
         this.size2 = 5;
         this.forcars = false;
         this.riflestatus.gotoAndStop(1);
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      function frame60() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
