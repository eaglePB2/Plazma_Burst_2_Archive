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
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class gun_m4a1 extends MovieClip
   {
       
      
      public function gun_m4a1()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      function frame5() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      public function onmade() : void
      {
         this.wep = 2;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 1;
         this.stat_count = 1;
         this.stat_averange = 0.2;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.3;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.015;
         this.stat_bullets = 2;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_minigun2;
         this.stat_cursor = 0;
         this.len1 = 0;
         this.len2 = 48;
         this.size1 = 8;
         this.size2 = 4;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
   }
}
