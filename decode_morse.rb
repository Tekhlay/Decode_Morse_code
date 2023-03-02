def decode_char(character)
  char = [['.-', 'A'], ['-...', 'B'], ['-.-.', 'C'], ['-..', 'D'],
          ['.', 'E'], ['..-.', 'F'], ['--.', 'G'], ['....', 'H'], ['..', 'I'],
          ['.---', 'J'], ['-.-', 'K'], ['.-..', 'L'], ['--', 'M'], ['-.', 'N'],
          ['---', 'O'], ['.--.', 'P'], ['--.-', 'Q'], ['.-.', 'R'], ['...', 'S'],
          ['-', 'T'], ['..-', 'T'], ['...-', 'V'], ['.--', 'W'], ['-..-', 'X'], ['-.--', 'Y'], ['--..', 'Z']]
  char.each do |c|
    return c[1] if c[0] == character
  end
end

def decode_word(word)
  word = word.split
  word.each do |w|
    print decode_char(w)
  end
end

def decode_morse(morse_code)
  morse_code = morse_code.split('  ')
  morse_code.each do |m|
    decode_word(m)
    print ' '
  end
end
