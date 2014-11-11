require 'formula'

class AvrLibc48 < Formula

	url 'http://download.savannah.gnu.org/releases/avr-libc/avr-libc-1.8.1.tar.bz2'
	homepage 'http://www.nongnu.org/avr-libc/'
	sha256 'c3062a481b6b2c6959dc708571c00b0e26301897ba21171ed92acd0af7c4a969'

	keg_only 'This formula was not linked to /usr/loca/bin to avoid conflicts with the default avr-libc used with avr-gcc 4.9. To use avr-gcc 4.8, unlink all the binaries related to avr-gcc 4.9 before linking this one.'

	keg_only '\nYou are about to install an older version of avr-gcc, i.e. version 4.8. \nThis formula will not be linked to /usr/loca/bin in order to avoid conflicts with the default/latest version of avr-gcc, i.e. version 4.9. \nUnless you know what you\'re doing, it is recommended to use avr-gcc 4.9. \nTo use avr-gcc 4.8, unlink all the binaries related to other versions of avr-gcc before linking this one.'

	depends_on 'avr-gcc48'

	def install
		ENV.delete 'CFLAGS'
		ENV.delete 'CXXFLAGS'
		ENV.delete 'LD'
		ENV.delete 'CC'
		ENV.delete 'CXX'

		avr_gcc = Formula['avr-gcc48']

		build = `./config.guess`.chomp

		system "./configure", "--build=#{build}", "--prefix=#{prefix}", "--host=avr"
		system "make install"

		avr = File.join prefix, 'avr'

		# copy include and lib files where avr-gcc searches for them
		# this wouldn't be necessary with a standard prefix
		ohai "copying #{avr} -> #{avr_gcc.prefix}"
		cp_r avr, avr_gcc.prefix

	end
end
