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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2697")]
   public dynamic class m4a1_real extends MovieClip
   {
      
      public function m4a1_real()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,12,this.frame13,14,this.frame15,22,this.frame23,24,this.frame25,35,this.frame36,37,this.frame38,39,this.frame40);
      }
      
      public function onmade() : void
      {
         this.wep = 2;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.4;
         this.xpos2 = 1;
         this.stat_power = 1.2;
         this.stat_count = 1;
         this.stat_averange = 0.05;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.4;
         this.stat_averange_add = 0.07;
         this.stat_averange_substract = 0.03;
         this.stat_bullets = 15;
         this.stat_class = 0;
         this.sou = MovieClip(root).s_wea_real_rifle;
         this.stat_cursor = 0;
         this.maxbullets = 30;
         this.curbullets = 30;
         this.cost = 2500;
         this.costupg = 850;
         this.len1 = 0;
         this.len2 = 25;
         this.size1 = 7;
         this.size2 = 5;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame4() : *
      {
         --this.curbullets;
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.curbullets <= 0 || this.curbullets < this.maxbullets / 2 && this.picken_by != -1 && !MovieClip(root).mens[this.picken_by].dead && MovieClip(root).mens[this.picken_by].curwea == this.idd && !MovieClip(root).mens[this.picken_by].act_fire)
               {
                  this.gotoAndPlay(10);
               }
               else
               {
                  this.xpos1 = 0.4;
                  this.xpos2 = 1;
                  this.ready = true;
                  this.gotoAndStop(2);
               }
            }
         }
      }
      
      internal function frame13() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by == -1 || MovieClip(root).mens[this.picken_by].curwea != this.idd)
               {
                  this.gotoAndPlay(11);
                  this.floatframe = 11;
               }
            }
         }
      }
      
      internal function frame15() : *
      {
         this.xpos1 = 0.3;
         this.xpos2 = 0.7;
      }
      
      internal function frame23() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by == -1 || MovieClip(root).mens[this.picken_by].curwea != this.idd)
               {
                  this.gotoAndPlay(20);
                  this.floatframe = 20;
               }
            }
         }
      }
      
      internal function frame25() : *
      {
         this.xpos1 = 0.3;
         this.xpos2 = 1;
      }
      
      internal function frame36() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by == -1 || MovieClip(root).mens[this.picken_by].curwea != this.idd)
               {
                  this.gotoAndPlay(35);
                  this.floatframe = 35;
               }
            }
         }
      }
      
      internal function frame38() : *
      {
         this.curbullets = this.maxbullets;
      }
      
      internal function frame40() : *
      {
         this.xpos1 = 0.4;
         this.xpos2 = 1;
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

