def decode_char(morse_code)
    morse_code_ref = {
      '-----' => '0',
      '.----' => '1',
      '..---' => '2',
      '...--' => '3',
      '....-' => '4',
      '.....' => '5',
      '-....' => '6',
      '--...' => '7',
      '---..' => '8',
      '----.' => '9',
      '.-' => 'A',
      '-...' => 'B',
      '-.-.' => 'C',
      '-..' => 'D',
      '.' => 'E',
      '..-.' => 'F',
      '--.' => 'G',
      '....' => 'H',
      '..' => 'I',
      '.---' => 'J',
      '-.-' => 'K',
      '.-..' => 'L',
      '--' => 'M',
      '-.' => 'N',
      '---' => 'O',
      '.--.' => 'P',
      '--.-' => 'Q',
      '.-.' => 'R',
      '...' => 'S',
      '-' => 'T',
      '..-' => 'U',
      '...-' => 'V',
      '.--' => 'W',
      '-..-' => 'X',
      '-.--' => 'Y',
      '--..' => 'Z'
    }
    morse_code_ref[morse_code]
  end
  
def decode_word(morse_word)
  morse_word.split(' ').map { |morse_char| decode_char(morse_char) }.join('')
end

def decode(morse_message)
  morse_words = morse_message.split('   ')
  decoded = morse_words.map { |morse_word| decode_word(morse_word) }.join(' ')
end

morse_message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
puts decode(morse_message)