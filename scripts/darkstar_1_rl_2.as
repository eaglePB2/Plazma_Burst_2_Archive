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
   
   public dynamic class darkstar_1_rl extends MovieClip
   {
       
      
      public function darkstar_1_rl()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15);
      }
      
      public function onmade() : void
      {
         this.wep = 5;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 1.25;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.1;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 50;
         this.stat_class = 1;
         this.sou = MovieClip(root).s_wea_darkstar_rl3;
         this.stat_cursor = 2;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 9;
         this.size2 = 7;
         this.cost = 1800;
         this.costupg = 650;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange *= 2;
               this.stat_power *= 0.7;
            }
            if(this.upg == 1)
            {
               this.stat_averange *= 1.5;
               this.stat_power *= 0.8;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.9;
            }
            if(this.upg == 3)
            {
               this.stat_averange *= 0.5;
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
      
      internal function frame15() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
