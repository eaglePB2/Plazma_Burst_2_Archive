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
   
   public dynamic class incompetence_archetype_27xx extends MovieClip
   {
       
      
      public var ray:MovieClip;
      
      public var riflestatus:MovieClip;
      
      public function incompetence_archetype_27xx()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.stat_power = 0.75;
         this.stat_count = 4;
         this.stat_averange = 0.04;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.005;
         this.stat_bullets = 2;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_incompetence_archetype_27xx_fire;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 15;
         this.size1 = 7;
         this.size2 = 3;
         this.cost = 1500;
         this.costupg = 400;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
