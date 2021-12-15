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
   
   public dynamic class ditzy_focus_beam extends MovieClip
   {
       
      
      public function ditzy_focus_beam()
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
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.bullets = 20;
         this.fire_tim = 0;
         this.stat_power = 0.135 * 2.5;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0;
         this.stat_averange_substract = 0;
         this.stat_bullets = 51;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_beam5;
         this.stat_cursor = 2;
         this.knockback_multiplier = 0;
         this.recoil_multiplier = 0;
         this.cost = 2500;
         this.costupg = 850;
         this.len1 = 0;
         this.len2 = 35;
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
         else if(this.bullets < 20)
         {
            this.bullets = 20;
            MovieClip(root).PlaySound(MovieClip(root).s_beam5_recharge,this.x,this.y);
         }
      }
      
      function frame1() : *
      {
      }
      
      function frame3() : *
      {
         --this.bullets;
         this.fire_tim = 20;
         this.ready = true;
      }
      
      function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
