import haxe.io.Input;
import morsecodeLib.Translator;

class Main {

    static public function main():Void {
        var translator:Translator = new Translator();
        
        trace('Type your messsage:');
        var initialMessage:String = Sys.stdin().readLine();

        var encodedMessage = translator.encodeMessage(initialMessage);
        var decodedMessage = translator.decodeMessage(encodedMessage);

        trace('Initial Message: '+initialMessage);
        trace('Encoded Message: '+encodedMessage);
        trace('Decoded Message: '+decodedMessage);


    }
}