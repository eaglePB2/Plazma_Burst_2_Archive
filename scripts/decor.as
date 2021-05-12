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
   
   public dynamic class decor extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var rays_last:ag_rays2;
      
      public var rays2:ag_rays2;
      
      public var signn:TextField;
      
      public var rays3:ag_rays2;
      
      public var rays_not_last:MovieClip;
      
      public var rays2x:MovieClip;
      
      public var rays:ag_rays;
      
      public var rays3x:MovieClip;
      
      public var rr;
      
      public var rr2;
      
      public var rr3;
      
      public var rr2t;
      
      public var rr4;
      
      public var rr5;
      
      public function decor()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,5,this.frame6,6,this.frame7,16,this.frame17,32,this.frame33,33,this.frame34);
      }
      
      function frame1() : *
      {
         this.stop();
      }
      
      function frame5() : *
      {
         this.onFrameChange = function():void
         {
            if(rr != null)
            {
               rr.parent.removeChild(rr);
               rr = null;
            }
            this.onFrameChange = null;
            this.onMove = null;
         };
         this.onMove = function():void
         {
            rr.x = this.x + this.rays.x;
            rr.y = this.y + this.rays.y;
            rr.scaleX = this.scaleX;
            rr.scaleY = this.scaleY;
         };
         this.rays.visible = false;
         if(!this.rr)
         {
            this.rr = MovieClip(root).graphics_3d_front.addChildAt(new ag_rays(),MovieClip(root).graphics_3d_front.numChildren);
         }
         this.onMove();
         this.rr.filters = this.rays.filters;
         this.signn.text = "AG-" + Math.floor(Math.random() * 9.9) + Math.floor(Math.random() * 9.9);
      }
      
      function frame6() : *
      {
         this.onFrameChange = function():void
         {
            if(rr2 != null)
            {
               rr2.parent.removeChild(rr2);
               rr2 = null;
            }
            this.onFrameChange = null;
            this.onMove = null;
         };
         this.onMove = function():void
         {
            rr2.x = this.x + this.rays2.x;
            rr2.y = this.y + this.rays2.y;
            rr2.rotation = this.rays2.rotation;
            rr2.scaleX = this.scaleX;
            rr2.scaleY = this.scaleY;
         };
         this.rays2.visible = false;
         if(!this.rr2)
         {
            this.rr2 = MovieClip(root).graphics_3d_front.addChildAt(new ag_rays2(),MovieClip(root).graphics_3d_front.numChildren);
         }
         this.onMove();
         this.rr2.filters = this.rays2.filters;
      }
      
      function frame7() : *
      {
         this.onFrameChange = function():void
         {
            if(rr3 != null)
            {
               rr3.parent.removeChild(rr3);
               rr3 = null;
            }
            this.onFrameChange = null;
            this.onMove = null;
         };
         this.onMove = function():void
         {
            rr3.x = this.x + this.rays3.x;
            rr3.y = this.y + this.rays3.y;
            rr3.rotation = this.rays3.rotation;
            rr3.scaleX = this.scaleX;
            rr3.scaleY = this.scaleY;
         };
         this.rays3.visible = false;
         if(!this.rr3)
         {
            this.rr3 = MovieClip(root).graphics_3d_front.addChildAt(new ag_rays2(),MovieClip(root).graphics_3d_front.numChildren);
         }
         this.onMove();
         this.rr3.filters = this.rays3.filters;
      }
      
      function frame17() : *
      {
         this.onFrameChange = function():void
         {
            if(rr2t != null)
            {
               rr2t.parent.removeChild(rr2t);
               rr2t = null;
            }
            this.onFrameChange = null;
            this.onMove = null;
         };
         this.onMove = function():void
         {
            rr2t.x = this.x + this.rays_last.x;
            rr2t.y = this.y + this.rays_last.y;
            rr2t.scaleX = this.rays_last.scaleX;
            rr2t.scaleY = this.rays_last.scaleY;
            rr2t.rotation = this.rays_last.rotation;
            rr2t.scaleX = this.scaleX * this.rays_last.scaleX;
            rr2t.scaleY = this.scaleY * this.rays_last.scaleY;
         };
         this.rays_last.visible = false;
         if(!this.rr2t)
         {
            this.rr2t = MovieClip(root).graphics_3d_front.addChildAt(new ag_rays2(),MovieClip(root).graphics_3d_front.numChildren);
         }
         this.onMove();
         this.rr2t.filters = this.rays_last.filters;
      }
      
      function frame33() : *
      {
         this.onFrameChange = function():void
         {
            if(rr4 != null)
            {
               rr4.parent.removeChild(rr4);
               rr4 = null;
            }
            this.onFrameChange = null;
            this.onMove = null;
         };
         this.onMove = function():void
         {
            rr4.x = this.x + this.rays.x;
            rr4.y = this.y + this.rays.y;
            rr4.rotation = this.rays.rotation;
            rr4.scaleX = this.scaleX;
            rr4.scaleY = this.scaleY;
         };
         this.rays.visible = false;
         if(!this.rr4)
         {
            this.rr4 = MovieClip(root).graphics_3d_front.addChildAt(new ag_rays(),MovieClip(root).graphics_3d_front.numChildren);
         }
         this.onMove();
         this.rr4.filters = this.rays.filters;
         this.signn.text = "AG-" + Math.floor(Math.random() * 9.9) + Math.floor(Math.random() * 9.9);
      }
      
      function frame34() : *
      {
         this.onFrameChange = function():void
         {
            if(rr5 != null)
            {
               rr5.parent.removeChild(rr5);
               rr5 = null;
            }
            this.onFrameChange = null;
            this.onMove = null;
         };
         this.onMove = function():void
         {
            rr5.x = this.x + this.rays.x;
            rr5.y = this.y + this.rays.y;
            rr5.rotation = this.rays.rotation;
            rr5.scaleX = this.scaleX;
            rr5.scaleY = this.scaleY;
         };
         this.rays.visible = false;
         if(!this.rr5)
         {
            this.rr5 = MovieClip(root).graphics_3d_front.addChildAt(new ag_rays(),MovieClip(root).graphics_3d_front.numChildren);
         }
         this.onMove();
         this.rr5.filters = this.rays.filters;
         this.signn.text = "AG-" + Math.floor(Math.random() * 9.9) + Math.floor(Math.random() * 9.9);
      }
   }
}
