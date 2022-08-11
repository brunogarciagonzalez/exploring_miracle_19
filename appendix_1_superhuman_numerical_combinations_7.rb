require_relative("constants.rb")

# COMBINATION
# Same as #5, but reverse the order of chapters.

@output = ""

@COLLECTION.reverse_each do |tuple|
  chapter_number = tuple[0]
  count_of_verses_in_chapter = tuple[1]

  (1..count_of_verses_in_chapter).to_a.each do |verse_number|
    @output += verse_number.to_s
  end

  sum_of_chapter_verse_numbers = (1..count_of_verses_in_chapter).to_a.reduce(0) { |sum, verse_number| sum + verse_number }

  @output += sum_of_chapter_verse_numbers.to_s
end

# @output turns out to be the following number, which was confrmed to be divisible by 19 using:
# https://www.dcode.fr/modulo-n-calculator

# 12345621123451512341012345151236123456211236123456728123410123451512345678945123612345678361234567891011661234567891011661234567836123456783612345151234567891011121314151617181919012345678361234567836123456789101166123456789101112131415161718192021231123456789101112131415120123456789101112131415161718192021012345678910111213141516171819202122232425262728293046512345678910111213141516171819202122232425263511234567891011121314151617181919012345678910111213141516171531234567891011121314151617181920212225312345678910111213141516171819202122232425325123456789101112131415161718192021222324252627282930313233343536666123456789101112131415161718191901234567891011121314151617181920212223242526272829435123456789101112131415161718192021222324252627282930313233343536373839404142903123456789101112131415161718192021222324252627282930313233343536373839404142434445461081123456789101112131415161718192021222324252627282930313233343536373839408201234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950127512345678910111213141516171819202122232425262728293031496123456789101112131415161718192021222324252627282930313233343536373839408201234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556159612345678910111213141516171819202101234567891011121314151617181920212223242526272840612345678910111213141516171819202122232425262728406123456789101112131415161718192021222324252627282930313233343536373839404142434499012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152137812345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152137812345678910111213141516171819202122232425262728293046512345678910111278123456789101112781234567891011121314151617181711234567891011661234567891011661234567891011121314105123456789101112139112345678910111213141516171819202122232430012345678910111213141516171819202122253123456789101112131415161718192021222324252627282943512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959646561234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677783081123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354551540123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616219531234567891011121314151617181920212223242526272829303132333435363738394041424344454647484912251234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859601830123456789101112131415161718192021222324252627282930313233343536373839404142434445103512345678910111213141516171817112345678910111213141516171819202122232425262728294351234567891011121314151617181920212223242526272829303132333435363738741123456789101112131415161718192021222324252627282930313233343563012345678910111213141516171819202122232425262728293031323334353637703123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585917701234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889400512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152531431123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354148512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485365512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747528501234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878839161234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821665312345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182833486123456789101112131415161718192021222324252627282930313233343536373839404142434445103512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535414851234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727327011234567891011121314151617181920212223242526272829304651234567891011121314151617181920212223242526272829303132333459512345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596018301234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768692415123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687883916123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293437112345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413513613713813914014114214314414514614714814915015115215315415515615715815916016116216316416516616716816917017117217317417517617717817918018118218318418518618718818919019119219319419519619719819920020120220320420520620720820921021121221321421521621721821922022122222322422522622725878123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767730031234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636420801234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171187021123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778308112345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111263281234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341359180123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979848511234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091106105123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111621612345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712882561234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798994950123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051521378123456789101112131415161718192021222324252627282930313233343536373839404142439461234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101116216123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123762612345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810959951234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261278128123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475285012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413513613713813914014114214314414514614714814915015115215315415515615715815916016116216316416516616716816917017117217317417517617717817918018118218318418518618718818919019119219319419519619719819920020120220320420520621321123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165136951234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191207260123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176155761234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798991001011021031041051061071081091101111121131141151161171181191201211221231241251261271281291301311321331341351361371381391401411421431441451461471481491501511521531541551561571581591601611621631641651661671681691701711721731741751761771781791801811821831841851861871881891901911921931941951961971981992002010012345678910111213141516171819202122232425262728293031323334353637383940414243444546474849505152535455565758596061626364656667686970717273747576777879808182838485868788899091929394959697989910010110210310410510610710810911011111211311411511611711811912012112212312412512612712812913013113213313413513613713813914014114214314414514614714814915015115215315415515615715815916016116216316416516616716816917017117217317417517617717817918018118218318418518618718818919019119219319419519619719819920020120220320420520620720820921021121221321421521621721821922022122222322422522622722822923023123223323423523623723823924024124224324424524624724824925025125225325425525625725825926026126226326426526626726826927027127227327427527627727827928028128228328428528641041123456728

# Thus, the math here checks out.
