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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1649")]
   public dynamic class moonhawk_railgun2 extends MovieClip
   {
      public function moonhawk_railgun2()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15);
      }
      
      public function onmade() : void
      {
         var _loc1_:* = this;
         this.wep = 4;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 1.5;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.25;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 40;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_wea_moonhawk_railgun;
         this.stat_cursor = 2;
         this.cost = 2500;
         this.costupg = 850;
         _loc1_.len1 = 0;
         _loc1_.len2 = 22;
         _loc1_.size1 = 7;
         _loc1_.size2 = 4;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame15() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

