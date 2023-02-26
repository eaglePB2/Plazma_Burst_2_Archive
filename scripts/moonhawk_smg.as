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
   
   public dynamic class moonhawk_smg extends MovieClip
   {
       
      
      public function moonhawk_smg()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4);
      }
      
      public function onmade() : void
      {
         this.wep = 1;
         this.zpos = 3 + 2.5;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.8;
         this.xpos2 = 1;
         this.stat_power = 0.5;
         this.stat_count = 1;
         this.stat_averange = 0.05;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.3;
         this.stat_averange_add = 0.15;
         this.stat_averange_substract = 0.03;
         this.stat_bullets = 33;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_moonhawk_smg2;
         this.stat_cursor = 0;
         this.cost = 1300;
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
               this.stat_averange_add *= 0.9;
            }
            if(this.upg == 2)
            {
               this.stat_averange *= 1;
               this.stat_power *= 0.9;
               this.stat_averange_add *= 0.8;
            }
            if(this.upg == 3)
            {
               this.stat_power *= 1;
               this.stat_averange_add *= 0.7;
            }
         }
         this.len1 = 0;
         this.len2 = 17;
         this.size1 = 7;
         this.size2 = 6;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame4() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
