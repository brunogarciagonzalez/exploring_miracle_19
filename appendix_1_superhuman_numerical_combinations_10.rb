require_relative("surah_ayatNum_collection.rb")
# the sum of the verse numbers for every surah in the Quran, written next to each other, followed at the end by the grand sum of verse numbers (333410)
# from collection should produce  str "28 41041 20100... 15 21 333410" for long division calculator

@stringed_num = ""

@surah_ayatNum_collection.each do |surah_hash|
  @sum_of_verse_numbers = 0
  surah_hash.each do |surah_int, aya_int|
    (1..aya_int).to_a.each do |verse_number|
      @sum_of_verse_numbers += verse_number
    end
  end
  @stringed_num += @sum_of_verse_numbers.to_s
end

# @verse_count = 0
@verse_sum = 0

@surah_ayatNum_collection.each do |surah_hash|

  surah_hash.each do |surah_int, aya_int|
    # @verse_count += aya_int
    (1..aya_int).to_a.each do |num|
      @verse_sum += num
    end
  end

end


@stringed_num += @verse_sum.to_s

puts @stringed_num

# @stringed_num turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 28410412010015576726013695213212850812859957626621694613784950825662166105485191806328308170212080300325878437139162415183059546527011485103534861665339162850365514851431400517707036307414351711035183012251953154030814656435253300911056666171787846513781378990406406210159682049612758201081903435190666325253153190351465210120231663636190153636666636645151028621615101521333410

# Thus, the math here checks out.
