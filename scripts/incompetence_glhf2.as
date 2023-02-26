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
   
   public dynamic class incompetence_glhf2 extends MovieClip
   {
       
      
      public function incompetence_glhf2()
      {
         super();
         addFrameScript(0,this.frame1,13,this.frame14);
      }
      
      public function onmade() : void
      {
         if(!MovieClip(root).MP_mode && !MovieClip(root).FORCE_CUSTOM_MAP)
         {
            this.wep = 6;
         }
         else
         {
            this.wep = 5;
         }
         this.zpos = 5;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.75;
         this.xpos2 = 1;
         this.stat_power = 1.8;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.003;
         this.stat_bullets = 42;
         this.stat_class = 4;
         this.sou = MovieClip(root).s_wea_glhf;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 38;
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
      
      internal function frame14() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
