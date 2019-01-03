require_relative("surah_ayatNum_collection.rb")
# write down the number of surahs in Quran (114), followed by the total number of numbered verses (6234), followed by the number of every surah and its sum of verse numbers
# from collection should produce  str "114 6234 1 28 2 41041... 114 21" for long division calculator

@stringed_num = ""
@total_number_of_numbered_verses = 0

@surah_ayatNum_collection.each do |surah_hash|
  @sum_of_verse_numbers = 0
  surah_hash.each do |surah_int, aya_int|
    @total_number_of_numbered_verses += aya_int
  end
end

@stringed_num += 114.to_s
@stringed_num += @total_number_of_numbered_verses.to_s

@surah_ayatNum_collection.each do |surah_hash|
  @sum_of_verse_numbers = 0
  surah_hash.each do |surah_int, aya_int|

    @stringed_num += surah_int.to_s

    (1..aya_int).to_a.each do |verse_number|
      @sum_of_verse_numbers += verse_number
    end

    @stringed_num += @sum_of_verse_numbers.to_s

  end
end
puts @stringed_num

# @stringed_num turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 114623412824104132010041557657260613695721321828509812810599511762612621613946141378154950168256176216186105194851209180216328223081237021242080253003262587827437128391629241530183031595324653327013414853510353634863716653383916392850403655411485421431434005441770457034663047741484354917150103551183052122553195354154055308156465657435582535930060916110562666366641716578667867465681378691378709907140672406732107415967582076496771275788207910818090381435821908366684325852538615387190883518946590210911209223193669436953696190971598369936100661016610236103610445105151061010728108610921110611115112101131511421

# Thus, the math here checks out.
