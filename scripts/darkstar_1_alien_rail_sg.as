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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3070")]
   public dynamic class darkstar_1_alien_rail_sg extends MovieClip
   {
      public function darkstar_1_alien_rail_sg()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 7;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.5;
         this.xpos2 = 1;
         this.stat_power = 0.6;
         this.stat_count = 3;
         this.stat_averange = 0.2;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 4;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_wea_alien_rail_sg;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 10;
         this.size1 = 7;
         this.size2 = 4;
         this.cost = 1500;
         this.costupg = 350;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame20() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

