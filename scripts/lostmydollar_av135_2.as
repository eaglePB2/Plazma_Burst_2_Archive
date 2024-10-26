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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1705")]
   public dynamic class lostmydollar_av135 extends MovieClip
   {
      public function lostmydollar_av135()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6);
      }
      
      public function onmade() : void
      {
         this.wep = 2;
         this.zpos = 3 + 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.7;
         this.xpos2 = 1;
         this.stat_power = 1.075;
         this.stat_count = 1;
         this.stat_averange = 0.05;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.25;
         this.stat_averange_add = 0.08;
         this.stat_averange_substract = 0.012;
         this.stat_bullets = 5;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_impulse;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 38;
         this.size1 = 8;
         this.size2 = 6;
         this.cost = 1200;
         this.costupg = 350;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange *= 1.5;
               this.stat_power *= 0.7;
            }
            if(this.upg == 1)
            {
               this.stat_averange *= 1.25;
               this.stat_power *= 0.8;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.9;
            }
            if(this.upg == 3)
            {
               this.stat_power *= 1;
            }
         }
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame6() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

