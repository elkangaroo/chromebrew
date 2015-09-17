require 'package'

class Libmodplug < Package
  version '0.8.8.5'
  source_url 'http://downloads.sourceforge.net/project/modplug-xmms/libmodplug/0.8.8.5/libmodplug-0.8.8.5.tar.gz'
  source_sha1 '771ee75bb8bfcfe95eae434ed1f3b2c5b63b2cb3'

  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
