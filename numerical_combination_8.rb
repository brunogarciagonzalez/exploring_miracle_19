require_relative("constants.rb")

# COMBINATION:
# Concatenate the total sum of verse-numbers in Quran,
# Followed by the total number of verses in Quran,
# Followed by the total number of chapters in Quran,
# Followed by chapter number, 
# Followed by count of verses for that chapter,
# For all chapters.

@output = ""

@output += @TOTAL_SUM_VERSES.to_s
@output += @TOTAL_NUM_VERSES.to_s
@output += @TOTAL_NUM_CHAPTERS.to_s

@COLLECTION.each do |tuple|
  chapter_number = tuple[0]
  count_of_verses_in_chapter = tuple[1]

  @output += chapter_number.to_s
  @output += count_of_verses_in_chapter.to_s
end

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 333410623411417228632004176512061657206875912710109111231211113431452159916128171111811019982013521112227823118246425772622727932888296930603134323033733454354536833718238883975408541544253438944594537463547384829491850455160524953625455557856965729582259246013611462116311641865126612673068526952704471287228732074567540763177507840794680428129821983368425852286178719882689309020911592219311948958961997598899810011101111028103310491055106410771083109611031115112411351146
