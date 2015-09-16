require 'package'

class Sdl2 < Package
  version '2.0.3'
  source_url 'https://www.libsdl.org/release/SDL2-2.0.3.tar.gz'
  source_sha1 '21c45586a4e94d7622e371340edec5da40d06ecc'

  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
