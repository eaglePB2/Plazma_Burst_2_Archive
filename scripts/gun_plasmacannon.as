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
   
   public dynamic class gun_plasmacannon extends MovieClip
   {
       
      
      public function gun_plasmacannon()
      {
         super();
         addFrameScript(0,this.frame1,54,this.frame55);
      }
      
      public function onmade() : void
      {
         this.wep = 9;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 3;
         this.stat_count = 2;
         this.stat_averange = 0.15;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.4;
         this.stat_averange_add = 0.4;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 6;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_energy;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 20;
         this.size1 = 9;
         this.size2 = 8;
         this.cost = 2500;
         this.costupg = 2500;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.3;
               this.stat_count = 3;
            }
            if(this.upg == 1)
            {
               this.stat_averange *= 1.5;
               this.stat_power *= 0.5;
               this.stat_count = 3;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.7;
               this.stat_count = 3;
            }
            if(this.upg == 3)
            {
               this.stat_power *= 0.7;
               this.stat_count = 4;
            }
         }
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      function frame55() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
