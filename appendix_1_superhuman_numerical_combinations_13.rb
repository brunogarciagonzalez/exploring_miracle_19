require_relative("surah_ayatNum_collection.rb")
# if we write down the numbers of verses in every sura next to each other, we end up with a 235-digit number that is a multiple of 19. To do this, write down the total number of numbered verses in the Quran (6234), followed by the number of verses in every sura, then close with the total number of numbered verses in the Quran.

# from collection should produce  str "6234 7 286 200 ... 6234"

@stringed_num = ""

@total_number_of_numbered_verses = 0

@surah_ayatNum_collection.each do |surah_hash|
  @sum_of_verse_numbers = 0
  surah_hash.each do |surah_int, aya_int|
    @total_number_of_numbered_verses += aya_int
  end
end

@stringed_num += @total_number_of_numbered_verses.to_s

@stringed_num += @total_sum_of_verse_numbers.to_s

@surah_ayatNum_collection.each do |surah_hash|

  surah_hash.each do |surah_int, aya_int|
    @stringed_num += aya_int.to_s
  end

end

@stringed_num += @total_number_of_numbered_verses.to_s
puts @stringed_num

# @stringed_num turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 6234728620017612016520675127109123111435299128111110981351127811864772279388696034307354458318288758554538959373538291845604962557896292224131411111812123052524428282056403150404642291936252217192630201521118819588111183954736354566234

# Thus, the math here checks out.
