require_relative("surah_ayatNum_collection.rb")

# from collection should produce  str "123456 21... 1234567 28" for long division calculator

@verse_count = 0
@verse_sum = 0

@surah_ayatNum_collection.each do |surah_hash|

  surah_hash.each do |surah_int, aya_int|
    @verse_count += aya_int
    (1..aya_int).to_a.each do |num|
      @verse_sum += num
    end
  end

end

@stringed_num = ""

@stringed_num += @verse_sum.to_s
@stringed_num += @verse_count.to_s
@stringed_num += 114.to_s

@surah_ayatNum_collection.each do |surah_hash|

  surah_hash.each do |surah_int, aya_int|
    @stringed_num += aya_int.to_s
    @stringed_num += surah_int.to_s
  end

end




puts @stringed_num

# @stringed_num turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 333410623411471286220031764120516562067758127910910123111111243135214991512816111171101898191352011221782211823642477252272693278828692960303431303273335434453583361823788387539854054415342894359443745354638472948184945506051495262535554785596562957225824591360146111621163186412651266306752685269447028712872207356744075317650774078467942802981198236832584228517861987268830892090159121921193894895199659789889911100111018102310391045105410671073108610931105111411251136114

# Thus, the math here checks out.
