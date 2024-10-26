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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3231")]
   public dynamic class darkstar_1_auto_sg extends MovieClip
   {
      public function darkstar_1_auto_sg()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 6;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.8;
         this.xpos2 = 1;
         this.stat_power = 0.3;
         this.stat_count = 4;
         this.stat_averange = 0.2;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.04;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 5;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_auto_sg2;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 42;
         this.size1 = 8;
         this.size2 = 6;
         this.cost = 1200;
         this.costupg = 350;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame8() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

