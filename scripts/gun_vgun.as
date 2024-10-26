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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol618")]
   public dynamic class gun_vgun extends MovieClip
   {
      public function gun_vgun()
      {
         super();
         addFrameScript(0,this.frame1,89,this.frame90);
      }
      
      public function onmade() : void
      {
         this.wep = 9;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 1;
         this.stat_count = 3;
         this.stat_averange = 0.2;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.1;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 14;
         this.stat_class = 6;
         this.sou = MovieClip(root).s_robo_bug_launch;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 9;
         this.size2 = 7;
         this.cost = 1800;
         this.costupg = 400;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_power *= 1;
            }
            if(this.upg == 1)
            {
               this.stat_power *= 2;
            }
            if(this.upg == 2)
            {
               this.stat_power *= 3;
            }
            if(this.upg == 3)
            {
               this.stat_power *= 4;
            }
         }
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame90() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

