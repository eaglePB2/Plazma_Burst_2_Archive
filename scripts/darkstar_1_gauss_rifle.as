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
   
   public dynamic class darkstar_1_gauss_rifle extends MovieClip
   {
       
      
      public function darkstar_1_gauss_rifle()
      {
         super();
         addFrameScript(0,this.frame1,74,this.frame75);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.4;
         this.xpos2 = 1;
         this.stat_power = 8;
         this.stat_count = 1;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.25;
         this.stat_averange_add = 0.2;
         this.stat_averange_substract = 0.003;
         this.stat_bullets = 37;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_railgun2;
         this.stat_cursor = 2;
         this.len1 = 0;
         this.len2 = 57;
         this.size1 = 10;
         this.size2 = 6;
         this.cost = 2700;
         this.costupg = 900;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange *= 1.5;
               this.stat_power *= 0.5;
            }
            if(this.upg == 1)
            {
               this.stat_averange *= 1.25;
               this.stat_power *= 0.75;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 1;
            }
            if(this.upg == 3)
            {
               this.stat_averange *= 0.5;
               this.stat_power *= 1.25;
            }
         }
         else
         {
            this.stat_averange *= 0.5;
         }
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame75() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
