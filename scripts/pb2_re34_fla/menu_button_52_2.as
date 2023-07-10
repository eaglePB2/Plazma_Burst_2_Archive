package pb2_re34_fla
{
   import fl.motion.*;
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
   
   public dynamic class menu_button_52 extends MovieClip
   {
       
      
      public var btn_over:MovieClip;
      
      public var ghost:MovieClip;
      
      public var txt:TextField;
      
      public var __animFactory_ghostaf1:AnimatorFactory3D;
      
      public var __animArray_ghostaf1:Array;
      
      public var ____motion_ghostaf1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_ghostaf1_matArray__:Array;
      
      public var __motion_ghostaf1:MotionBase;
      
      public function menu_button_52()
      {
         super();
         if(this.__animFactory_ghostaf1 == null)
         {
            this.__animArray_ghostaf1 = new Array();
            this.__motion_ghostaf1 = new MotionBase();
            this.__motion_ghostaf1.duration = 1;
            this.__motion_ghostaf1.overrideTargetTransform();
            this.__motion_ghostaf1.addPropertyArray("blendMode",["normal"]);
            this.__motion_ghostaf1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion_ghostaf1.addPropertyArray("opaqueBackground",[null]);
            this.__motion_ghostaf1.addPropertyArray("visible",[true]);
            this.__motion_ghostaf1.is3D = true;
            this.__motion_ghostaf1.motion_internal::spanStart = 0;
            this.____motion_ghostaf1_matArray__ = new Array();
            this.____motion_ghostaf1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion_ghostaf1_mat3DVec__[0] = 1;
            this.____motion_ghostaf1_mat3DVec__[1] = 0;
            this.____motion_ghostaf1_mat3DVec__[2] = 0;
            this.____motion_ghostaf1_mat3DVec__[3] = 0;
            this.____motion_ghostaf1_mat3DVec__[4] = 0;
            this.____motion_ghostaf1_mat3DVec__[5] = 1;
            this.____motion_ghostaf1_mat3DVec__[6] = 0;
            this.____motion_ghostaf1_mat3DVec__[7] = 0;
            this.____motion_ghostaf1_mat3DVec__[8] = 0;
            this.____motion_ghostaf1_mat3DVec__[9] = 0;
            this.____motion_ghostaf1_mat3DVec__[10] = 1;
            this.____motion_ghostaf1_mat3DVec__[11] = 0;
            this.____motion_ghostaf1_mat3DVec__[12] = 100.699997;
            this.____motion_ghostaf1_mat3DVec__[13] = 11;
            this.____motion_ghostaf1_mat3DVec__[14] = -117;
            this.____motion_ghostaf1_mat3DVec__[15] = 1;
            this.____motion_ghostaf1_matArray__.push(new Matrix3D(this.____motion_ghostaf1_mat3DVec__));
            this.__motion_ghostaf1.addPropertyArray("matrix3D",this.____motion_ghostaf1_matArray__);
            this.__animArray_ghostaf1.push(this.__motion_ghostaf1);
            this.__animFactory_ghostaf1 = new AnimatorFactory3D(null,this.__animArray_ghostaf1);
            this.__animFactory_ghostaf1.addTargetInfo(this,"ghost",0,true,0,true,null,-1);
         }
      }
   }
}
