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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1610")]
   public dynamic class phsc_plasma_shotgun extends MovieClip
   {
      public function phsc_plasma_shotgun()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 1.2;
         this.stat_count = 3;
         this.stat_averange = 0.25;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.1;
         this.stat_bullets = 46;
         this.stat_class = 5;
         this.sou = MovieClip(root).s_wea_plasma_shotgun;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 9;
         this.size2 = 7;
         this.cost = 2000;
         this.costupg = 650;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame27() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

