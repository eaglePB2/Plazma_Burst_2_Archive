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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol624")]
   public dynamic class gun_shotgun extends MovieClip
   {
      public function gun_shotgun()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 9;
         this.ready = true;
         this.attachment = 0;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.stat_power = 1.1;
         this.stat_count = 3;
         this.stat_averange = 0.2;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.005;
         this.stat_bullets = 2;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_shotgun;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 15;
         this.size1 = 7;
         this.size2 = 3;
         this.cost = 1500;
         this.costupg = 400;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange *= 1.5;
               this.stat_power *= 0.5;
               this.stat_count = 3;
            }
            if(this.upg == 1)
            {
               this.stat_averange *= 1.25;
               this.stat_power *= 0.65;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.75;
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
      
      internal function frame20() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

