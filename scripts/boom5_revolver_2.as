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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3301")]
   public dynamic class boom5_revolver extends MovieClip
   {
      
      public function boom5_revolver()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13);
      }
      
      public function onmade() : void
      {
         this.wep = 1;
         this.zpos = 7;
         this.attachment = 0;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.ready = true;
         this.stat_power = 1.6;
         this.stat_count = 1;
         this.stat_averange = 0.05;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 16;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_revolver5;
         this.stat_cursor = 0;
         this.cost = 800;
         this.costupg = 200;
         this.len1 = 0;
         this.len2 = 15;
         this.size1 = 5;
         this.size2 = 4;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame13() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

