require_relative 'sentence-generator'

class TwoWordSentenceGenerator < SentenceGenerator
  def generate(wordcount)
    sentence = []
    sentence.concat(random_word.split)
    (wordcount-1).times do
      sentence.concat(weighted_random(sentence.last(2).join(' ')).split)
    end
    sentence.join(' ')
  end
end
