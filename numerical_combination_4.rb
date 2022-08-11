require_relative("constants.rb")

# COMBINATION:
# Concatenate the total number of verses for a chapter,
# Followed the number of every verse for that chapter,
# Followed by the chapter number.
# Finally, concatenate the total number of verses in the Quran. 

@output = ""

COLLECTION.each do |tuple|
  chapter_number = tuple[0]
  count_of_verses_in_chapter = tuple[1]

  @output += count_of_verses_in_chapter.to_s

  (1..count_of_verses_in_chapter).to_a.each do |verse_number|
    @output += verse_number.to_s
  end

  @output += chapter_number.to_s
end

@output += TOTAL_NUM_VERSES.to_s

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 712345671286123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176177178179180181182183184185186187188189190191192193194195196197198199200201202203204205206207208209210211212213214215216217218219220221222223224225226227228229230231232233234235236237238239240241242243244245246247248249250251252253254255256257258259260261262263264265266267268269270271272273274275276277278279280281282283284285286220012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413513613713813914014114214314414514614714814915015115215315415515615715815916016116216316416516616716816917017117217317417517617717817918018118218318418518618718818919019119219319419519619719819920031761234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751764120123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120516512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413513613713813914014114214314414514614714814915015115215315415515615715815916016116216316416562061234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002012022032042052067751234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374758127123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127910912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810910123123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123111111234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111243123456789101112131415161718192021222324252627282930313233343536373839404142431352123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051521499123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899151281234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281611112345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011117110123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110189812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697981913512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413520112123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112217812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777822118123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118236412345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364247712345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576772522712345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413513613713813914014114214314414514614714814915015115215315415515615715815916016116216316416516616716816917017117217317417517617717817918018118218318418518618718818919019119219319419519619719819920020120220320420520620720820921021121221321421521621721821922022122222322422522622726931234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192932788123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687882869123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869296012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596030341234567891011121314151617181920212223242526272829303132333431301234567891011121314151617181920212223242526272829303273123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172733354123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354344512345678910111213141516171819202122232425262728293031323334353637383940414243444535831234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283361821234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811823788123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687883875123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475398512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485405412345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535441531234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253428912345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788894359123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585944371234567891011121314151617181920212223242526272829303132333435363745351234567891011121314151617181920212223242526272829303132333435463812345678910111213141516171819202122232425262728293031323334353637384729123456789101112131415161718192021222324252627282948181234567891011121314151617184945123456789101112131415161718192021222324252627282930313233343536373839404142434445506012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596051491234567891011121314151617181920212223242526272829303132333435363738394041424344454647484952621234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162535512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455547812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777855961234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495965629123456789101112131415161718192021222324252627282957221234567891011121314151617181920212258241234567891011121314151617181920212223245913123456789101112136014123456789101112131461111234567891011621112345678910116318123456789101112131415161718641212345678910111265121234567891011126630123456789101112131415161718192021222324252627282930675212345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152685212345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152694412345678910111213141516171819202122232425262728293031323334353637383940414243447028123456789101112131415161718192021222324252627287128123456789101112131415161718192021222324252627287220123456789101112131415161718192073561234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556744012345678910111213141516171819202122232425262728293031323334353637383940753112345678910111213141516171819202122232425262728293031765012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849507740123456789101112131415161718192021222324252627282930313233343536373839407846123456789101112131415161718192021222324252627282930313233343536373839404142434445467942123456789101112131415161718192021222324252627282930313233343536373839404142802912345678910111213141516171819202122232425262728298119123456789101112131415161718198236123456789101112131415161718192021222324252627282930313233343536832512345678910111213141516171819202122232425842212345678910111213141516171819202122851712345678910111213141516178619123456789101112131415161718198726123456789101112131415161718192021222324252688301234567891011121314151617181920212223242526272829308920123456789101112131415161718192090151234567891011121314159121123456789101112131415161718192021921112345678910119381234567894812345678951912345678910111213141516171819965123459781234567898812345678991112345678910111001112345678910111018123456781023123103912345678910451234510541234106712345671073123108612345610931231105123451114123411251234511361234561146234
