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
   
   public dynamic class gun_rayrifle extends MovieClip
   {
       
      
      public function gun_rayrifle()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      public function onmade() : void
      {
         this.wep = 2;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 0.9;
         this.stat_count = 1;
         this.stat_averange = 0.15;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.4;
         this.stat_averange_add = 0.06;
         this.stat_averange_substract = 0.03;
         this.stat_bullets = 6;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_s_gun_rayrifle;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 16;
         this.size1 = 10;
         this.size2 = 6;
         this.cost = 1800;
         this.costupg = 800;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      function frame5() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
