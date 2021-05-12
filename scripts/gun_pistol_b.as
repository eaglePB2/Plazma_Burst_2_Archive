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
   
   public dynamic class gun_pistol_b extends MovieClip
   {
       
      
      public function gun_pistol_b()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9);
      }
      
      public function onmade() : void
      {
         this.wep = 1;
         this.zpos = 7;
         this.attachment = 0;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.ready = true;
         this.stat_power = 1.3;
         this.stat_count = 1;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 16;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_pistol;
         this.stat_cursor = 0;
         this.cost = 800;
         this.costupg = 200;
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
               this.stat_averange *= 0.5;
               this.stat_power *= 1;
            }
         }
         this.len1 = 0;
         this.len2 = 15;
         this.size1 = 5;
         this.size2 = 4;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      function frame9() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
