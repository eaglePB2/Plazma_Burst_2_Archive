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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1661")]
   public dynamic class moonhawk_crossfire extends MovieClip
   {
      public function moonhawk_crossfire()
      {
         super();
         addFrameScript(0,this.frame1,41,this.frame42);
      }
      
      public function onmade() : void
      {
         var _loc1_:* = this;
         this.wep = 5;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 2.5;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.25;
         this.stat_averange_add = 0.2;
         this.stat_averange_substract = 0.004;
         this.stat_bullets = 37;
         this.stat_class = 5;
         this.sou = MovieClip(root).s_wea_crossfire2;
         this.stat_cursor = 2;
         this.cost = 2500;
         this.costupg = 850;
         _loc1_.len1 = -6;
         _loc1_.len2 = 28;
         _loc1_.size1 = 10;
         _loc1_.size2 = 6;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame42() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

