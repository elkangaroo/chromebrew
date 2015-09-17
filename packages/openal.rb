require 'package'

class Openal < Package
  version '1.16.0'
  source_url 'http://kcat.strangesoft.net/openal-releases/openal-soft-1.16.0.tar.bz2'
  source_sha1 'f70892fc075ae726320478c0179f7011fea0d157'

  depends_on 'cmake'

  def self.build
    FileUtils.cd("build") do
      system "cmake .."
      system "make"
    end
  end
  
  def self.install
    FileUtils.cd("build") do
      system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
    end
  end
end
