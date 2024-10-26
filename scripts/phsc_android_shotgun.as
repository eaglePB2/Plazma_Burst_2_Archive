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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1518")]
   public dynamic class phsc_android_shotgun extends MovieClip
   {
      public function phsc_android_shotgun()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 7;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.5;
         this.xpos2 = 1;
         this.stat_power = 1.2;
         this.stat_count = 3;
         this.stat_averange = 0.2;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.005;
         this.stat_bullets = 47;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_android_shotgun;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 30;
         this.size1 = 7;
         this.size2 = 4;
         this.cost = 1600;
         this.costupg = 300;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

