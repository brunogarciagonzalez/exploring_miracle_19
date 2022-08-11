require_relative("constants.rb")

# COMBINATION:
# Concatenate the total sum of verse-numbers in Quran,
# Followed by the total number of verses in Quran,
# Followed by the total number of chapters in Quran,
# Followed by count of verses for chapter,
# Followed by that chapter number, 
# For all chapters.

@output = ""

@output += @TOTAL_SUM_VERSES.to_s
@output += @TOTAL_NUM_VERSES.to_s
@output += @TOTAL_NUM_CHAPTERS.to_s

@COLLECTION.each do |tuple|
  chapter_number = tuple[0]
  count_of_verses_in_chapter = tuple[1]

  @output += count_of_verses_in_chapter.to_s
  @output += chapter_number.to_s
end

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 333410623411471286220031764120516562067758127910910123111111243135214991512816111171101898191352011221782211823642477252272693278828692960303431303273335434453583361823788387539854054415342894359443745354638472948184945506051495262535554785596562957225824591360146111621163186412651266306752685269447028712872207356744075317650774078467942802981198236832584228517861987268830892090159121921193894895199659789889911100111018102310391045105410671073108610931105111411251136114
