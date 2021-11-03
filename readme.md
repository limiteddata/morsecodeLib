# morsecodeLib

This is a compact library for Haxe to encode end decode messages in morse code.

Usage:
```
import morsecodeLib.Translator;;

var translator:Translator = new Translator();

var initialMessage:String = 'Translate this message';

var encodedMessage = translator.encodeMessage(initialMessage);
var decodedMessage = translator.decodeMessage(encodedMessage);

trace('Initial Message: '+initialMessage);
trace('Encoded Message: '+encodedMessage);
trace('Decoded Message: '+decodedMessage);
```
