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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3206")]
   public dynamic class darkstar_1_minigun extends MovieClip
   {
      
      public function darkstar_1_minigun()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      public function onmade() : void
      {
         this.wep = 2;
         this.zpos = 3 + 2;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.7;
         this.xpos2 = 1;
         this.stat_power = 1;
         this.stat_count = 1;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.3;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.015;
         this.stat_bullets = 5;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_lmg;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 51;
         this.size1 = 8;
         this.size2 = 4;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame5() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

