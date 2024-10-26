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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2624")]
   public dynamic class item_grenade_shield extends MovieClip
   {
      public function item_grenade_shield()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9);
      }
      
      public function onmade() : void
      {
         this.wep = -2;
         this.zpos = 7;
         this.attachment = 0;
         this.xpos1 = 0.9;
         this.xpos2 = 1;
         this.ready = true;
         this.stat_power = 0;
         this.stat_count = 0;
         this.stat_averange = 0;
         this.stat_averange_min = 0;
         this.stat_averange_max = 0;
         this.stat_averange_add = 0;
         this.stat_averange_substract = 0;
         this.stat_bullets = 3;
         this.stat_class = 0;
         this.stat_cursor = 1;
         this.nadekind = 3;
         this.cost = 200;
         this.costupg = 0;
         this.len1 = 0;
         this.len2 = 2;
         this.size1 = 5;
         this.size2 = 5;
         this.forcars = false;
         MovieClip(root).create_gun(this);
         this.gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame9() : *
      {
         this.ready = true;
         this.gotoAndStop(2);
      }
   }
}

