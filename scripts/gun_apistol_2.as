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
   
   public dynamic class gun_apistol extends MovieClip
   {
       
      
      public function gun_apistol()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public function onmade() : void
      {
         this.wep = 1;
         this.zpos = 0;
         this.ready = true;
         this.attachment = 0;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 0.6;
         this.stat_count = 1;
         this.stat_averange = 0.08;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 1;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_wea_apistol;
         this.stat_cursor = 2;
         this.cost = 600;
         this.costupg = 250;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.75;
            }
            if(this.upg == 1)
            {
               this.stat_averange *= 0.75;
               this.stat_power *= 1;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.5;
            }
            if(this.upg == 3)
            {
               this.stat_averange *= 0.25;
               this.stat_power *= 1.5;
            }
         }
         this.len1 = 0;
         this.len2 = 3;
         this.size1 = 8;
         this.size2 = 7;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame10() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
