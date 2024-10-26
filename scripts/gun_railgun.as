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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol682")]
   public dynamic class gun_railgun extends MovieClip
   {
      public function gun_railgun()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,14,this.frame15,17,this.frame18,34,this.frame35);
      }
      
      public function onmade() : void
      {
         this.wep = 4;
         this.zpos = 3;
         this.ready = true;
         this.attachment = 1;
         this.xpos1 = 0.4;
         this.xpos2 = 1;
         this.stat_power = 4;
         this.stat_count = 1;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0.25;
         this.stat_averange_add = 0.2;
         this.stat_averange_substract = 0.004;
         this.stat_bullets = 1;
         this.stat_class = 2;
         this.sou = MovieClip(root).s_wea_railgun;
         this.stat_cursor = 2;
         this.cost = 2500;
         this.costupg = 850;
         if(!MovieClip(root).MP_mode)
         {
            if(this.upg == 0)
            {
               this.stat_averange = 0.1;
               this.stat_power = 2.5;
            }
            if(this.upg == 1)
            {
               this.stat_averange = 0.05;
               this.stat_power = 3;
            }
            if(this.upg == 2)
            {
               this.stat_averange = 0.02;
               this.stat_power = 3.5;
            }
            if(this.upg == 3)
            {
               this.stat_averange = 0;
               this.stat_power = 4;
            }
         }
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
      
      internal function frame6() : *
      {
         this.xpos2 = 0.8;
      }
      
      internal function frame15() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               if(this.picken_by == -1 || MovieClip(root).mens[this.picken_by].curwea != this.idd)
               {
                  this.gotoAndPlay(10);
                  this.floatframe = 10;
               }
            }
         }
      }
      
      internal function frame18() : *
      {
         if(MovieClip(root) != null)
         {
            if(MovieClip(root).currentLabel == "gaming")
            {
               MovieClip(root).PlaySound(MovieClip(root).s_reload,this.x,this.y);
               this.xpos2 = 1;
            }
         }
      }
      
      internal function frame35() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

