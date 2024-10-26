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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3136")]
   public dynamic class darkstar_1_railgun2 extends MovieClip
   {
      public function darkstar_1_railgun2()
      {
         super();
         addFrameScript(0,this.frame1,34,this.frame35);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         this.zpos = 5;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.stat_power = 0.7 * 2;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.08;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 48;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_wea_rail_toxic2;
         this.stat_cursor = 2;
         this.len1 = 0;
         this.len2 = 20;
         this.size1 = 7;
         this.size2 = 4;
         this.cost = 1400;
         this.costupg = 300;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame35() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

