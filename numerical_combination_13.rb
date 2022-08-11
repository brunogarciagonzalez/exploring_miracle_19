require_relative("constants.rb")

# COMBINATION:
# Concatenate the total number of verses in Quran,
# Followed by count of verses for each chapter,
# Followed by (again) the total number of verses in Quran.

@output = ""

@output += @TOTAL_NUM_VERSES.to_s

@COLLECTION.each do |tuple|
  count_of_verses_in_chapter = tuple[1]

  @output += count_of_verses_in_chapter.to_s
end

@output += @TOTAL_NUM_VERSES.to_s

puts @output

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 6234728620017612016520675127109123111435299128111110981351127811864772279388696034307354458318288758554538959373538291845604962557896292224131411111812123052524428282056403150404642291936252217192630201521118819588111183954736354566234
