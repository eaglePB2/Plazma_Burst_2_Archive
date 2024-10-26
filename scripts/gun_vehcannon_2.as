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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol628")]
   public dynamic class gun_vehcannon extends MovieClip
   {
      public function gun_vehcannon()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public function onmade() : void
      {
         this.wep = -2;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 3;
         this.stat_count = 1;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0;
         this.stat_averange_substract = 0;
         this.stat_bullets = 9;
         this.stat_class = 1;
         this.sou = MovieClip(root).s_wea_vehcannon;
         this.stat_cursor = 3;
         if(this.upg == 0)
         {
            this.stat_power = 0.4;
         }
         if(this.upg == 1)
         {
            this.stat_power = 1;
         }
         if(this.upg == 2)
         {
            this.stat_power = 2;
         }
         if(this.upg == 3)
         {
            this.stat_power = 4;
         }
         this.len1 = 0;
         this.len2 = 140;
         this.size1 = 27;
         this.size2 = 18;
         this.forcars = true;
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

