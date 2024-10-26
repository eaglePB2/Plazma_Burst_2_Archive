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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol659")]
   public dynamic class gun_vehgun extends MovieClip
   {
      public function gun_vehgun()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,29,this.frame30,39,this.frame40);
      }
      
      public function onmade() : void
      {
         this.wep = 5;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 1.1;
         this.stat_count = 1;
         this.stat_averange = 0.3;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0.2;
         this.stat_averange_substract = 0.005;
         this.stat_bullets = 7;
         this.stat_class = 1;
         this.sou = MovieClip(root).s_wea_rocket;
         this.stat_cursor = 2;
         this.len1 = 0;
         this.len2 = 20;
         this.size1 = 9;
         this.size2 = 7;
         this.forcars = true;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
         this.bullets = 3;
      }
      
      internal function frame5() : *
      {
         if(this.bullets > 0)
         {
            --this.bullets;
            this.ready = true;
            this.gotoAndStop(2);
            this.floatframe = 2;
         }
      }
      
      internal function frame30() : *
      {
         this.bullets = 3;
         MovieClip(root).PlaySound(MovieClip(root).s_test_sound,this.x,this.y);
         this.ready = true;
         this.gotoAndStop(2);
         this.floatframe = 2;
      }
      
      internal function frame40() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

