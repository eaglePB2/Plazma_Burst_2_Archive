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
   
   public dynamic class darkstar_1_nade_c9 extends MovieClip
   {
       
      
      public function darkstar_1_nade_c9()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,59,this.frame60,69,this.frame70);
      }
      
      public function onmade() : void
      {
         this.wep = 5;
         this.zpos = 5;
         this.ready = true;
         this.attachment = 1;
         var _loc1_:* = this;
         _loc1_.bullets = 1;
         _loc1_.fire_tim = 0;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 2;
         this.stat_count = 1;
         this.stat_averange = 0.025;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.003;
         this.stat_bullets = 49;
         this.stat_class = 4;
         this.sou = MovieClip(root).s_wea_rifle_nade;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 35;
         this.size1 = 8;
         this.size2 = 6;
         this.cost = 1600;
         this.costupg = 200;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame6() : *
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
      
      internal function frame60() : *
      {
         this.bullets = 1;
         this.ready = true;
         this.gotoAndStop(2);
         this.floatframe = 2;
      }
      
      internal function frame70() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
