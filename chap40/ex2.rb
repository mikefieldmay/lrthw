class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end

  def favourite_lyric()
    fav = @lyrics.shuffle.pop
    puts fav
  end
end

  happy_bday = Song.new(["Happy Birthday to you",
    "I don't want to get sued",
    "So I'll stop right there"])

  bulls_on_parade = Song.new(["They rally around tha family",
      "With pocket fulls of emptyshells"])

  happy_bday.sing_me_a_song()

  bulls_on_parade.sing_me_a_song()

  mike_song = ["You smell like dog buns",
    "Out in the sun on a hot Summers day",
  "Oh baby, I wish that smell would go away"]

  dog_buns = Song.new(mike_song)
  dog_buns.sing_me_a_song()
  dog_buns.favourite_lyric
