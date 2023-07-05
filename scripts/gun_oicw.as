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
   
   public dynamic class gun_oicw extends MovieClip
   {
       
      
      public var clip:MovieClip;
      
      public var glowing:MovieClip;
      
      public function gun_oicw()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,14,this.frame15,29,this.frame30);
      }
      
      public function onmade() : void
      {
         var _loc1_:* = this;
         _loc1_.bullets = 2;
         _loc1_.fire_tim = 0;
         _loc1_.wep = 2;
         _loc1_.zpos = 1.5;
         _loc1_.ready = true;
         _loc1_.attachment = 1;
         _loc1_.xpos1 = 0.6;
         _loc1_.xpos2 = 1;
         _loc1_.stat_power = 1.15;
         _loc1_.stat_count = 1;
         _loc1_.stat_averange = 0.05;
         _loc1_.stat_averange_min = 0;
         _loc1_.stat_averange_max = 0.4;
         _loc1_.stat_averange_add = 0.15;
         _loc1_.stat_averange_substract = 0.03;
         _loc1_.stat_bullets = 26;
         _loc1_.stat_class = 0;
         _loc1_.sou = MovieClip(root).s_wea_real_rifle;
         _loc1_.stat_cursor = 0;
         _loc1_.cost = 1300;
         _loc1_.costupg = 200;
         _loc1_.len1 = -6;
         _loc1_.len2 = 28;
         _loc1_.size1 = 10;
         _loc1_.size2 = 6;
         _loc1_.forcars = false;
         MovieClip(root).create_gun(this);
         _loc1_.gotoAndStop(2);
      }
      
      public function ThinkNow(param1:Number) : void
      {
         if(this.fire_tim > 0)
         {
            this.fire_tim -= param1;
         }
         else if(this.bullets < 2)
         {
            this.bullets = 2;
         }
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame4() : *
      {
         if(this.bullets >= 1)
         {
            --this.bullets;
            this.fire_tim = 15;
            this.ready = true;
            this.gotoAndStop(2);
            this.floatframe = 2;
         }
      }
      
      internal function frame15() : *
      {
         this.bullets = 2;
         this.ready = true;
         this.gotoAndStop(2);
         this.floatframe = 2;
      }
      
      internal function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
