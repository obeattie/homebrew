require 'formula'

class Vips < Formula
  homepage 'http://www.vips.ecs.soton.ac.uk/'
  url 'http://www.vips.ecs.soton.ac.uk/supported/current/vips-7.30.1.tar.gz'
  sha1 'ce1a419173f7df1e200a043200e3908349599f3b'

  depends_on 'pkg-config' => :build
  depends_on :libpng
  depends_on :fontconfig
  depends_on 'gettext'
  depends_on 'glib'
  depends_on 'jpeg' => :optional
  depends_on 'libtiff' => :optional
  depends_on 'imagemagick' => :optional
  depends_on 'fftw' => :optional
  depends_on 'little-cms' => :optional
  depends_on 'pango' => :optional
  depends_on 'libexif' => :optional
  depends_on 'liboil' => :optional
  depends_on 'openexr' => :optional
  depends_on 'cfitsio' => :optional

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
