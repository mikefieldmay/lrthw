require 'open-uri'

#sets parameter WORD_URL to the URL
WORD_URL = "http://learncodethehardway.org/words.txt"
# Creates an empty WORDS array
WORDS = []
#Creates a Hash for phrases where the keys are code snippets and the values are the description
PHRASES = {
  "class ### < ###\nend" =>
    "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" =>
    "class ### has-a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" =>
    "class ### has-a function called *** that takes @@@ parameters.",
  "*** = ###.new()" =>
    "set *** to an instance of class ###.",
  "***.***(@@@)" =>
    "From *** get the *** function, and call it with the parameters @@@",
  "***.*** = '***'" =>
    "From *** get the attribute *** and set it to '***'."

}
# if the 'english' argument is given when opening the file PHRASE_FIRST comes into play
PHRASE_FIRST = ARGV[0] == "english"

open(WORD_URL) {|f|
  f.each_line {|word| WORDS.push(word.chomp)}
}
#creates the craft names function that takes 4 parameters,
# rand_words is an array of random words, snippet is a key from the
# PHRASES hash, pattern is either ### or ***, caps is automaticlly set to false.
# names looks for the pattern in snippet and replaces it with a Capital word from words
#
def craft_names(rand_words, snippet, pattern, caps=false)
  names = snippet.scan(pattern).map do
    word = rand_words.pop()
    caps ? word.capitalize : word
  end
# unsure as to why 2 names are returned
  return names * 2
end

# takes a randow array of words and scans the key for the pattern.
# for names we essentially get names = (0...1). map do
def craft_params(rand_words, snippet, pattern)
  names = (0...snippet.scan(pattern).length).map do
    param_count = rand(3) + 1
    params = (0...param_count).map {|x| rand_words.pop() }
    params.join(',')
  end

  return names * 2
end

def convert(snippet, phrase)
  rand_words = WORDS.sort_by {rand}
  class_names = craft_names(rand_words, snippet, /###/, caps=true)
  other_names = craft_names(rand_words, snippet, /\*\*\*/)
  param_names = craft_params(rand_words, snippet, /@@@/)

  results = []

  [snippet, phrase].each do |sentence|
    #fake class names, also copies sentence
    result = sentence.gsub(/###/) {|x| class_names.pop }

    # fake other names
    result.gsub!(/\*\*\*/) {|x| other_names.pop }

    # fake parameter list
    result.gsub!(/@@@/) {|x| param_names.pop }

    results.push(result)
  end

  return results
end

  # keep going until they hit CTRL-D
  loop do
    snippets = PHRASES.keys().sort_by {rand}

    for snippet in snippets
      phrase = PHRASES[snippet]
      question, answer = convert(snippet, phrase)

      if PHRASE_FIRST
        question, answer = answer, question
      end

      print question, "\n\n> "

      exits(0) unless $stdin.gets

      puts "\nANSWER: %s\n\n" % answer
    end
  end
