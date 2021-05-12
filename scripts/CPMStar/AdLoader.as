package CPMStar
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   
   public class AdLoader extends Sprite
   {
       
      
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
         Security.allowDomain("server.cpmstar.com");
         var _loc3_:DisplayObjectContainer = parent;
         this.cpmstarLoader = new Loader();
         this.cpmstarLoader.contentLoaderInfo.addEventListener(Event.INIT,this.dispatchHandler);
         this.cpmstarLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.dispatchHandler);
         this.cpmstarLoader.load(new URLRequest("http://server.cpmstar.com/adviewas3.swf" + "?contentspotid=" + this.contentspotid));
         addChild(this.cpmstarLoader);
      }
      
      private function dispatchHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
   }
}
