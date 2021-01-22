class HangpersonGame

  # add the necessary class methods, attributes, etc. here
  # to make the tests in spec/hangperson_game_spec.rb pass.

  # Get a word from remote "random word" service

  # def initialize()
  # end
  
  def initialize(word)
    @word = word
  end

  # You can test it by running $ bundle exec irb -I. -r app.rb
  # And then in the irb: irb(main):001:0> HangpersonGame.get_random_word
  #  => "cooking"   <-- some random word
  def self.get_random_word
    require 'json'
    require 'uri'
    require 'net/http'
    uri = URI('https://random-word-api.herokuapp.com/word')
    Net::HTTP.new('random-word-api.herokuapp.com').start { |http|
        word = http.get(uri).body
        return word.gsub(/[\[\]\"]/, '')
    }
  end

end
