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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol660")]
   public dynamic class gun_rl0 extends MovieClip
   {
      public function gun_rl0()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,22,this.frame23,24,this.frame25,29,this.frame30);
      }
      
      public function onmade() : void
      {
         this.wep = 5;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.6;
         this.xpos2 = 1;
         this.stat_power = 2.5;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.4;
         this.stat_averange_add = 0.2;
         this.stat_averange_substract = 0.01;
         this.stat_bullets = 7;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_rocket;
         this.stat_cursor = 2;
         this.len1 = 0;
         this.len2 = 29;
         this.size1 = 9;
         this.size2 = 7;
         this.cost = 1800;
         this.costupg = 650;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame15() : *
      {
         this.xpos1 = 0.6;
         this.xpos2 = 0.6;
      }
      
      internal function frame23() : *
      {
         this.xpos1 = 0.6;
         this.xpos2 = 1;
      }
      
      internal function frame25() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by == -1 || MovieClip(root).mens[this.picken_by].curwea != this.idd)
               {
                  this.gotoAndPlay(23);
                  this.floatframe = 23;
               }
               else
               {
                  this.xpos1 = 0.6;
                  this.xpos2 = 1;
                  MovieClip(root).PlaySound(MovieClip(root).s_rl_reload,this.x,this.y);
               }
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

