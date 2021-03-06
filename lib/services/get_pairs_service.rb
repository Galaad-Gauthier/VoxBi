class GetPairsService
  include Timeoutable

  attr_reader :phonetic_text

  def initialize(phonetic_text)
    @phonetic_text = phonetic_text
  end

  def call
    phonetic_text.map do |phonetic_word|
      available_pairs_for(phonetic_word)
    end
  end

  private

  def available_pairs_for(phonetic_word)
    word = phonetic_word.dup

    [].tap do |pairs|
      while word.length != 0
        matching_pair = RuleStore.available_pairs.detect{ |pair| word.match(/^#{pair}/) }
        word.sub!(/^#{matching_pair}/,"")
        pairs << matching_pair.dup
      end
    end
  end
end
