require_relative("constants.rb")

# COMBINATION:
# Concatenate the total number of chapters in Quran,
# Followed by the total number of verses in Quran,
# Followed by chapter number, 
# Followed by the sum of verse-numbers for that chapter,
# For all chapters.

@output = ""

@output += TOTAL_NUM_CHAPTERS.to_s
@output += TOTAL_NUM_VERSES.to_s

COLLECTION.each do |tuple|
  chapter_number = tuple[0]
  count_of_verses_in_chapter = tuple[1]

  sum_of_chapter_verse_numbers = (1..count_of_verses_in_chapter).to_a.reduce(0) { |sum, verse_number| sum + verse_number }
  
  @output += chapter_number.to_s
  @output += sum_of_chapter_verse_numbers.to_s
end

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 114623412824104132010041557657260613695721321828509812810599511762612621613946141378154950168256176216186105194851209180216328223081237021242080253003262587827437128391629241530183031595324653327013414853510353634863716653383916392850403655411485421431434005441770457034663047741484354917150103551183052122553195354154055308156465657435582535930060916110562666366641716578667867465681378691378709907140672406732107415967582076496771275788207910818090381435821908366684325852538615387190883518946590210911209223193669436953696190971598369936100661016610236103610445105151061010728108610921110611115112101131511421
