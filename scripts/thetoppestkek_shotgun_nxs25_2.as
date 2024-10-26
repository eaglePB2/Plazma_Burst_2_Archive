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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1991")]
   public dynamic class thetoppestkek_shotgun_nxs25 extends MovieClip
   {
      public function thetoppestkek_shotgun_nxs25()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,22,this.frame23,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 3;
         this.zpos = 7;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.5;
         this.xpos2 = 1;
         this.stat_power = 1.1;
         this.stat_count = 4;
         this.stat_averange = 0.28;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.2;
         this.stat_averange_add = 0.1;
         this.stat_averange_substract = 0.005;
         this.stat_bullets = 1;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_thetoppestkek_shotgun_nxs25;
         this.stat_cursor = 1;
         this.len1 = 0;
         this.len2 = 30;
         this.size1 = 7;
         this.size2 = 4;
         this.cost = 1600;
         this.costupg = 300;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame5() : *
      {
         this.xpos2 = 0.8;
      }
      
      internal function frame23() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by == -1 || MovieClip(root).mens[this.picken_by].curwea != this.idd)
               {
                  this.gotoAndPlay(6);
                  this.floatframe = 6;
               }
               else
               {
                  MovieClip(root).PlaySound(MovieClip(root).s_wea_real_shotgun_r,this.x,this.y);
               }
               this.xpos2 = 1;
            }
         }
      }
      
      internal function frame30() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

