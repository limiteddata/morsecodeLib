package morsecodeLib;

class Translator {
    private var _wordSeparator:String = "||";
    private var _letterSeparator:String = "|";

    private var alphabet:Array<String> = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z','1','2','3','4','5','6','7','8','9','0','!','@','&','(',')','-','_','=','+','.',',','/','?',';',':','\'','"'];
    private var morse:Array<String> = ['.-','-...','-.-.','-..','.','..-.','--.','....','..','.---','-.-','.-..','--','-.','---','.--.','--.-','.-.','...','-','..-','...-','.--','-..-','-.--','--..','.----','..---','...--','....-','-....','--...','---..','----.','-----','-.-.--','.--.-.', '.....', '.-...', '-.--.', '-.--.-', '-....-', '..--.-', '-...-', '.-.-.', '.-.-.-', '--..--', '-..-.', '..--..', '-.-.-.', '---...', '.----.', '.-..-.'];


    public function new(?wordSeparator:String = '||', ?letterSeparator:String = '|') {
        this._wordSeparator = wordSeparator;
        this._letterSeparator = letterSeparator;
    }

    function encodeWord(word:String):String {
        // to lower
        word = word.toLowerCase();
        var characters:Array<String> = word.split('');
        // check if the character exists in array and because alphabet.length == morse.lenght return the coresponding encoded character
        return characters.map(character->{
            var indexOfCharacter = alphabet.indexOf(character) ;
            indexOfCharacter == -1 ? return '?' : return morse[indexOfCharacter];
        }).join(this._letterSeparator);
    }

    public function encodeMessage(message:String):String {
        // get each word from the message, encode it and join the array with a separator
        var words = message.split(" ");
        return words.map(word->{
            return this.encodeWord(word);
        }).join(this._wordSeparator);
    }

    function decodeWord(word:String):String {
        // do the same as encoding the message but in reverse
        var characters:Array<String> = word.split(this._letterSeparator);
        return characters.map(character->{
            var indexOfCharacter = morse.indexOf(character);
            indexOfCharacter == -1 ? return '?' : return alphabet[indexOfCharacter];
        }).join('');
    }

    public function decodeMessage(message:String):String {
        var words = message.split(this._wordSeparator);
        return words.map(word->{
            return this.decodeWord(word);
        }).join(' ');
    }

}