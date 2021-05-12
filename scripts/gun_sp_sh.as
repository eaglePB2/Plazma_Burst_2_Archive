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
   
   public dynamic class gun_sp_sh extends MovieClip
   {
       
      
      public function gun_sp_sh()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,24,this.frame25,39,this.frame40);
      }
      
      public function onmade() : void
      {
         this.wep = 7;
         this.zpos = 0;
         this.ready = true;
         this.attachment = 0;
         this.xpos1 = 0.7;
         this.xpos2 = 0.7;
         this.stat_power = 10;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.05;
         this.stat_averange_substract = 0.003;
         this.stat_bullets = 19;
         this.stat_class = 6;
         this.sou = MovieClip(root).s_nade_throw;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 2;
         this.size1 = 5;
         this.size2 = 5;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      function frame1() : *
      {
      }
      
      function frame3() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by != -1)
               {
                  MovieClip(root).mens[this.picken_by].curwea = -1;
                  this.stat_power = 0;
                  this.command = -10;
                  this.picken_by = -1;
               }
            }
         }
      }
      
      function frame25() : *
      {
         gotoAndPlay(10);
      }
      
      function frame40() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}
