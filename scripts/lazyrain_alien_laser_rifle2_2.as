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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1754")]
   public dynamic class lazyrain_alien_laser_rifle2 extends MovieClip
   {
      public function lazyrain_alien_laser_rifle2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 8;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.bullets = 60;
         this.fire_tim = 0;
         this.stat_power = 0.135 * 2;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0;
         this.stat_averange_substract = 0;
         this.stat_bullets = 29;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_beam1;
         this.stat_cursor = 2;
         this.knockback_multiplier = 0;
         this.recoil_multiplier = 0;
         this.cost = 2500;
         this.costupg = 850;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 7;
         this.size2 = 5;
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
         else if(this.bullets < 60)
         {
            this.bullets = 60;
            MovieClip(root).PlaySound(MovieClip(root).s_beam1_rechargeB,this.x,this.y);
         }
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame3() : *
      {
         --this.bullets;
         this.fire_tim = 60;
         this.ready = true;
      }
      
      internal function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

