require_relative("surah_ayatNum_collection.rb")

# from collection should produce  str "33410 6234 114 1 7 2 286... 114 6" for long division calculator

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
    @stringed_num += surah_int.to_s
    @stringed_num += aya_int.to_s
  end

end




puts @stringed_num

# @stringed_num turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 333410623411417228632004176512061657206875912710109111231211113431452159916128171111811019982013521112227823118246425772622727932888296930603134323033733454354536833718238883975408541544253438944594537463547384829491850455160524953625455557856965729582259246013611462116311641865126612673068526952704471287228732074567540763177507840794680428129821983368425852286178719882689309020911592219311948958961997598899810011101111028103310491055106410771083109611031115112411351146

# Thus, the math here checks out.
