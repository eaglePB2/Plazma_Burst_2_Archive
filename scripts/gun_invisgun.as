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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2817")]
   public dynamic class gun_invisgun extends MovieClip
   {
      
      public var bubble_icon:eff_bubble;
      
      public function gun_invisgun()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15);
      }
      
      public function onmade() : void
      {
         this.wep = 2;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 0.9;
         this.stat_count = 1;
         this.stat_averange = 0.15;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.4;
         this.stat_averange_add = 0.06;
         this.stat_averange_substract = 0.03;
         this.stat_bullets = 6;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_s_gun_rayrifle;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 5;
         this.size1 = 5;
         this.size2 = 5;
         this.cost = 1800;
         this.costupg = 800;
         this.bubble_icon.visible = false;
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

