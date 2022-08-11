require_relative("constants.rb")

# COMBINATION:
# Concatenate the sum of verse-numbers of each chapter.
# Followed by the total sum of verse-numbers in Quran.

@output = ""

COLLECTION.each do |tuple|
  count_of_verses_in_chapter = tuple[1]

  sum_of_chapter_verse_numbers = (1..count_of_verses_in_chapter).to_a.reduce(0) { |sum, verse_number| sum + verse_number }

  @output += sum_of_chapter_verse_numbers.to_s
end

@output += TOTAL_SUM_VERSES.to_s

puts @output

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 28410412010015576726013695213212850812859957626621694613784950825662166105485191806328308170212080300325878437139162415183059546527011485103534861665339162850365514851431400517707036307414351711035183012251953154030814656435253300911056666171787846513781378990406406210159682049612758201081903435190666325253153190351465210120231663636190153636666636645151028621615101521333410
