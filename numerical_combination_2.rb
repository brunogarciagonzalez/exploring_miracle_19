require_relative("constants.rb")

# COMBINATION:
# Concatenate the number of each verse of a chapter,
# Followed by the total number of verses in that chapter.
# Finally, concatenate the total number of verses in the Quran. 

@output = ""

COLLECTION.each do |tuple|
  count_of_verses_in_chapter = tuple[1]

  (1..count_of_verses_in_chapter).to_a.each do |num|
    @output += num.to_s
  end

  @output += count_of_verses_in_chapter.to_s
end

@output += TOTAL_NUM_VERSES.to_s

puts @output

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 123456771234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002012022032042052062072082092102112122132142152162172182192202212222232242252262272282292302312322332342352362372382392402412422432442452462472482492502512522532542552562572582592602612622632642652662672682692702712722732742752762772782792802812822832842852862861234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002001234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761761234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201201234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651651234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002012022032042052062061234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712712345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810910912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312312345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111112345678910111213141516171819202122232425262728293031323334353637383940414243431234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515252123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899991234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281281234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111111234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101101234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798981234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351351234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121121234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364641234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677771234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002012022032042052062072082092102112122132142152162172182192202212222232242252262272271234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939312345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788881234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768696912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596060123456789101112131415161718192021222324252627282930313233343412345678910111213141516171819202122232425262728293030123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737312345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535454123456789101112131415161718192021222324252627282930313233343536373839404142434445451234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283831234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821821234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878888123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475751234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848585123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354541234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253531234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889891234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859591234567891011121314151617181920212223242526272829303132333435363737123456789101112131415161718192021222324252627282930313233343535123456789101112131415161718192021222324252627282930313233343536373838123456789101112131415161718192021222324252627282929123456789101112131415161718181234567891011121314151617181920212223242526272829303132333435363738394041424344454512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596060123456789101112131415161718192021222324252627282930313233343536373839404142434445464748494912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626212345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455551234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959696123456789101112131415161718192021222324252627282929123456789101112131415161718192021222212345678910111213141516171819202122232424123456789101112131312345678910111213141412345678910111112345678910111112345678910111213141516171818123456789101112121234567891011121212345678910111213141516171819202122232425262728293030123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525212345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152521234567891011121314151617181920212223242526272829303132333435363738394041424344441234567891011121314151617181920212223242526272828123456789101112131415161718192021222324252627282812345678910111213141516171819202012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565612345678910111213141516171819202122232425262728293031323334353637383940401234567891011121314151617181920212223242526272829303131123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495050123456789101112131415161718192021222324252627282930313233343536373839404012345678910111213141516171819202122232425262728293031323334353637383940414243444546461234567891011121314151617181920212223242526272829303132333435363738394041424212345678910111213141516171819202122232425262728292912345678910111213141516171819191234567891011121314151617181920212223242526272829303132333435363612345678910111213141516171819202122232425251234567891011121314151617181920212222123456789101112131415161717123456789101112131415161718191912345678910111213141516171819202122232425262612345678910111213141516171819202122232425262728293030123456789101112131415161718192020123456789101112131415151234567891011121314151617181920212112345678910111112345678812345678812345678910111213141516171819191234551234567881234567881234567891011111234567891011111234567881233123456789912345512344123456771233123456612331234551234412345512345666234
