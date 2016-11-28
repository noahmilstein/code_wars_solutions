# decode the morse code 1/3

# In this kata you have to write a simple Morse code decoder. While the Morse code is now mostly superceded by voice and digital data communication channels, it still has its use in some applications around the world.
# The Morse code encodes every character as a sequence of "dots" and "dashes". For example, the letter A is coded as ·−, letter Q is coded as −−·−, and digit 1 is coded as ·−−−. The Morse code is case-insensitive, traditionally capital letters are used. When the message is written in Morse code, a single space is used to separate the character codes and 3 spaces are used to separate words. For example, the message HEY JUDE in Morse code is ···· · −·−− ·−−− ··− −·· ·.

# NOTE: Extra spaces before or after the code have no meaning and should be ignored.

# In addition to letters, digits and some punctuation, there are some special service codes, the most notorious of those is the international distress signal SOS (that was first issued by Titanic), that is coded as ···−−−···. These special codes are treated as single special characters, and usually are transmitted as separate words.

# Your task is to implement a function decodeMorse(morseCode), that would take the morse code as input and return a decoded human-readable string.

# For example:
# decodeMorse('.... . -.--   .--- ..- -.. .')
#should return "HEY JUDE"
# The Morse code table is preloaded for you as MORSE_CODE dictionary, feel free to use it. In Java, the table can be accessed like this: MorseCode.get('.--'). In C#, the preloaded Dictionary can be accessed like this: MorseCode.Get('.--');.

# All the test strings would contain valid Morse code, so you may skip checking for errors and exceptions.
# In C#, tests will fail if the solution code throws an exception. Please keep that in mind. (This is mostly because else the engine would simply ignore the tests, resulting in a "valid" solution.)

# ignore spaces before or after code
# single space between character codes
# triple space between words

MORSE_CODE = {".-"=>"A", "-..."=>"B", "-.-."=>"C", "-.."=>"D", "."=>"E", "..-."=>"F", "--."=>"G", "...."=>"H", ".."=>"I", ".---"=>"J", "-.-"=>"K", ".-.."=>"L", "--"=>"M", "-."=>"N", "---"=>"O", ".--."=>"P", "--.-"=>"Q", ".-."=>"R", "..."=>"S", "-"=>"T", "..-"=>"U", "...-"=>"V", ".--"=>"W", "-..-"=>"X", "-.--"=>"Y", "--.."=>"Z", "-----"=>"0", ".----"=>"1", "..---"=>"2", "...--"=>"3", "....-"=>"4", "....."=>"5", "-...."=>"6", "--..."=>"7", "---.."=>"8", "----."=>"9", ".-.-.-"=>".", "--..--"=>",", "..--.."=>"?", ".----."=>"'", "-.-.--"=>"!", "-..-."=>"/", "-.--."=>"(", "-.--.-"=>")", ".-..."=>"&", "---..."=>"=>", "-.-.-."=>";", "-...-"=>"=", ".-.-."=>"+", "-....-"=>"-", "..--.-"=>"_", ".-..-."=>"\"", "...-..-"=>"$", ".--.-."=>"@", "...---..."=>"SOS"}

def decodeMorse(morseCode)
  str = ""
  words = morseCode.gsub('   ', ' SPACE ')
  chars = words.split(' ')
  chars.each do |morse|
    if morse == 'SPACE'
      str += " "
    else
      str += MORSE_CODE[morse]
    end
  end
  str.strip
end

decodeMorse('.... . -.--   .--- ..- -.. .')

# much better code
def decodeMorse(morseCode)
  morseCode.strip.split("   ").map { |w| w.split(" ").map { |c| MORSE_CODE[c] }.join }.join(" ")
end
