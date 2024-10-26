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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2000")]
   public dynamic class gun_defibrillator extends MovieClip
   {
      public function gun_defibrillator()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25);
      }
      
      public function onmade() : void
      {
         this.wep = 6;
         this.zpos = 0;
         this.ready = true;
         this.attachment = 0;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 1;
         this.stat_count = 0;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0;
         this.stat_averange_substract = 0;
         this.stat_bullets = 4;
         this.stat_class = 7;
         this.sou = MovieClip(root).s_wea_defibrillator;
         this.stat_cursor = 2;
         this.cost = 500;
         this.costupg = 0;
         this.len1 = 0;
         this.len2 = 15;
         this.size1 = 8;
         this.size2 = 7;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame25() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

