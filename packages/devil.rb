require 'package'

class Devil < Package
  version '1.7.8'
  source_url 'http://downloads.sourceforge.net/project/openil/DevIL/1.7.8/DevIL-1.7.8.tar.gz'
  source_sha1 'bc27e3e830ba666a3af03548789700d10561fcb1'

  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
