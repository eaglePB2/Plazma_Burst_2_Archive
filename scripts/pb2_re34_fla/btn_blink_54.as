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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3545")]
   public dynamic class btn_blink_54 extends MovieClip
   {
      
      public var __id0_:MovieClip;
      
      public var __id1_:MovieClip;
      
      public var __id2_:MovieClip;
      
      public var __id3_:MovieClip;
      
      public var __animFactory___id0_af1:AnimatorFactory3D;
      
      public var __animArray___id0_af1:Array;
      
      public var ____motion___id0_af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion___id0_af1_matArray__:Array;
      
      public var __motion___id0_af1:MotionBase;
      
      public var __animFactory___id1_af1:AnimatorFactory3D;
      
      public var __animArray___id1_af1:Array;
      
      public var ____motion___id1_af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion___id1_af1_matArray__:Array;
      
      public var __motion___id1_af1:MotionBase;
      
      public var __animFactory___id2_af1:AnimatorFactory3D;
      
      public var __animArray___id2_af1:Array;
      
      public var ____motion___id2_af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion___id2_af1_matArray__:Array;
      
      public var __motion___id2_af1:MotionBase;
      
      public var __animFactory___id3_af1:AnimatorFactory3D;
      
      public var __animArray___id3_af1:Array;
      
      public var ____motion___id3_af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion___id3_af1_matArray__:Array;
      
      public var __motion___id3_af1:MotionBase;
      
      public function btn_blink_54()
      {
         super();
         if(this.__animFactory___id0_af1 == null)
         {
            this.__animArray___id0_af1 = new Array();
            this.__motion___id0_af1 = new MotionBase();
            this.__motion___id0_af1.duration = 2;
            this.__motion___id0_af1.overrideTargetTransform();
            this.__motion___id0_af1.addPropertyArray("blendMode",["normal","normal"]);
            this.__motion___id0_af1.addPropertyArray("cacheAsBitmap",[false,false]);
            this.__motion___id0_af1.addPropertyArray("opaqueBackground",[null,null]);
            this.__motion___id0_af1.addPropertyArray("visible",[true,true]);
            this.__motion___id0_af1.is3D = true;
            this.__motion___id0_af1.motion_internal::spanStart = 0;
            this.____motion___id0_af1_matArray__ = new Array();
            this.____motion___id0_af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion___id0_af1_mat3DVec__[0] = 1;
            this.____motion___id0_af1_mat3DVec__[1] = 0;
            this.____motion___id0_af1_mat3DVec__[2] = 0;
            this.____motion___id0_af1_mat3DVec__[3] = 0;
            this.____motion___id0_af1_mat3DVec__[4] = 0;
            this.____motion___id0_af1_mat3DVec__[5] = 0;
            this.____motion___id0_af1_mat3DVec__[6] = 1;
            this.____motion___id0_af1_mat3DVec__[7] = 0;
            this.____motion___id0_af1_mat3DVec__[8] = 0;
            this.____motion___id0_af1_mat3DVec__[9] = -1;
            this.____motion___id0_af1_mat3DVec__[10] = 0;
            this.____motion___id0_af1_mat3DVec__[11] = 0;
            this.____motion___id0_af1_mat3DVec__[12] = 0;
            this.____motion___id0_af1_mat3DVec__[13] = 0;
            this.____motion___id0_af1_mat3DVec__[14] = 0;
            this.____motion___id0_af1_mat3DVec__[15] = 1;
            this.____motion___id0_af1_matArray__.push(new Matrix3D(this.____motion___id0_af1_mat3DVec__));
            this.____motion___id0_af1_matArray__.push(null);
            this.__motion___id0_af1.addPropertyArray("matrix3D",this.____motion___id0_af1_matArray__);
            this.__animArray___id0_af1.push(this.__motion___id0_af1);
            this.__animFactory___id0_af1 = new AnimatorFactory3D(null,this.__animArray___id0_af1);
            this.__animFactory___id0_af1.addTargetInfo(this,"__id0_",0,true,0,true,null,-1);
         }
         if(this.__animFactory___id1_af1 == null)
         {
            this.__animArray___id1_af1 = new Array();
            this.__motion___id1_af1 = new MotionBase();
            this.__motion___id1_af1.duration = 2;
            this.__motion___id1_af1.overrideTargetTransform();
            this.__motion___id1_af1.addPropertyArray("blendMode",["normal","normal"]);
            this.__motion___id1_af1.addPropertyArray("cacheAsBitmap",[false,false]);
            this.__motion___id1_af1.addPropertyArray("opaqueBackground",[null,null]);
            this.__motion___id1_af1.addPropertyArray("visible",[true,true]);
            this.__motion___id1_af1.is3D = true;
            this.__motion___id1_af1.motion_internal::spanStart = 0;
            this.____motion___id1_af1_matArray__ = new Array();
            this.____motion___id1_af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion___id1_af1_mat3DVec__[0] = 1;
            this.____motion___id1_af1_mat3DVec__[1] = 0;
            this.____motion___id1_af1_mat3DVec__[2] = 0;
            this.____motion___id1_af1_mat3DVec__[3] = 0;
            this.____motion___id1_af1_mat3DVec__[4] = 0;
            this.____motion___id1_af1_mat3DVec__[5] = 0;
            this.____motion___id1_af1_mat3DVec__[6] = 1;
            this.____motion___id1_af1_mat3DVec__[7] = 0;
            this.____motion___id1_af1_mat3DVec__[8] = 0;
            this.____motion___id1_af1_mat3DVec__[9] = -1;
            this.____motion___id1_af1_mat3DVec__[10] = 0;
            this.____motion___id1_af1_mat3DVec__[11] = 0;
            this.____motion___id1_af1_mat3DVec__[12] = 0;
            this.____motion___id1_af1_mat3DVec__[13] = 20;
            this.____motion___id1_af1_mat3DVec__[14] = 0;
            this.____motion___id1_af1_mat3DVec__[15] = 1;
            this.____motion___id1_af1_matArray__.push(new Matrix3D(this.____motion___id1_af1_mat3DVec__));
            this.____motion___id1_af1_matArray__.push(null);
            this.__motion___id1_af1.addPropertyArray("matrix3D",this.____motion___id1_af1_matArray__);
            this.__animArray___id1_af1.push(this.__motion___id1_af1);
            this.__animFactory___id1_af1 = new AnimatorFactory3D(null,this.__animArray___id1_af1);
            this.__animFactory___id1_af1.addTargetInfo(this,"__id1_",0,true,0,true,null,-1);
         }
         if(this.__animFactory___id2_af1 == null)
         {
            this.__animArray___id2_af1 = new Array();
            this.__motion___id2_af1 = new MotionBase();
            this.__motion___id2_af1.duration = 2;
            this.__motion___id2_af1.overrideTargetTransform();
            this.__motion___id2_af1.addPropertyArray("blendMode",["normal","normal"]);
            this.__motion___id2_af1.addPropertyArray("cacheAsBitmap",[false,false]);
            this.__motion___id2_af1.addPropertyArray("opaqueBackground",[null,null]);
            this.__motion___id2_af1.addPropertyArray("visible",[true,true]);
            this.__motion___id2_af1.is3D = true;
            this.__motion___id2_af1.motion_internal::spanStart = 0;
            this.____motion___id2_af1_matArray__ = new Array();
            this.____motion___id2_af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion___id2_af1_mat3DVec__[0] = 0;
            this.____motion___id2_af1_mat3DVec__[1] = 0.099991;
            this.____motion___id2_af1_mat3DVec__[2] = 0;
            this.____motion___id2_af1_mat3DVec__[3] = 0;
            this.____motion___id2_af1_mat3DVec__[4] = 0;
            this.____motion___id2_af1_mat3DVec__[5] = 0;
            this.____motion___id2_af1_mat3DVec__[6] = 1;
            this.____motion___id2_af1_mat3DVec__[7] = 0;
            this.____motion___id2_af1_mat3DVec__[8] = 1;
            this.____motion___id2_af1_mat3DVec__[9] = 0;
            this.____motion___id2_af1_mat3DVec__[10] = 0;
            this.____motion___id2_af1_mat3DVec__[11] = 0;
            this.____motion___id2_af1_mat3DVec__[12] = 0.000006;
            this.____motion___id2_af1_mat3DVec__[13] = 0;
            this.____motion___id2_af1_mat3DVec__[14] = -0.000004;
            this.____motion___id2_af1_mat3DVec__[15] = 1;
            this.____motion___id2_af1_matArray__.push(new Matrix3D(this.____motion___id2_af1_mat3DVec__));
            this.____motion___id2_af1_matArray__.push(null);
            this.__motion___id2_af1.addPropertyArray("matrix3D",this.____motion___id2_af1_matArray__);
            this.__animArray___id2_af1.push(this.__motion___id2_af1);
            this.__animFactory___id2_af1 = new AnimatorFactory3D(null,this.__animArray___id2_af1);
            this.__animFactory___id2_af1.addTargetInfo(this,"__id2_",0,true,0,true,null,-1);
         }
         if(this.__animFactory___id3_af1 == null)
         {
            this.__animArray___id3_af1 = new Array();
            this.__motion___id3_af1 = new MotionBase();
            this.__motion___id3_af1.duration = 2;
            this.__motion___id3_af1.overrideTargetTransform();
            this.__motion___id3_af1.addPropertyArray("blendMode",["normal","normal"]);
            this.__motion___id3_af1.addPropertyArray("cacheAsBitmap",[false,false]);
            this.__motion___id3_af1.addPropertyArray("opaqueBackground",[null,null]);
            this.__motion___id3_af1.addPropertyArray("visible",[true,true]);
            this.__motion___id3_af1.is3D = true;
            this.__motion___id3_af1.motion_internal::spanStart = 0;
            this.____motion___id3_af1_matArray__ = new Array();
            this.____motion___id3_af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion___id3_af1_mat3DVec__[0] = 0;
            this.____motion___id3_af1_mat3DVec__[1] = 0.099991;
            this.____motion___id3_af1_mat3DVec__[2] = 0;
            this.____motion___id3_af1_mat3DVec__[3] = 0;
            this.____motion___id3_af1_mat3DVec__[4] = 0;
            this.____motion___id3_af1_mat3DVec__[5] = 0;
            this.____motion___id3_af1_mat3DVec__[6] = 1;
            this.____motion___id3_af1_mat3DVec__[7] = 0;
            this.____motion___id3_af1_mat3DVec__[8] = 1;
            this.____motion___id3_af1_mat3DVec__[9] = 0;
            this.____motion___id3_af1_mat3DVec__[10] = 0;
            this.____motion___id3_af1_mat3DVec__[11] = 0;
            this.____motion___id3_af1_mat3DVec__[12] = 200;
            this.____motion___id3_af1_mat3DVec__[13] = 0;
            this.____motion___id3_af1_mat3DVec__[14] = -0.000004;
            this.____motion___id3_af1_mat3DVec__[15] = 1;
            this.____motion___id3_af1_matArray__.push(new Matrix3D(this.____motion___id3_af1_mat3DVec__));
            this.____motion___id3_af1_matArray__.push(null);
            this.__motion___id3_af1.addPropertyArray("matrix3D",this.____motion___id3_af1_matArray__);
            this.__animArray___id3_af1.push(this.__motion___id3_af1);
            this.__animFactory___id3_af1 = new AnimatorFactory3D(null,this.__animArray___id3_af1);
            this.__animFactory___id3_af1.addTargetInfo(this,"__id3_",0,true,0,true,null,-1);
         }
      }
   }
}

