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
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class menu_button_31 extends MovieClip
   {
       
      
      public var __animFactory_ghostExport3D1:AnimatorFactory3D;
      
      public var __motion_ghostExport3D1:MotionBase;
      
      public var ghost:MovieClip;
      
      public var txt:TextField;
      
      public var ____motion_ghostExport3D1_mat3DVec_0_:Vector.<Number>;
      
      public var btn_over:MovieClip;
      
      public function menu_button_31()
      {
         super();
         if(this.__motion_ghostExport3D1 == null)
         {
            this.__motion_ghostExport3D1 = new MotionBase();
            this.__motion_ghostExport3D1.duration = 1;
            this.__motion_ghostExport3D1.overrideTargetTransform();
            this.__motion_ghostExport3D1.addPropertyArray("blendMode",["normal"]);
            this.____motion_ghostExport3D1_mat3DVec_0_ = new Vector.<Number>(16);
            this.____motion_ghostExport3D1_mat3DVec_0_[0] = 1;
            this.____motion_ghostExport3D1_mat3DVec_0_[1] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[2] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[3] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[4] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[5] = 1;
            this.____motion_ghostExport3D1_mat3DVec_0_[6] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[7] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[8] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[9] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[10] = 1;
            this.____motion_ghostExport3D1_mat3DVec_0_[11] = 0;
            this.____motion_ghostExport3D1_mat3DVec_0_[12] = 100.699997;
            this.____motion_ghostExport3D1_mat3DVec_0_[13] = 11;
            this.____motion_ghostExport3D1_mat3DVec_0_[14] = -117;
            this.____motion_ghostExport3D1_mat3DVec_0_[15] = 1;
            this.__motion_ghostExport3D1.addPropertyArray("matrix3D",new Array(new Matrix3D(this.____motion_ghostExport3D1_mat3DVec_0_)));
            this.__animFactory_ghostExport3D1 = new AnimatorFactory3D(this.__motion_ghostExport3D1);
            this.__animFactory_ghostExport3D1.sceneName = "menu_button";
            this.__animFactory_ghostExport3D1.addTargetInfo(this,"ghost",0,true,0,true,null);
         }
      }
   }
}
