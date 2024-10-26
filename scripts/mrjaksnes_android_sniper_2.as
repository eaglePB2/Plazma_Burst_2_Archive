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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1636")]
   public dynamic class mrjaksnes_android_sniper extends MovieClip
   {
      public var ray:MovieClip;
      
      public var riflestatus:MovieClip;
      
      public function mrjaksnes_android_sniper()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,19,this.frame20,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         var _loc1_:* = this;
         _loc1_.bullets = 1;
         _loc1_.fire_tim = 0;
         this.zpos = 6;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 1.7;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.5;
         this.stat_averange_add = 0.5;
         this.stat_averange_substract = 0.1;
         this.stat_bullets = 39;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_android_sniper;
         this.stat_cursor = 0;
         this.cost = 2500;
         this.costupg = 850;
         this.len1 = 0;
         this.len2 = 43;
         this.size1 = 12;
         this.size2 = 5;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame5() : *
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
      
      internal function frame20() : *
      {
         this.bullets = 1;
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

