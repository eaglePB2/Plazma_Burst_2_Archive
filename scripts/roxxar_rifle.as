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
   
   public dynamic class roxxar_rifle extends MovieClip
   {
       
      
      public function roxxar_rifle()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,14,this.frame15,24,this.frame25);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.bullets = 2;
         this.fire_tim = 0;
         this.stat_power = 0.4;
         this.stat_count = 2;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 34;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_roxxar_rifle;
         this.stat_cursor = 0;
         this.cost = 1300;
         this.costupg = 200;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 7;
         this.size2 = 6;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
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
      
      function frame1() : *
      {
      }
      
      function frame4() : *
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
      
      function frame15() : *
      {
         this.bullets = 2;
         this.ready = true;
         this.gotoAndStop(2);
         this.floatframe = 2;
      }
      
      function frame25() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
