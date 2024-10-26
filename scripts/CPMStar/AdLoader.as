package CPMStar
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   
   public class AdLoader extends Sprite
   {
      public static var cpmstar_loaded_object:DisplayObject = null;
      
      public static var context:LoaderContext = Security.sandboxType == Security.REMOTE ? new LoaderContext(false,ApplicationDomain.currentDomain,SecurityDomain.currentDomain) : null;
      
      private var cpmstarLoader:Loader;
      
      private var contentspotid:String;
      
      public function AdLoader(param1:String)
      {
         super();
         this.contentspotid = param1;
         addEventListener(Event.ADDED,this.addedHandler);
      }
      
      private function addedHandler(param1:Event) : void
      {
         removeEventListener(Event.ADDED,this.addedHandler);
         try
         {
            Security.allowDomain("https://server.cpmstar.com");
         }
         catch(e:*)
         {
         }
         var _loc2_:String = "https://server.cpmstar.com/adviewas3.swf";
         var _loc3_:DisplayObjectContainer = parent;
         this.cpmstarLoader = new Loader();
         this.cpmstarLoader.contentLoaderInfo.addEventListener(Event.INIT,this.dispatchHandler);
         this.cpmstarLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.dispatchHandler);
         this.cpmstarLoader.load(new URLRequest(_loc2_ + "?contentspotid=" + this.contentspotid + "&blockchildads=1&blockoverlays=1"),context);
         cpmstar_loaded_object = this.addChild(this.cpmstarLoader);
      }
      
      private function dispatchHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
   }
}

