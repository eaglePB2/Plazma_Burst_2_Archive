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
   
   public dynamic class roxxar_shotgun extends MovieClip
   {
       
      
      public function roxxar_shotgun()
      {
         super();
         addFrameScript(0,this.frame1,35,this.frame36);
      }
      
      public function onmade() : void
      {
         this.wep = 5;
         this.zpos = 9;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.stat_power = 1.6;
         this.stat_count = 3;
         this.stat_averange = 0.6;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.003;
         this.stat_bullets = 25;
         this.stat_class = 4;
         this.sou = MovieClip(root).s_wea_shotgun;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 7;
         this.size2 = 6;
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
      
      function frame1() : *
      {
      }
      
      function frame36() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
