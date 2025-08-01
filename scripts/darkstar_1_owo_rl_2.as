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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3187")]
   public dynamic class darkstar_1_owo_rl extends MovieClip
   {
      
      public function darkstar_1_owo_rl()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 5;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.bullets = 4;
         this.fire_tim = 0;
         this.stat_power = 1.5;
         this.stat_count = 1;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.4;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.005;
         this.stat_bullets = 44;
         this.stat_class = 1;
         this.sou = MovieClip(root).s_wea_m202;
         this.stat_cursor = 2;
         this.len1 = 0;
         this.len2 = 18;
         this.size1 = 11;
         this.size2 = 11;
         this.cost = 1800;
         this.costupg = 650;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      public function CanShoot() : Boolean
      {
         return this.bullets > 0;
      }
      
      public function ThinkNow(param1:Number) : void
      {
         if(this.fire_tim > 0)
         {
            this.fire_tim -= param1;
         }
         else if(this.bullets < 4)
         {
            this.bullets = 4;
            MovieClip(root).PlaySound(MovieClip(root).s_rl_reload,this.x,this.y);
         }
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame6() : *
      {
         --this.bullets;
         this.fire_tim = 45;
         this.ready = true;
      }
      
      internal function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

