package com.hurlant.util
{
   import flash.utils.*;
   
   public class Base64
   {
      
      private static const _encodeChars:Vector.<int> = _initEncoreChar();
      
      private static const _decodeChars:Vector.<int> = _initDecodeChar();
       
      
      public function Base64()
      {
         super();
      }
      
      public static function encode(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         return encodeByteArray(_loc2_);
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = decodeToByteArray(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function encodeByteArray(param1:ByteArray) : String
      {
         var _loc6_:uint = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.length = (2 + param1.length - (param1.length + 2) % 3) * 4 / 3;
         var _loc3_:int = 0;
         var _loc4_:int = param1.length % 3;
         var _loc5_:int = param1.length - _loc4_;
         var _loc7_:int = 0;
         while(_loc3_ < _loc5_)
         {
            _loc6_ = param1[int(_loc3_++)] << 16 | param1[int(_loc3_++)] << 8 | param1[int(_loc3_++)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 18)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 12 & 63)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 6 & 63)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ & 63)];
         }
         if(_loc4_ == 1)
         {
            _loc6_ = param1[int(_loc3_)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 2)];
            _loc2_[int(_loc7_++)] = _encodeChars[int((_loc6_ & 3) << 4)];
            _loc2_[int(_loc7_++)] = 61;
            _loc2_[int(_loc7_++)] = 61;
         }
         else if(_loc4_ == 2)
         {
            _loc6_ = param1[int(_loc3_++)] << 8 | param1[int(_loc3_)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 10)];
            _loc2_[int(_loc7_++)] = _encodeChars[int(_loc6_ >>> 4 & 63)];
            _loc2_[int(_loc7_++)] = _encodeChars[int((_loc6_ & 15) << 2)];
            _loc2_[int(_loc7_++)] = 61;
         }
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function decodeToByteArray(param1:String) : ByteArray
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = param1.length;
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).writeUTFBytes(param1);
         var _loc9_:int = 0;
         while(_loc6_ < _loc7_)
         {
            _loc2_ = _decodeChars[int(_loc8_[_loc6_++])];
            if(_loc2_ == -1)
            {
               break;
            }
            _loc3_ = _decodeChars[int(_loc8_[_loc6_++])];
            if(_loc3_ == -1)
            {
               break;
            }
            _loc8_[int(_loc9_++)] = _loc2_ << 2 | (_loc3_ & 48) >> 4;
            if((_loc4_ = _loc8_[int(_loc6_++)]) == 61)
            {
               break;
            }
            if((_loc4_ = _decodeChars[int(_loc4_)]) == -1)
            {
               break;
            }
            _loc8_[int(_loc9_++)] = (_loc3_ & 15) << 4 | (_loc4_ & 60) >> 2;
            if((_loc5_ = _loc8_[int(_loc6_++)]) == 61)
            {
               break;
            }
            if((_loc5_ = _decodeChars[int(_loc5_)]) == -1)
            {
               break;
            }
            _loc8_[int(_loc9_++)] = (_loc4_ & 3) << 6 | _loc5_;
         }
         _loc8_.length = _loc9_;
         _loc8_.position = 0;
         return _loc8_;
      }
      
      public static function decodeToByteArrayB(param1:String) : ByteArray
      {
         return decodeToByteArray(param1);
      }
      
      private static function _initEncoreChar() : Vector.<int>
      {
         var _loc1_:Vector.<int> = new Vector.<int>(64,true);
         var _loc3_:int = 0;
         while(_loc3_ < 64)
         {
            _loc1_[_loc3_] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charCodeAt(_loc3_);
            _loc3_++;
         }
         return _loc1_;
      }
      
      private static function _initDecodeChar() : Vector.<int>
      {
         return new <int>[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
      }
   }
}
