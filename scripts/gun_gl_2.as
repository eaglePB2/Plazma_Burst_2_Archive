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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2623")]
   public dynamic class gun_gl extends MovieClip
   {
      public function gun_gl()
      {
         super();
         addFrameScript(0,this.frame1,13,this.frame14,39,this.frame40);
      }
      
      public function onmade() : void
      {
         if(!MovieClip(root).MP_mode && !MovieClip(root).FORCE_CUSTOM_MAP)
         {
            this.wep = 6;
         }
         else
         {
            this.wep = 5;
         }
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 1.6;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.003;
         this.stat_bullets = 8;
         this.stat_class = 4;
         this.sou = MovieClip(root).s_wea_gl;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 15;
         this.size1 = 9;
         this.size2 = 7;
         this.cost = 1600;
         this.costupg = 200;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_power *= 0.75;
            }
            if(this.upg == 1)
            {
               this.stat_power *= 1;
            }
            if(this.upg == 2)
            {
               this.stat_power *= 1.5;
            }
            if(this.upg == 3)
            {
               this.stat_count = 2;
               this.stat_averange = 0.3;
            }
         }
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame14() : *
      {
         if(!MovieClip(root).MP_mode)
         {
            this.ready = true;
            this.gotoAndStop(2);
         }
      }
      
      internal function frame40() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

