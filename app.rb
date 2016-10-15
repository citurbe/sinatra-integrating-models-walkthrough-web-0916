require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  text_from_user = params[:user_text]
  analyzer = TextAnalyzer.new(text_from_user)
  @word_count = analyzer.count_of_words
  @vowel_count = analyzer.count_of_vowels
  @consonant_count = analyzer.count_of_consonants
  @most_used_letter = analyzer.most_used_letter[0]
  @letter_count = analyzer.most_used_letter[1]
  erb :results
end


end
