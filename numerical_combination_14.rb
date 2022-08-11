require_relative("constants.rb")

# COMBINATION:
# Concatenate the total number of verses in Quran,
# Followed by the total number of chapters in Quran,
# Followed by count of verses for each chapter,
# Followed by (again) the total number of verses in Quran,
# Followed by (again) the total number of chapters in Quran.

@output = ""

@output += TOTAL_NUM_VERSES.to_s
@output += TOTAL_NUM_CHAPTERS.to_s

COLLECTION.each do |tuple|
  count_of_verses_in_chapter = tuple[1]

  (1..count_of_verses_in_chapter).to_a.each do |verse_number|
    @output += verse_number.to_s
  end
end

@output += TOTAL_NUM_VERSES.to_s
@output += TOTAL_NUM_CHAPTERS.to_s

puts @output

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 62341141234567123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176177178179180181182183184185186187188189190191192193194195196197198199200201202203204205206207208209210211212213214215216217218219220221222223224225226227228229230231232233234235236237238239240241242243244245246247248249250251252253254255256257258259260261262263264265266267268269270271272273274275276277278279280281282283284285286123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176177178179180181182183184185186187188189190191192193194195196197198199200123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176177178179180181182183184185186187188189190191192193194195196197198199200201202203204205206123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111123456789101112131415161718192021222324252627282930313233343536373839404142431234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515212345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011112345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697981234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677781234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636412345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576771234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002012022032042052062072082092102112122132142152162172182192202212222232242252262271234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192931234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596012345678910111213141516171819202122232425262728293031323334123456789101112131415161718192021222324252627282930123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172731234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253541234567891011121314151617181920212223242526272829303132333435363738394041424344451234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176177178179180181182123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687881234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374751234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535412345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152531234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585912345678910111213141516171819202122232425262728293031323334353637123456789101112131415161718192021222324252627282930313233343512345678910111213141516171819202122232425262728293031323334353637381234567891011121314151617181920212223242526272829123456789101112131415161718123456789101112131415161718192021222324252627282930313233343536373839404142434445123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960123456789101112131415161718192021222324252627282930313233343536373839404142434445464748491234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354551234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677781234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495961234567891011121314151617181920212223242526272829123456789101112131415161718192021221234567891011121314151617181920212223241234567891011121312345678910111213141234567891011123456789101112345678910111213141516171812345678910111212345678910111212345678910111213141516171819202122232425262728293012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051521234567891011121314151617181920212223242526272829303132333435363738394041424344123456789101112131415161718192021222324252627281234567891011121314151617181920212223242526272812345678910111213141516171819201234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556123456789101112131415161718192021222324252627282930313233343536373839401234567891011121314151617181920212223242526272829303112345678910111213141516171819202122232425262728293031323334353637383940414243444546474849501234567891011121314151617181920212223242526272829303132333435363738394012345678910111213141516171819202122232425262728293031323334353637383940414243444546123456789101112131415161718192021222324252627282930313233343536373839404142123456789101112131415161718192021222324252627282912345678910111213141516171819123456789101112131415161718192021222324252627282930313233343536123456789101112131415161718192021222324251234567891011121314151617181920212212345678910111213141516171234567891011121314151617181912345678910111213141516171819202122232425261234567891011121314151617181920212223242526272829301234567891011121314151617181920123456789101112131415123456789101112131415161718192021123456789101112345678123456781234567891011121314151617181912345123456781234567812345678910111234567891011123456781231234567891234512341234567123123456123123451234123451234566234114
