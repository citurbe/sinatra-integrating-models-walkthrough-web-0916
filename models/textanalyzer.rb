#your text analyzer model code will go here.
class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    self.text = text
  end

  def count_of_words
    self.text.split(" ").count
  end

  def count_of_vowels
    self.text.downcase.scan(/[aeiou]/).count
  end

  def count_of_consonants
    self.text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    all_letters_in_string = @text.downcase.gsub(/[^a-z]/, '').split('') #gets rid of spaces and turns it into an array
    letters_to_compare = all_letters_in_string.uniq
    most_used_letter = ""
    letter_count = 0

    letters_to_compare.map do |letter|
      letter_repetitions = all_letters_in_string.count(letter)
      if letter_repetitions > letter_count
        letter_count = letter_repetitions
        most_used_letter = letter
      end
    end
    biggest = [most_used_letter, letter_count]
  end


end
