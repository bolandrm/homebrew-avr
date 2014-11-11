require 'formula'

class AvrBinutils48 < Formula

	homepage 'http://www.gnu.org/software/binutils/binutils.html'
	url 'http://ftpmirror.gnu.org/binutils/binutils-2.24.tar.gz'
	mirror 'http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.gz'
	sha1 '1b2bc33003f4997d38fadaa276c1f0321329ec56'

	keg_only 'This formula was not linked to /usr/loca/bin to avoid conflicts with the default avr-binutils used with avr-gcc 4.9. To use avr-gcc 4.8, unlink all the binaries related to avr-gcc 4.9 before linking this one.'

	# Support for -C in avr-size. See issue
	# https://github.com/larsimmisch/homebrew-avr/issues/9
	patch :p0 do
		url 'https://gist.github.com/larsimmisch/4190960/raw/b36f3d6d086980006f097ae0acc80b3ada7bb7b1/avr-binutils-size.patch'
		sha1 'b6d1ff7084b1f0a3fd2dee5383019ffb202e6c9a'
	end

	def install
		args = [
			"--disable-debug",
			"--disable-dependency-tracking",
			"--target=avr",
			"--prefix=#{prefix}",
			"--infodir=#{info}",
			"--mandir=#{man}",
			"--disable-werror",
			"--disable-nls"
		]

		mkdir 'build' do
			system "../configure", *args

			system "make"
			system "make install"
		end

		info.rmtree # info files conflict with native binutils
	end
end
