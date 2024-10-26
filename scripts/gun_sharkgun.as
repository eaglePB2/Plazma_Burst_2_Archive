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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol627")]
   public dynamic class gun_sharkgun extends MovieClip
   {
      public function gun_sharkgun()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public function onmade() : void
      {
         this.wep = 9;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 0;
         this.xpos1 = 1;
         this.xpos2 = 1;
         this.stat_power = 1.3;
         this.stat_count = 0;
         this.stat_averange = 0.1;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 3;
         this.stat_class = 0;
         this.sou = null;
         this.stat_cursor = 0;
         this.cost = 500;
         this.costupg = 0;
         this.len1 = 0;
         this.len2 = 10;
         this.size1 = 10;
         this.size2 = 10;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame10() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

