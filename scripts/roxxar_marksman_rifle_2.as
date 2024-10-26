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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol711")]
   public dynamic class roxxar_marksman_rifle extends MovieClip
   {
      public function roxxar_marksman_rifle()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,12,this.frame13,21,this.frame22);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         this.zpos = 4;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.4;
         this.xpos2 = 1;
         this.stat_power = 2.9;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.25;
         this.stat_averange_add = 0.2;
         this.stat_averange_substract = 0.004;
         this.stat_bullets = 36;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_railgun;
         this.stat_cursor = 2;
         this.cost = 2500;
         this.costupg = 850;
         this.len1 = 0;
         this.len2 = 45;
         this.size1 = 9;
         this.size2 = 5;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame6() : *
      {
         this.xpos2 = 0.8;
      }
      
      internal function frame13() : *
      {
         this.xpos2 = 1;
      }
      
      internal function frame22() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

