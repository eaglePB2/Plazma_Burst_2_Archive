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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1555")]
   public dynamic class gun_vehminigl extends MovieClip
   {
      public function gun_vehminigl()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15);
      }
      
      public function onmade() : void
      {
         this.wep = -2;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 1.6;
         this.stat_count = 1;
         this.stat_averange = 0.3;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0;
         this.stat_averange_substract = 0;
         this.stat_bullets = 8;
         this.stat_class = 4;
         this.sou = MovieClip(root).s_wea_gl;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 20;
         this.size1 = 9;
         this.size2 = 7;
         this.forcars = true;
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

